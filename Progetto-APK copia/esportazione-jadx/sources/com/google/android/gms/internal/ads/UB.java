package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class UB extends AbstractRunnableC1402hC {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Executor f16807I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ WB f16808J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Callable f16809K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ WB f16810L;

    public UB(WB wb, Callable callable, Executor executor) {
        this.f16810L = wb;
        this.f16808J = wb;
        executor.getClass();
        this.f16807I = executor;
        this.f16809K = callable;
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final Object a() {
        return this.f16809K.call();
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final String b() {
        return this.f16809K.toString();
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final void d(Throwable th) {
        WB wb = this.f16808J;
        wb.f17176V = null;
        if (th instanceof ExecutionException) {
            wb.g(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            wb.cancel(false);
        } else {
            wb.g(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final void e(Object obj) {
        this.f16808J.f17176V = null;
        this.f16810L.f(obj);
    }

    @Override // com.google.android.gms.internal.ads.AbstractRunnableC1402hC
    public final boolean f() {
        return this.f16808J.isDone();
    }
}
