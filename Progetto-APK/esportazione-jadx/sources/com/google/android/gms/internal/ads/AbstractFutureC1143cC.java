package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractFutureC1143cC extends T.b implements D4.b, Future {
    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        ((ScheduledFutureC1660mC) this).f19918H.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final Object get() {
        return ((ScheduledFutureC1660mC) this).f19918H.get();
    }

    @Override // java.util.concurrent.Future
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final Object get(long j8, TimeUnit timeUnit) {
        return ((ScheduledFutureC1660mC) this).f19918H.get(j8, timeUnit);
    }

    @Override // java.util.concurrent.Future
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final boolean isCancelled() {
        return ((ScheduledFutureC1660mC) this).f19918H.isCancelled();
    }

    @Override // java.util.concurrent.Future
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final boolean isDone() {
        return ((ScheduledFutureC1660mC) this).f19918H.isDone();
    }
}
