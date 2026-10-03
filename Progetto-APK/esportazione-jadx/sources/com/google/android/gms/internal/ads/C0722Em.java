package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Em, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0722Em implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f13204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f13205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f13206d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f13207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f13208f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f13209g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f13210h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f13211i;

    public C0722Em(MJ mj, MJ mj2, MJ mj3, C1523jg c1523jg, C1938rg c1938rg, MJ mj4, MJ mj5, C1783og c1783og) {
        this.f13203a = 2;
        this.f13204b = mj;
        this.f13205c = mj2;
        this.f13206d = mj3;
        this.f13207e = c1523jg;
        this.f13208f = c1938rg;
        this.f13209g = mj4;
        this.f13210h = mj5;
        this.f13211i = c1783og;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f13203a;
        QJ qj = this.f13211i;
        QJ qj2 = this.f13210h;
        QJ qj3 = this.f13209g;
        QJ qj4 = this.f13208f;
        QJ qj5 = this.f13207e;
        QJ qj6 = this.f13206d;
        QJ qj7 = this.f13205c;
        QJ qj8 = this.f13204b;
        switch (i8) {
            case 0:
                return new C0707Dm(((C1526jj) qj8).a(), (Executor) qj7.zzb(), (C1428hn) qj6.zzb(), (Context) qj5.zzb(), (C0738Fn) qj4.zzb(), (C1488ix) qj3.zzb(), (C1172cq) qj2.zzb(), (C0983Wm) qj.zzb());
            case 1:
                return new C0899Qm((C1734nj) qj8.zzb(), (C0734Fj) qj7.zzb(), (C0839Mj) qj6.zzb(), (C0896Qj) qj5.zzb(), (C1527jk) qj4.zzb(), C0688Ci.a(((C0688Ci) qj3).f12681a), ((C0718Ei) qj2).f13174a.o(), (C1784oh) qj.zzb());
            case 2:
                return new C1895qo((C1998so) qj8.zzb(), (C0664Ao) qj7.zzb(), (C1377go) qj6.zzb(), ((C1523jg) qj5).a(), ((C1938rg) qj4).a(), (C1635lo) qj3.zzb(), (BinderC2258xo) qj2.zzb(), new SharedPreferencesOnSharedPreferenceChangeListenerC1946ro(), new SharedPreferencesOnSharedPreferenceChangeListenerC1946ro(), ((C1783og) qj).zzb());
            case 3:
                return new C2312yq((AbstractC0747Gh) qj8.zzb(), (Context) qj7.zzb(), (Executor) qj6.zzb(), (C1428hn) qj5.zzb(), ((C1526jj) qj4).a(), ((C1938rg) qj3).a(), new P9(), (BinderC1431hq) qj2.zzb(), (C0693Cn) qj.zzb());
            case 4:
                return new C2312yq((Context) qj8.zzb(), ((C1938rg) qj7).a(), ((C1526jj) qj6).a(), (Executor) qj5.zzb(), (C0851Ng) qj4.zzb(), (C1428hn) qj3.zzb(), new P9(), (BinderC1431hq) qj2.zzb(), (C0693Cn) qj.zzb());
            case 5:
                return new C2312yq((Context) qj8.zzb(), ((C1938rg) qj7).a(), ((C1526jj) qj6).a(), (Executor) qj5.zzb(), (C0893Qg) qj4.zzb(), (C1428hn) qj3.zzb(), new P9(), (BinderC1431hq) qj2.zzb(), (C0693Cn) qj.zzb());
            case 6:
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C1485iu(c1936re, (ScheduledExecutorService) qj8.zzb(), (String) qj7.zzb(), (Yr) qj6.zzb(), (Context) qj5.zzb(), ((C1526jj) qj4).a(), (Wr) qj3.zzb(), (C1894qn) qj2.zzb(), (C1325fo) qj.zzb());
            default:
                return new Lv((String) qj8.zzb(), (Jv) qj7.zzb(), (Context) qj6.zzb(), (Gv) qj5.zzb(), (Uv) qj4.zzb(), ((C1938rg) qj3).a(), (H4) qj2.zzb(), (C0738Fn) qj.zzb());
        }
    }

    public /* synthetic */ C0722Em(MJ mj, MJ mj2, MJ mj3, MJ mj4, IJ ij, MJ mj5, MJ mj6, MJ mj7, int i8) {
        this.f13203a = i8;
        this.f13204b = mj;
        this.f13205c = mj2;
        this.f13206d = mj3;
        this.f13207e = mj4;
        this.f13208f = ij;
        this.f13209g = mj5;
        this.f13210h = mj6;
        this.f13211i = mj7;
    }

    public C0722Em(MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7, MJ mj8) {
        this.f13203a = 6;
        this.f13204b = mj;
        this.f13205c = mj2;
        this.f13206d = mj3;
        this.f13207e = mj4;
        this.f13208f = mj5;
        this.f13209g = mj6;
        this.f13210h = mj7;
        this.f13211i = mj8;
    }

    public /* synthetic */ C0722Em(MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7, MJ mj8, int i8) {
        this.f13203a = i8;
        this.f13204b = mj;
        this.f13205c = mj2;
        this.f13206d = mj3;
        this.f13207e = mj4;
        this.f13208f = mj5;
        this.f13209g = mj6;
        this.f13210h = mj7;
        this.f13211i = mj8;
    }
}
