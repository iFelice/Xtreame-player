package com.google.android.gms.internal.pal;

import java.io.Serializable;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.ArrayList;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2735i2 implements O4 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Serializable f23851G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f23852H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Serializable f23853I;

    public C2735i2() {
        this.f23851G = new ArrayList();
        this.f23852H = new ArrayList();
        this.f23853I = new ArrayList();
    }

    @Override // com.google.android.gms.internal.pal.O4
    public final byte[] a(int i8, byte[] bArr) throws GeneralSecurityException {
        byte[] bArrH0;
        if (i8 > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        if (!AbstractC2864y4.y(1)) {
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        Cipher cipher = (Cipher) J6.f23569e.a("AES/ECB/NoPadding");
        cipher.init(1, (SecretKey) this.f23851G);
        int length = bArr.length;
        int iMax = Math.max(1, (int) Math.ceil(((double) length) / 16.0d));
        if (iMax * 16 == length) {
            bArrH0 = AbstractC2864y4.m0((iMax - 1) * 16, 0, 16, bArr, (byte[]) this.f23852H);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (iMax - 1) * 16, length);
            int length2 = bArrCopyOfRange.length;
            if (length2 >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[length2] = -128;
            bArrH0 = AbstractC2864y4.h0(bArrCopyOf, (byte[]) this.f23853I);
        }
        byte[] bArrDoFinal = new byte[16];
        for (int i9 = 0; i9 < iMax - 1; i9++) {
            bArrDoFinal = cipher.doFinal(AbstractC2864y4.m0(0, i9 * 16, 16, bArrDoFinal, bArr));
        }
        return Arrays.copyOf(cipher.doFinal(AbstractC2864y4.h0(bArrH0, bArrDoFinal)), i8);
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [byte[], java.io.Serializable] */
    public C2735i2(byte[] bArr) throws GeneralSecurityException {
        P6.a(bArr.length);
        this.f23851G = new SecretKeySpec(bArr, "AES");
        if (AbstractC2864y4.y(1)) {
            Cipher cipher = (Cipher) J6.f23569e.a("AES/ECB/NoPadding");
            cipher.init(1, (SecretKey) this.f23851G);
            byte[] bArrP = AbstractC2864y4.P(cipher.doFinal(new byte[16]));
            this.f23852H = bArrP;
            this.f23853I = AbstractC2864y4.P(bArrP);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }
}
