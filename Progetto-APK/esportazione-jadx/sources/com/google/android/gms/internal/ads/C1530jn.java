package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1530jn implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f19489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f19490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f19491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f19492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f19493f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f19494g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f19495h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f19496i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final QJ f19497j;

    public C1530jn(MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7, IJ ij, MJ mj8, MJ mj9, int i8) {
        this.f19488a = i8;
        if (i8 != 1) {
            this.f19489b = mj2;
            this.f19490c = mj3;
            this.f19491d = mj4;
            this.f19492e = mj5;
            this.f19493f = mj6;
            this.f19494g = mj7;
            this.f19495h = ij;
            this.f19496i = mj8;
            this.f19497j = mj9;
            return;
        }
        this.f19489b = mj;
        this.f19490c = mj2;
        this.f19491d = mj3;
        this.f19492e = mj5;
        this.f19493f = mj6;
        this.f19494g = mj7;
        this.f19495h = ij;
        this.f19496i = mj8;
        this.f19497j = mj9;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f19488a;
        QJ qj = this.f19497j;
        QJ qj2 = this.f19496i;
        QJ qj3 = this.f19495h;
        QJ qj4 = this.f19494g;
        QJ qj5 = this.f19493f;
        QJ qj6 = this.f19492e;
        QJ qj7 = this.f19491d;
        QJ qj8 = this.f19490c;
        QJ qj9 = this.f19489b;
        switch (i8) {
            case 0:
                Context context = (Context) qj9.zzb();
                H4 h8 = (H4) qj8.zzb();
                C1242e8 c1242e8 = (C1242e8) qj7.zzb();
                p120p3.a aVarA = ((C1938rg) qj6).a();
                C2272y1 c2272y1 = ((C0921Sg) qj5).f16495a;
                return new C1428hn(context, h8, c1242e8, aVarA, C0921Sg.a(), (C2173w6) qj4.zzb(), (C0966Vj) qj3.zzb(), (BinderC1431hq) qj2.zzb(), (Zv) qj.zzb());
            case 1:
                Executor executor = (Executor) qj9.zzb();
                Context contextA = ((C1523jg) qj8).a();
                WeakReference weakReference = ((C1575kg) qj7).f19625a.f19120d;
                Cw.N0(weakReference);
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C1273eo(executor, contextA, weakReference, c1936re, (C1894qn) qj6.zzb(), (ScheduledExecutorService) qj5.zzb(), (C0813Kn) qj4.zzb(), ((C1938rg) qj3).a(), new C0660Ak(((NJ) ((C0690Ck) qj2).f12682a).zzb()), (Uw) qj.zzb());
            case 2:
                return new BinderC1587ks((Context) qj9.zzb(), (p090l3.d1) qj8.zzb(), (String) qj7.zzb(), (Dv) qj6.zzb(), (C1433hs) qj5.zzb(), (Gv) qj4.zzb(), ((C1938rg) qj3).a(), (H4) qj2.zzb(), (C0738Fn) qj.zzb());
            case 3:
                Context contextA2 = ((C1523jg) qj9).a();
                String str = ((C0838Mi) ((C1424hj) qj8).f19124a.zzb()).f14781H.f18770e;
                Cw.N0(str);
                return new C1072at(contextA2, str, (String) qj7.zzb(), (C0838Mi) qj6.zzb(), (C1539jw) qj5.zzb(), ((C1526jj) qj4).a(), (C0693Cn) qj3.zzb(), (C0895Qi) qj2.zzb(), ((Long) qj.zzb()).longValue());
            default:
                C1690mr c1690mr = (C1690mr) qj9.zzb();
                p120p3.a aVarA2 = ((C1938rg) qj8).a();
                String str2 = ((C0838Mi) ((C1424hj) qj7).f19124a.zzb()).f14781H.f18770e;
                Cw.N0(str2);
                return new C1438hx(c1690mr, aVarA2, str2, (String) qj6.zzb(), (Context) qj5.zzb(), ((C1475ij) qj4).f19315a.f18349d, (Vv) qj3.zzb(), (P3.a) qj2.zzb(), (H4) qj.zzb());
        }
    }

    public /* synthetic */ C1530jn(MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7, MJ mj8, MJ mj9, int i8) {
        this.f19488a = i8;
        this.f19489b = mj;
        this.f19490c = mj2;
        this.f19491d = mj3;
        this.f19492e = mj4;
        this.f19493f = mj5;
        this.f19494g = mj6;
        this.f19495h = mj7;
        this.f19496i = mj8;
        this.f19497j = mj9;
    }
}
