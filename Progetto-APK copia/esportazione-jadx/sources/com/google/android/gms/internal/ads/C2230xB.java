package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2230xB {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C2230xB f21851d = new C2230xB();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f21852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f21853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C2230xB f21854c;

    public C2230xB() {
        this.f21852a = null;
        this.f21853b = null;
    }

    public C2230xB(Runnable runnable, Executor executor) {
        this.f21852a = runnable;
        this.f21853b = executor;
    }
}
