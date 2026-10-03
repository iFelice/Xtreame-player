package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2288yH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f22010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f22011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ByteBuffer f22012c;

    static {
        Charset.forName("US-ASCII");
        f22010a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f22011b = bArr;
        f22012c = ByteBuffer.wrap(bArr);
        AbstractC1200dH.e(bArr, 0, 0, false);
    }
}
