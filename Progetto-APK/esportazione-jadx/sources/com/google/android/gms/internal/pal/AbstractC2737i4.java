package com.google.android.gms.internal.pal;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.i4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2737i4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f23857a = b(1, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f23858b = b(2, 32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f23859c = b(2, 16);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f23860d = b(2, 17);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f23861e = b(2, 18);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f23862f = b(2, 1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final byte[] f23863g = b(2, 2);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f23864h = b(2, 3);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final byte[] f23865i = b(2, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final byte[] f23866j = b(2, 2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final byte[] f23867k = b(2, 3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final byte[] f23868l = new byte[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final byte[] f23869m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final byte[] f23870n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final byte[] f23871o;

    static {
        Charset charset = StandardCharsets.UTF_8;
        f23869m = "KEM".getBytes(charset);
        f23870n = "HPKE".getBytes(charset);
        f23871o = "HPKE-v1".getBytes(charset);
    }

    public static void a(Y5 y7) throws GeneralSecurityException {
        if (y7.q() == 2 || y7.q() == 1) {
            throw new GeneralSecurityException("Invalid KEM param: ".concat(AbstractC2864y4.B(y7.q())));
        }
        String str = "UNRECOGNIZED";
        if (y7.p() == 2 || y7.p() == 1) {
            int iP = y7.p();
            if (iP == 2) {
                str = "KDF_UNKNOWN";
            } else if (iP == 3) {
                str = "HKDF_SHA256";
            } else if (iP == 4) {
                str = "HKDF_SHA384";
            } else if (iP == 5) {
                str = "HKDF_SHA512";
            }
            throw new GeneralSecurityException("Invalid KDF param: ".concat(str));
        }
        if (y7.o() == 2 || y7.o() == 1) {
            int iO = y7.o();
            if (iO == 2) {
                str = "AEAD_UNKNOWN";
            } else if (iO == 3) {
                str = "AES_128_GCM";
            } else if (iO == 4) {
                str = "AES_256_GCM";
            } else if (iO == 5) {
                str = "CHACHA20_POLY1305";
            }
            throw new GeneralSecurityException("Invalid AEAD param: ".concat(str));
        }
    }

    public static byte[] b(int i8, int i9) {
        byte[] bArr = new byte[i8];
        for (int i10 = 0; i10 < i8; i10++) {
            bArr[i10] = (byte) ((i9 >> (((i8 - i10) - 1) * 8)) & 255);
        }
        return bArr;
    }
}
