package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.s5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1964s5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V4 f20860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f20861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20862c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class[] f20864e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile Method f20863d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CountDownLatch f20865f = new CountDownLatch(1);

    public C1964s5(V4 v5, String str, String str2, Class... clsArr) {
        this.f20860a = v5;
        this.f20861b = str;
        this.f20862c = str2;
        this.f20864e = clsArr;
        v5.f16940b.submit(new RunnableC0878Pf(this, 4));
    }
}
