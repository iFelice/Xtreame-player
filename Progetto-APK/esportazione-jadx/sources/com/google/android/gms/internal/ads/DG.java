package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class DG implements InterfaceC2127vC {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final K3.X f12793f = new K3.X(8);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final K3.X f12794g = new K3.X(9);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f12795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f12796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f12797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SecretKeySpec f12798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12799e;

    public DG(int i8, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
        }
        if (i8 != 12 && i8 != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.f12799e = i8;
        Cw.V(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f12798d = secretKeySpec;
        Cipher cipher = (Cipher) f12793f.get();
        cipher.init(1, secretKeySpec);
        byte[] bArrB = b(cipher.doFinal(new byte[16]));
        this.f12795a = bArrB;
        this.f12796b = b(bArrB);
        this.f12797c = bArr2;
    }

    public static void a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        for (int i8 = 0; i8 < length; i8++) {
            bArr[i8] = (byte) (bArr[i8] ^ bArr2[i8]);
        }
    }

    public static byte[] b(byte[] bArr) {
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

    public final byte[] c(Cipher cipher, int i8, byte[] bArr, int i9, int i10) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        int length;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i8;
        byte[] bArr3 = this.f12795a;
        if (i10 == 0) {
            a(bArr2, bArr3);
            return cipher.doFinal(bArr2);
        }
        byte[] bArr4 = new byte[16];
        cipher.doFinal(bArr2, 0, 16, bArr4);
        int i11 = 0;
        while (true) {
            byte[] bArr5 = bArr4;
            bArr4 = bArr2;
            bArr2 = bArr5;
            if (i10 - i11 <= 16) {
                break;
            }
            for (int i12 = 0; i12 < 16; i12++) {
                bArr2[i12] = (byte) (bArr[(i9 + i11) + i12] ^ bArr2[i12]);
            }
            cipher.doFinal(bArr2, 0, 16, bArr4);
            i11 += 16;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i11 + i9, i9 + i10);
        if (bArrCopyOfRange.length == 16) {
            a(bArrCopyOfRange, bArr3);
        } else {
            byte[] bArrCopyOf = Arrays.copyOf(this.f12796b, 16);
            int i13 = 0;
            while (true) {
                length = bArrCopyOfRange.length;
                if (i13 >= length) {
                    break;
                }
                bArrCopyOf[i13] = (byte) (bArrCopyOf[i13] ^ bArrCopyOfRange[i13]);
                i13++;
            }
            bArrCopyOf[length] = (byte) (bArrCopyOf[length] ^ 128);
            bArrCopyOfRange = bArrCopyOf;
        }
        a(bArr2, bArrCopyOfRange);
        cipher.doFinal(bArr2, 0, 16, bArr4);
        return bArr4;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2127vC
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        byte[] bArr3 = this.f12797c;
        int length2 = length - bArr3.length;
        int i8 = this.f12799e;
        int i9 = (length2 - i8) - 16;
        if (i9 < 0) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!NE.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        Cipher cipher = (Cipher) f12793f.get();
        SecretKeySpec secretKeySpec = this.f12798d;
        cipher.init(1, secretKeySpec);
        byte[] bArrC = c(cipher, 0, bArr, bArr3.length, this.f12799e);
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte b8 = 0;
        byte[] bArrC2 = c(cipher, 1, bArr4, 0, bArr4.length);
        byte[] bArrC3 = c(cipher, 2, bArr, bArr3.length + i8, i9);
        int i10 = length - 16;
        int i11 = 0;
        while (i11 < 16) {
            byte b9 = (byte) (b8 | (((bArr[i10 + i11] ^ bArrC2[i11]) ^ bArrC[i11]) ^ bArrC3[i11]));
            i11++;
            b8 = b9;
        }
        if (b8 != 0) {
            throw new AEADBadTagException("tag mismatch");
        }
        Cipher cipher2 = (Cipher) f12794g.get();
        cipher2.init(1, secretKeySpec, new IvParameterSpec(bArrC));
        return cipher2.doFinal(bArr, bArr3.length + i8, i9);
    }
}
