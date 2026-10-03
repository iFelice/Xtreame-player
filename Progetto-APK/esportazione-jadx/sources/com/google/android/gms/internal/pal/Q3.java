package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class Q3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final K3.X f23632c = new K3.X(12);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f23633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f23634b;

    public Q3(byte[] bArr, boolean z7) throws GeneralSecurityException {
        if (!AbstractC2864y4.y(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        P6.a(bArr.length);
        this.f23633a = new SecretKeySpec(bArr, "AES");
        this.f23634b = z7;
    }

    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length != 12) {
            throw new GeneralSecurityException("iv is wrong size");
        }
        int length = bArr2.length;
        if (length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        boolean z7 = this.f23634b;
        byte[] bArr3 = new byte[z7 ? length + 28 : length + 16];
        if (z7) {
            System.arraycopy(bArr, 0, bArr3, 0, 12);
        }
        "The Android Project".equals(System.getProperty("java.vendor"));
        GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, bArr, 0, 12);
        K3.X x7 = f23632c;
        ((Cipher) x7.get()).init(1, this.f23633a, gCMParameterSpec);
        int iDoFinal = ((Cipher) x7.get()).doFinal(bArr2, 0, length, bArr3, true != z7 ? 0 : 12);
        if (iDoFinal == length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(A0.O.y("encryption failed; GCM tag must be 16 bytes, but got only ", iDoFinal - length, " bytes"));
    }
}
