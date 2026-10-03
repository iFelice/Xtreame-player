package com.google.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.protobuf.v1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2960v1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f24524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f24525b;

    static {
        Charset.forName("US-ASCII");
        f24524a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f24525b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC2961w.h(bArr, 0, 0, false);
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static int b(long j8) {
        return (int) (j8 ^ (j8 >>> 32));
    }
}
