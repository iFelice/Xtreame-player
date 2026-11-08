package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class C6 implements InterfaceC2768m3 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final K3.X f23482e = new K3.X(15);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final K3.X f23483f = new K3.X(16);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f23484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f23485b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SecretKeySpec f23486c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f23487d;

    public C6(byte[] bArr, int i8) throws GeneralSecurityException {
        if (!AbstractC2864y4.y(1)) {
            throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
        }
        if (i8 != 12 && i8 != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.f23487d = i8;
        P6.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f23486c = secretKeySpec;
        Cipher cipher = (Cipher) f23482e.get();
        cipher.init(1, secretKeySpec);
        byte[] bArrA = a(cipher.doFinal(new byte[16]));
        this.f23484a = bArrA;
        this.f23485b = a(bArrA);
    }

    public static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i8 = 0;
        while (i8 < 15) {
            byte b8 = bArr[i8];
            int i9 = i8 + 1;
            bArr2[i8] = (byte) (((b8 + b8) ^ ((bArr[i9] & 255) >>> 7)) & 255);
            i8 = i9;
        }
        byte b9 = bArr[15];
        bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b9 + b9));
        return bArr2;
    }

    public static byte[] c(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i8 = 0; i8 < length; i8++) {
            bArr3[i8] = (byte) (bArr[i8] ^ bArr2[i8]);
        }
        return bArr3;
    }

    public final byte[] b(Cipher cipher, int i8, byte[] bArr, int i9, int i10) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrCopyOf;
        int length;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i8;
        byte[] bArr3 = this.f23484a;
        if (i10 == 0) {
            return cipher.doFinal(c(bArr2, bArr3));
        }
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        int i11 = 0;
        int i12 = 0;
        while (i10 - i12 > 16) {
            for (int i13 = 0; i13 < 16; i13++) {
                bArrDoFinal[i13] = (byte) (bArrDoFinal[i13] ^ bArr[(i9 + i12) + i13]);
            }
            bArrDoFinal = cipher.doFinal(bArrDoFinal);
            i12 += 16;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i12 + i9, i9 + i10);
        if (bArrCopyOfRange.length == 16) {
            bArrCopyOf = c(bArrCopyOfRange, bArr3);
        } else {
            bArrCopyOf = Arrays.copyOf(this.f23485b, 16);
            while (true) {
                length = bArrCopyOfRange.length;
                if (i11 >= length) {
                    break;
                }
                bArrCopyOf[i11] = (byte) (bArrCopyOf[i11] ^ bArrCopyOfRange[i11]);
                i11++;
            }
            bArrCopyOf[length] = (byte) (bArrCopyOf[length] ^ 128);
        }
        return cipher.doFinal(c(bArrDoFinal, bArrCopyOf));
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2768m3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int i8 = this.f23487d;
        if (length > 2147483631 - i8) {
            throw new GeneralSecurityException("plaintext too long");
        }
        int i9 = i8 + length;
        byte[] bArr3 = new byte[i9 + 16];
        byte[] bArrA = O6.a(i8);
        System.arraycopy(bArrA, 0, bArr3, 0, i8);
        Cipher cipher = (Cipher) f23482e.get();
        SecretKeySpec secretKeySpec = this.f23486c;
        cipher.init(1, secretKeySpec);
        byte[] bArrB = b(cipher, 0, bArrA, 0, bArrA.length);
        byte[] bArrB2 = b(cipher, 1, bArr2, 0, 0);
        Cipher cipher2 = (Cipher) f23483f.get();
        cipher2.init(1, secretKeySpec, new IvParameterSpec(bArrB));
        cipher2.doFinal(bArr, 0, length, bArr3, this.f23487d);
        byte[] bArrB3 = b(cipher, 2, bArr3, this.f23487d, length);
        for (int i10 = 0; i10 < 16; i10++) {
            bArr3[i9 + i10] = (byte) ((bArrB2[i10] ^ bArrB[i10]) ^ bArrB3[i10]);
        }
        return bArr3;
    }
}
