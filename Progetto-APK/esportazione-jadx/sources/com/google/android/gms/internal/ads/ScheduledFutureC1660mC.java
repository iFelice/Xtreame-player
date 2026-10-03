package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ScheduledFutureC1660mC extends AbstractFutureC1143cC implements ScheduledFuture {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final D4.b f19918H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ScheduledFuture f19919I;

    public ScheduledFutureC1660mC(GB gb, ScheduledFuture scheduledFuture) {
        super(3);
        this.f19918H = gb;
        this.f19919I = scheduledFuture;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        boolean zCancel = this.f19918H.cancel(z7);
        if (zCancel) {
            this.f19919I.cancel(z7);
        }
        return zCancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f19919I.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f19919I.getDelay(timeUnit);
    }

    @Override // T.b
    public final /* synthetic */ Object n() {
        return this.f19918H;
    }
}
