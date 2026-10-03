package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class KG implements InterfaceC1507jF {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final K3.X f14319J = new K3.X(10);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final SecretKeySpec f14320G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final byte[] f14321H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f14322I;

    public KG(byte[] bArr) throws GeneralSecurityException {
        Cw.V(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f14320G = secretKeySpec;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        Cipher cipher = (Cipher) f14319J.get();
        cipher.init(1, secretKeySpec);
        byte[] bArrJ0 = Cw.j0(cipher.doFinal(new byte[16]));
        this.f14321H = bArrJ0;
        this.f14322I = Cw.j0(bArrJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1507jF
    public final byte[] a(int i8, byte[] bArr) throws GeneralSecurityException {
        byte[] bArrI1;
        if (i8 > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        SecretKeySpec secretKeySpec = this.f14320G;
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        Cipher cipher = (Cipher) f14319J.get();
        cipher.init(1, secretKeySpec);
        int length = bArr.length;
        int i9 = length != 0 ? 1 + ((length - 1) >> 4) : 1;
        int i10 = i9 - 1;
        int i11 = i10 * 16;
        if (i9 * 16 == length) {
            bArrI1 = Cw.i1(i11, bArr, this.f14321H);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i11, length);
            int length2 = bArrCopyOfRange.length;
            if (length2 >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[length2] = -128;
            if (bArrCopyOf.length != 16) {
                throw new IllegalArgumentException("The lengths of x and y should match.");
            }
            bArrI1 = Cw.i1(0, bArrCopyOf, this.f14322I);
        }
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = new byte[16];
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = i12 * 16;
            for (int i14 = 0; i14 < 16; i14++) {
                bArr3[i14] = (byte) (bArr2[i14] ^ bArr[i14 + i13]);
            }
            if (cipher.doFinal(bArr3, 0, 16, bArr2) != 16) {
                throw new IllegalStateException("Cipher didn't write full block");
            }
        }
        for (int i15 = 0; i15 < 16; i15++) {
            bArr3[i15] = (byte) (bArr2[i15] ^ bArrI1[i15]);
        }
        if (cipher.doFinal(bArr3, 0, 16, bArr2) == 16) {
            return i8 == 16 ? bArr2 : Arrays.copyOf(bArr2, i8);
        }
        throw new IllegalStateException("Cipher didn't write full block");
    }
}
