package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class E6 implements InterfaceC2776n3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f23502c = Arrays.asList(64);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f23503d = new byte[16];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2735i2 f23504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f23505b;

    public E6(byte[] bArr) throws GeneralSecurityException {
        if (!AbstractC2864y4.y(1)) {
            throw new GeneralSecurityException("Can not use AES-SIV in FIPS-mode.");
        }
        int length = bArr.length;
        if (!f23502c.contains(Integer.valueOf(length))) {
            throw new InvalidKeyException(A0.O.y("invalid key size: ", length, " bytes; key must have 64 bytes"));
        }
        int i8 = length >> 1;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, i8);
        this.f23505b = Arrays.copyOfRange(bArr, i8, length);
        this.f23504a = new C2735i2(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2776n3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrH0;
        if (bArr.length > 2147483631) {
            throw new GeneralSecurityException("plaintext too long");
        }
        Cipher cipher = (Cipher) J6.f23569e.a("AES/CTR/NoPadding");
        byte[][] bArr3 = {bArr2, bArr};
        C2735i2 c2735i2 = this.f23504a;
        byte[] bArrA = c2735i2.a(16, f23503d);
        for (int i8 = 0; i8 <= 0; i8++) {
            byte[] bArr4 = bArr3[i8];
            if (bArr4 == null) {
                bArr4 = new byte[0];
            }
            bArrA = AbstractC2864y4.h0(AbstractC2864y4.P(bArrA), c2735i2.a(16, bArr4));
        }
        byte[] bArr5 = bArr3[1];
        int length = bArr5.length;
        if (length >= 16) {
            int length2 = bArrA.length;
            if (length < length2) {
                throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
            }
            int i9 = length - length2;
            bArrH0 = Arrays.copyOf(bArr5, length);
            for (int i10 = 0; i10 < bArrA.length; i10++) {
                int i11 = i9 + i10;
                bArrH0[i11] = (byte) (bArrH0[i11] ^ bArrA[i10]);
            }
        } else {
            int length3 = bArr5.length;
            if (length3 >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr5, 16);
            bArrCopyOf[length3] = -128;
            bArrH0 = AbstractC2864y4.h0(bArrCopyOf, AbstractC2864y4.P(bArrA));
        }
        byte[] bArrA2 = c2735i2.a(16, bArrH0);
        byte[] bArr6 = (byte[]) bArrA2.clone();
        bArr6[8] = (byte) (bArr6[8] & 127);
        bArr6[12] = (byte) (bArr6[12] & 127);
        cipher.init(1, new SecretKeySpec(this.f23505b, "AES"), new IvParameterSpec(bArr6));
        return AbstractC2864y4.Y(bArrA2, cipher.doFinal(bArr));
    }
}
