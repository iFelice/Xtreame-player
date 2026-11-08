package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class T3 implements InterfaceC2768m3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final K3.X f23661b = new K3.X(13);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f23662a;

    public T3(byte[] bArr) throws InvalidAlgorithmParameterException {
        P6.a(bArr.length);
        this.f23662a = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2768m3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        AlgorithmParameterSpec ivParameterSpec;
        int length = bArr.length;
        if (length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[length + 28];
        byte[] bArrA = O6.a(12);
        System.arraycopy(bArrA, 0, bArr3, 0, 12);
        int length2 = bArrA.length;
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            ivParameterSpec = new GCMParameterSpec(128, bArrA, 0, length2);
        } catch (ClassNotFoundException unused) {
            if (!"The Android Project".equals(System.getProperty("java.vendor"))) {
                throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
            }
            ivParameterSpec = new IvParameterSpec(bArrA, 0, length2);
        }
        K3.X x7 = f23661b;
        ((Cipher) x7.get()).init(1, this.f23662a, ivParameterSpec);
        int iDoFinal = ((Cipher) x7.get()).doFinal(bArr, 0, length, bArr3, 12);
        if (iDoFinal == length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(A0.O.y("encryption failed; GCM tag must be 16 bytes, but got only ", iDoFinal - length, " bytes"));
    }
}
