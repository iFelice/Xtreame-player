package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final class Ou implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f15219b;

    public Ou(Qu qu) {
        this.f15218a = 1;
        this.f15219b = qu;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f15218a;
        QJ qj = this.f15219b;
        switch (i8) {
            case 0:
                return new Nu(((C1523jg) qj).a());
            case 1:
                Cw.N0(AbstractC1988se.f20906a);
                Qu.a(((Qu) qj).f16148a);
                return new Wt();
            case 2:
                return new C1074av((C1591kw) qj.zzb());
            case 3:
                return new Gv((C1591kw) qj.zzb());
            case 4:
                return new Zv((H4) qj.zzb());
            case 5:
                return new C0825Lk((C1539jw) qj.zzb(), AbstractC1988se.f20911f);
            case 6:
                ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, (ThreadFactory) qj.zzb()));
                Cw.N0(scheduledExecutorServiceUnconfigurableScheduledExecutorService);
                return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
            case 7:
                return new Tw((Uw) qj.zzb());
            case 8:
                return new Tw((Uw) qj.zzb());
            case 9:
                return new BinderC1800ox((C1904qx) qj.zzb());
            default:
                return new C1904qx((C2111ux) qj.zzb());
        }
    }

    public Ou(MJ mj) {
        this.f15218a = 5;
        this.f15219b = mj;
    }

    public /* synthetic */ Ou(MJ mj, int i8) {
        this.f15218a = i8;
        this.f15219b = mj;
    }
}
