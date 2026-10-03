package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.te, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2040te implements D4.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1816pC f21082G = new C1816pC();

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        this.f21082G.a(runnable, executor);
    }

    public final boolean b(Object obj) {
        boolean zF = this.f21082G.f(obj);
        if (!zF) {
            p083k3.l.f25980A.f25987g.h("SettableFuture", new IllegalStateException("Provided SettableFuture with multiple values."));
        }
        return zF;
    }

    public final boolean c(Throwable th) {
        boolean zG = this.f21082G.g(th);
        if (!zG) {
            p083k3.l.f25980A.f25987g.h("SettableFuture", new IllegalStateException("Provided SettableFuture with multiple values."));
        }
        return zG;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z7) {
        return this.f21082G.cancel(z7);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f21082G.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f21082G.f13489G instanceof C2126vB;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f21082G.isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        return this.f21082G.get(j8, timeUnit);
    }
}
