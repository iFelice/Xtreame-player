package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2259xp implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f21933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f21934b;

    public C2259xp(C1523jg c1523jg, MJ mj) {
        this.f21933a = c1523jg;
        this.f21934b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2207wp zzb() {
        Context contextA = ((C1523jg) this.f21933a).a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f21934b.zzb();
        C2207wp c2207wp = new C2207wp();
        c2207wp.f22202e = contextA;
        c2207wp.f22203f = p083k3.l.f25980A.f25998r.j();
        c2207wp.f22204g = scheduledExecutorService;
        return c2207wp;
    }
}
