package com.google.android.gms.internal.pal;

import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final class X1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A1 f23687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f23689c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class[] f23691e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile Method f23690d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CountDownLatch f23692f = new CountDownLatch(1);

    public X1(A1 a8, String str, String str2, Class... clsArr) {
        this.f23687a = a8;
        this.f23688b = str;
        this.f23689c = str2;
        this.f23691e = clsArr;
        a8.f23426b.submit(new Y0(this, 3));
    }
}
