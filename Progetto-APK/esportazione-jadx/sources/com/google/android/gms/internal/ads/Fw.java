package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class Fw implements D4.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f13439G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f13440H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final D4.b f13441I;

    public Fw(Object obj, String str, D4.b bVar) {
        this.f13439G = obj;
        this.f13440H = str;
        this.f13441I = bVar;
    }

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        this.f13441I.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        return this.f13441I.cancel(z7);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f13441I.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f13441I.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f13441I.isDone();
    }

    public final String toString() {
        return this.f13440H + "@" + System.identityHashCode(this);
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        return this.f13441I.get(j8, timeUnit);
    }
}
