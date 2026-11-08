package com.google.android.gms.internal.cast;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.o2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2481o2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f22763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f22764b;

    static {
        Charset.forName("US-ASCII");
        f22763a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f22764b = bArr;
        ByteBuffer.wrap(bArr);
    }
}
