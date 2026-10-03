package com.google.android.gms.internal.cast;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.z1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2523z1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C2523z1 f22856d = new C2523z1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f22857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f22858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C2523z1 f22859c;

    public C2523z1() {
        this.f22857a = null;
        this.f22858b = null;
    }

    public C2523z1(Runnable runnable, Executor executor) {
        this.f22857a = runnable;
        this.f22858b = executor;
    }
}
