package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1919rC extends ZB {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public D4.b f20690N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ScheduledFuture f20691O;

    @Override // com.google.android.gms.internal.ads.GB
    public final String d() {
        D4.b bVar = this.f20690N;
        ScheduledFuture scheduledFuture = this.f20691O;
        if (bVar == null) {
            return null;
        }
        String strG = p000a.r.g("inputFuture=[", bVar.toString(), "]");
        if (scheduledFuture == null) {
            return strG;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return strG;
        }
        return strG + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.android.gms.internal.ads.GB
    public final void e() {
        k(this.f20690N);
        ScheduledFuture scheduledFuture = this.f20691O;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f20690N = null;
        this.f20691O = null;
    }
}
