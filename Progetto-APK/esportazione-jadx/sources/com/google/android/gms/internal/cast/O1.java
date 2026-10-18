package com.google.android.gms.internal.cast;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class O1 extends J1 implements ScheduledFuture {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ScheduledFuture f22510H;

    public O1(F1 f8, ScheduledFuture scheduledFuture) {
        super(f8);
        this.f22510H = scheduledFuture;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        boolean zCancel = this.f22475G.cancel(z7);
        if (zCancel) {
            this.f22510H.cancel(z7);
        }
        return zCancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f22510H.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f22510H.getDelay(timeUnit);
    }
}
