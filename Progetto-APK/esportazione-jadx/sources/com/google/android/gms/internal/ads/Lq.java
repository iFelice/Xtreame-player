package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;
import p167v3.CallableC3196d;

/* JADX INFO: loaded from: classes.dex */
public final class Lq implements InterfaceC1845pq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC1216di f14559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Eq f14560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f14561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1941rj f14562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ScheduledExecutorService f14563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0693Cn f14564f;

    public Lq(AbstractC1216di abstractC1216di, Eq eq, C1941rj c1941rj, ScheduledExecutorService scheduledExecutorService, C1936re c1936re, C0693Cn c0693Cn) {
        this.f14559a = abstractC1216di;
        this.f14560b = eq;
        this.f14562d = c1941rj;
        this.f14563e = scheduledExecutorService;
        this.f14561c = c1936re;
        this.f14564f = c0693Cn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        return ((IB) this.f14561c).b(new CallableC3196d(this, tv, ov, 11));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        InterfaceC2280y9 interfaceC2280y9A = ((Yv) tv.f16754a.f17529H).a();
        boolean zB = this.f14560b.b(tv, ov);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.kb)).booleanValue()) {
            Object obj = interfaceC2280y9A != null ? "1" : "0";
            C0693Cn c0693Cn = this.f14564f;
            c0693Cn.f12691a.put("has_dbl", obj);
            c0693Cn.f12691a.put("crdb", true == zB ? "1" : "0");
        }
        return interfaceC2280y9A != null && zB;
    }
}
