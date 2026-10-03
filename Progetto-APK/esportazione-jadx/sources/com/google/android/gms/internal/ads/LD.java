package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class LD implements InterfaceC2127vC {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f14484c = Cw.i0("808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f14485d = Cw.i0("070000004041424344454647");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f14486e = Cw.i0("a0784d7a4716f3feb4f64e7f4b39bf04");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final K3.X f14487f = new K3.X(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f14488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f14489b;

    public LD(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!Cw.f0(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        if (f14487f.get() == null) {
            throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
        }
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f14488a = new SecretKeySpec(bArr, "ChaCha20");
        this.f14489b = bArr2;
    }

    public static boolean a(Cipher cipher) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(f14485d);
            byte[] bArr = f14484c;
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            byte[] bArr2 = f14486e;
            if (cipher.doFinal(bArr2).length != 0) {
                return false;
            }
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            return cipher.doFinal(bArr2).length == 0;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2127vC
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = bArr.length;
        byte[] bArr3 = this.f14489b;
        if (length < bArr3.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!NE.c(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArr4 = new byte[12];
        System.arraycopy(bArr, bArr3.length, bArr4, 0, 12);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        Cipher cipher = (Cipher) f14487f.get();
        cipher.init(2, this.f14488a, ivParameterSpec);
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        int length2 = bArr3.length;
        return cipher.doFinal(bArr, length2 + 12, (length - length2) - 12);
    }
}
