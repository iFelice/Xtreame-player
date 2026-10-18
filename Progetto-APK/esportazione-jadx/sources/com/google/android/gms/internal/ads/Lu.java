package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Lu implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f14577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f14578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f14579d;

    public Lu(C1523jg c1523jg, C1938rg c1938rg, MJ mj) {
        this.f14576a = 2;
        this.f14577b = c1523jg;
        this.f14578c = c1938rg;
        this.f14579d = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        C0887Qa c0887Qa;
        switch (this.f14576a) {
            case 0:
                Qu.a(((Qu) this.f14577b).f16148a);
                C1625le c1625le = (C1625le) this.f14578c.zzb();
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f14579d.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new Fs(c1625le, scheduledExecutorService, c1936re, 0);
            case 1:
                return new Mv((Jv) this.f14577b.zzb(), (Gv) this.f14578c.zzb(), (Uv) this.f14579d.zzb());
            case 2:
                Context contextA = ((C1523jg) this.f14577b).a();
                p120p3.a aVarA = ((C1938rg) this.f14578c).a();
                Uw uw = (Uw) this.f14579d.zzb();
                synchronized (new Object()) {
                    Context applicationContext = contextA.getApplicationContext();
                    if (applicationContext != null) {
                        contextA = applicationContext;
                    }
                    c0887Qa = new C0887Qa(contextA, aVarA, (String) C3099q.f26624d.f26627c.a(Q7.f15777a), uw);
                    break;
                }
                return c0887Qa;
            case 3:
                return new Uw(((C1523jg) this.f14577b).a(), ((C1938rg) this.f14578c).a(), (C1842pn) this.f14579d.zzb(), new C2272y1());
            default:
                Context contextA2 = ((C1523jg) this.f14577b).a();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                return new C1488ix(contextA2, c1936re2, (p120p3.k) this.f14578c.zzb(), (Uw) this.f14579d.zzb());
        }
    }

    public Lu(C1523jg c1523jg, MJ mj, MJ mj2) {
        this.f14576a = 4;
        this.f14577b = c1523jg;
        this.f14578c = mj;
        this.f14579d = mj2;
    }

    public Lu(IJ ij, IJ ij2, MJ mj, MJ mj2, int i8) {
        this.f14576a = i8;
        if (i8 != 3) {
            this.f14577b = ij;
            this.f14578c = mj;
            this.f14579d = mj2;
        } else {
            this.f14577b = ij;
            this.f14578c = ij2;
            this.f14579d = mj;
        }
    }

    public Lu(MJ mj, MJ mj2, MJ mj3) {
        this.f14576a = 1;
        this.f14577b = mj;
        this.f14578c = mj2;
        this.f14579d = mj3;
    }
}
