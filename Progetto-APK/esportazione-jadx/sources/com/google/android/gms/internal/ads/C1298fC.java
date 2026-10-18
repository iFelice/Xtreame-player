package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1298fC implements D4.b {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C1298fC f18730H = new C1298fC(null);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C1454iC f18731I = new C1454iC(0, C1298fC.class);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f18732G;

    public C1298fC(Object obj) {
        this.f18732G = obj;
    }

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        AbstractC2987b.w0(runnable, "Runnable was null.");
        AbstractC2987b.w0(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e8) {
            f18731I.a().logp(Level.SEVERE, "com.google.common.util.concurrent.ImmediateFuture", "addListener", com.google.protobuf.U2.m("RuntimeException while executing runnable ", String.valueOf(runnable), " with executor ", String.valueOf(executor)), (Throwable) e8);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f18732G;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        return A0.O.B(super.toString(), "[status=SUCCESS, result=[", String.valueOf(this.f18732G), "]]");
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f18732G;
    }
}
