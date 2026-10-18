package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class TD implements InterfaceC2127vC {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f16610c = Cw.i0("7a806c");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f16611d = Cw.i0("46bb91c3c5");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f16612e = Cw.i0("36864200e0eaf5284d884a0e77d31646");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f16613f = Cw.i0("bae8e37fc83441b16034566b");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f16614g = Cw.i0("af60eb711bd85bc1e4d3e0a462e074eea428a8");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final K3.X f16615h = new K3.X(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f16616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f16617b;

    public TD(byte[] bArr, byte[] bArr2) throws InvalidAlgorithmParameterException {
        this.f16617b = bArr2;
        Cw.V(bArr.length);
        this.f16616a = new SecretKeySpec(bArr, "AES");
    }

    public static boolean a(Cipher cipher) {
        try {
            byte[] bArr = f16613f;
            cipher.init(2, new SecretKeySpec(f16612e, "AES"), new GCMParameterSpec(128, bArr, 0, bArr.length));
            cipher.updateAAD(f16611d);
            byte[] bArr2 = f16614g;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), f16610c);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = (Cipher) f16615h.get();
        if (cipher == null) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.");
        }
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        cipher.init(2, this.f16616a, new GCMParameterSpec(128, bArr, 0, 12));
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        return cipher.doFinal(bArr, 12, length - 12);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2127vC
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.f16617b;
        if (bArr3.length == 0) {
            return b(bArr, bArr2);
        }
        if (!NE.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        return b(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
    }
}
