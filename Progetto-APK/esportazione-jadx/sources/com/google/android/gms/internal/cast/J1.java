package com.google.android.gms.internal.cast;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class J1 extends I1 implements D4.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final D4.b f22475G;

    public J1(F1 f8) {
        this.f22475G = f8;
    }

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        this.f22475G.a(runnable, executor);
    }
}
