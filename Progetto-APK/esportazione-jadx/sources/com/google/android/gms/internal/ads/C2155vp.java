package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2155vp implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f21600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f21601b;

    public C2155vp(C1523jg c1523jg, MJ mj) {
        this.f21600a = c1523jg;
        this.f21601b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2103up zzb() {
        Context contextA = ((C1523jg) this.f21600a).a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f21601b.zzb();
        C2103up c2103up = new C2103up();
        c2103up.f22202e = contextA;
        c2103up.f22203f = p083k3.l.f25980A.f25998r.j();
        c2103up.f22204g = scheduledExecutorService;
        return c2103up;
    }
}
