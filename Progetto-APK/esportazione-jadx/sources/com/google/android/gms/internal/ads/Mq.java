package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class Mq implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f14806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f14807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f14808c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f14809d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f14810e;

    public Mq(JJ jj, Fq fq, MJ mj, MJ mj2, MJ mj3) {
        this.f14806a = jj;
        this.f14807b = fq;
        this.f14808c = mj;
        this.f14809d = mj2;
        this.f14810e = mj3;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Lq zzb() {
        AbstractC1216di abstractC1216di = (AbstractC1216di) this.f14806a.zzb();
        Eq eqZzb = ((Fq) this.f14807b).zzb();
        C1941rj c1941rj = (C1941rj) this.f14808c.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f14809d.zzb();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new Lq(abstractC1216di, eqZzb, c1941rj, scheduledExecutorService, c1936re, (C0693Cn) this.f14810e.zzb());
    }
}
