package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class CG implements JG {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final K3.X f12599d = new K3.X(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f12600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f12602c;

    public CG(byte[] bArr, int i8) throws GeneralSecurityException {
        if (!Cw.f0(2)) {
            throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
        }
        Cw.V(bArr.length);
        this.f12600a = new SecretKeySpec(bArr, "AES");
        int blockSize = ((Cipher) f12599d.get()).getBlockSize();
        this.f12602c = blockSize;
        if (i8 > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f12601b = i8;
    }
}
