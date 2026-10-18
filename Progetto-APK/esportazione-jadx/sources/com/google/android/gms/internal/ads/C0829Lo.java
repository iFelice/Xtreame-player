package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Lo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0829Lo implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f14552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f14553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f14554c;

    public C0829Lo(MJ mj, Uo uo, C0687Ch c0687Ch) {
        this.f14552a = mj;
        this.f14553b = uo;
        this.f14554c = c0687Ch;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0814Ko zzb() {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f14552a.zzb();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        C1936re c1936re2 = AbstractC1988se.f20907b;
        Cw.N0(c1936re2);
        Context contextA = ((C1523jg) ((Uo) this.f14553b).f16886a).a();
        Cw.N0(c1936re);
        return new C0814Ko(scheduledExecutorService, c1936re, c1936re2, new To(contextA, c1936re), HJ.a(Cw.B(this.f14554c)));
    }
}
