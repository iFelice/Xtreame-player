package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1224dr implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f18365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f18367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f18368d;

    public C1224dr(MJ mj, MJ mj2, MJ mj3, MJ mj4) {
        this.f18365a = mj;
        this.f18366b = mj2;
        this.f18367c = mj3;
        this.f18368d = mj4;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1122br zzb() {
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C1122br(c1936re, (ScheduledExecutorService) this.f18365a.zzb(), (InterfaceC2356zi) this.f18366b.zzb(), (C1690mr) this.f18367c.zzb(), (C1438hx) this.f18368d.zzb());
    }
}
