package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2201wj extends AbstractC1666mI implements InterfaceC2045tj {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ScheduledExecutorService f21736H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ScheduledFuture f21737I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f21738J;

    public C2201wj(C2149vj c2149vj, Set set, C1936re c1936re, ScheduledExecutorService scheduledExecutorService) {
        super(set);
        this.f21738J = false;
        this.f21736H = scheduledExecutorService;
        Y0(c2149vj, c1936re);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2045tj
    public final void H(C1322fl c1322fl) {
        if (this.f21738J) {
            return;
        }
        ScheduledFuture scheduledFuture = this.f21737I;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        Z0(new C2097uj(c1322fl, 0));
    }

    public final void a() {
        this.f21737I = this.f21736H.schedule(new RunnableC0878Pf(this, 26), ((Integer) C3099q.f26624d.f26627c.a(Q7.X9)).intValue(), TimeUnit.MILLISECONDS);
    }

    public final void a1() {
        synchronized (this) {
            p120p3.h.d("Timeout waiting for show call succeed to be called.");
            H(new C1322fl("Timeout for show call succeed."));
            this.f21738J = true;
        }
    }

    public final synchronized void b() {
        ScheduledFuture scheduledFuture = this.f21737I;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2045tj
    public final void g(C3117z0 c3117z0) {
        Z0(new C1890qj(1, c3117z0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2045tj
    public final void zzb() {
        Z0(new C0650Aa(27));
    }
}
