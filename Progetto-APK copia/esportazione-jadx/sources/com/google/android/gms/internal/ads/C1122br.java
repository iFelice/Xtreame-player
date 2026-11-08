package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.br, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1122br {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f18103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f18104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC2356zi f18105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1690mr f18106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1438hx f18107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1816pC f18108f = new C1816pC();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicBoolean f18109g = new AtomicBoolean();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C1173cr f18110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Tv f18111i;

    public C1122br(C1936re c1936re, ScheduledExecutorService scheduledExecutorService, InterfaceC2356zi interfaceC2356zi, C1690mr c1690mr, C1438hx c1438hx) {
        this.f18103a = c1936re;
        this.f18104b = scheduledExecutorService;
        this.f18105c = interfaceC2356zi;
        this.f18106d = c1690mr;
        this.f18107e = c1438hx;
    }

    public final synchronized C1816pC a(Tv tv) {
        try {
            if (!this.f18109g.getAndSet(true)) {
                if (((List) tv.f16755b.f21882H).isEmpty()) {
                    this.f18108f.g(new C1898qr(3, C1949rr.a(tv)));
                } else {
                    this.f18111i = tv;
                    this.f18110h = new C1173cr(tv, this.f18106d, this.f18108f);
                    this.f18106d.e((List) tv.f16755b.f21882H);
                    Ov ovA = this.f18110h.a();
                    while (ovA != null) {
                        b(ovA);
                        ovA = this.f18110h.a();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f18108f;
    }

    public final void b(Ov ov) {
        D4.b bVarH1;
        synchronized (this) {
            Iterator it = ov.f15246a.iterator();
            while (it.hasNext()) {
                InterfaceC1845pq interfaceC1845pqA = this.f18105c.a(ov.f15248b, (String) it.next());
                if (interfaceC1845pqA != null && interfaceC1845pqA.b(this.f18111i, ov)) {
                    bVarH1 = Cw.e2(interfaceC1845pqA.a(this.f18111i, ov), ov.f15237R, TimeUnit.MILLISECONDS, this.f18104b);
                }
            }
            bVarH1 = Cw.H1(new C0679Bo(3));
        }
        this.f18106d.b(this.f18111i, ov, bVarH1, this.f18107e);
        Cw.h2(bVarH1, new C0871Om(this, ov, 9), this.f18103a);
    }
}
