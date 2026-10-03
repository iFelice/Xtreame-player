package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1092bC extends AbstractC1040aC {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final D4.b f18023N;

    public C1092bC(D4.b bVar) {
        bVar.getClass();
        this.f18023N = bVar;
    }

    @Override // com.google.android.gms.internal.ads.GB, D4.b
    public final void a(Runnable runnable, Executor executor) {
        this.f18023N.a(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.GB, java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        return this.f18023N.cancel(z7);
    }

    @Override // com.google.android.gms.internal.ads.GB, java.util.concurrent.Future
    public final Object get() {
        return this.f18023N.get();
    }

    @Override // com.google.android.gms.internal.ads.GB, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f18023N.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.GB, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f18023N.isDone();
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final String toString() {
        return this.f18023N.toString();
    }

    @Override // com.google.android.gms.internal.ads.GB, java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        return this.f18023N.get(j8, timeUnit);
    }
}
