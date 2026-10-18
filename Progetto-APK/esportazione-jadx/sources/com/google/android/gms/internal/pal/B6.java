package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class B6 implements M6 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final K3.X f23470d = new K3.X(14);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f23471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f23472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f23473c;

    public B6(byte[] bArr, int i8) throws GeneralSecurityException {
        if (!AbstractC2864y4.y(2)) {
            throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
        }
        P6.a(bArr.length);
        this.f23471a = new SecretKeySpec(bArr, "AES");
        int blockSize = ((Cipher) f23470d.get()).getBlockSize();
        this.f23473c = blockSize;
        if (i8 < 12 || i8 > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f23472b = i8;
    }
}
