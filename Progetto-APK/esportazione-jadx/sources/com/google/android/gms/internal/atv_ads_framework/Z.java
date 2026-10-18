package com.google.android.gms.internal.atv_ads_framework;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f22301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f22302b;

    static {
        Charset.forName("US-ASCII");
        f22301a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f22302b = bArr;
        ByteBuffer.wrap(bArr);
    }
}
