package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1375gm implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f18968c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f18969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f18970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f18971f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f18972g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f18973h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f18974i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final QJ f18975j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final QJ f18976k;

    public C1375gm(C1523jg c1523jg, MJ mj, MJ mj2, C1938rg c1938rg, C0921Sg c0921Sg, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7) {
        this.f18966a = 1;
        this.f18967b = c1523jg;
        this.f18968c = mj;
        this.f18969d = mj2;
        this.f18970e = c1938rg;
        this.f18971f = c0921Sg;
        this.f18972g = mj3;
        this.f18973h = mj4;
        this.f18974i = mj5;
        this.f18975j = mj6;
        this.f18976k = mj7;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f18966a;
        QJ qj = this.f18976k;
        QJ qj2 = this.f18975j;
        QJ qj3 = this.f18974i;
        QJ qj4 = this.f18973h;
        QJ qj5 = this.f18972g;
        QJ qj6 = this.f18971f;
        QJ qj7 = this.f18970e;
        QJ qj8 = this.f18969d;
        QJ qj9 = this.f18968c;
        QJ qj10 = this.f18967b;
        switch (i8) {
            case 0:
                return new C1323fm((C1570kb) ((C1427hm) qj10).f19132a.f8652J, (C1622lb) ((C1478im) qj9).f19317a.f8651I, (InterfaceC1830pb) ((C1529jm) qj8).f19487a.f8650H, (C2357zj) qj7.zzb(), (C1734nj) qj6.zzb(), (C0855Nk) qj5.zzb(), (Context) qj4.zzb(), C0688Ci.a(((C0688Ci) qj3).f12681a), ((C1938rg) qj2).a(), ((C1526jj) qj).a());
            case 1:
                Context contextA = ((C1523jg) qj10).a();
                Executor executor = (Executor) qj9.zzb();
                H4 h8 = (H4) qj8.zzb();
                p120p3.a aVarA = ((C1938rg) qj7).a();
                C2272y1 c2272y1 = ((C0921Sg) qj6).f16495a;
                return new CallableC0913Rm(contextA, executor, h8, aVarA, C0921Sg.a(), (C1172cq) qj5.zzb(), (C1488ix) qj4.zzb(), (C0738Fn) qj3.zzb(), (BinderC1431hq) qj2.zzb(), (Zv) qj.zzb());
            default:
                return new C0969Vm((C1734nj) qj10.zzb(), (C0734Fj) qj9.zzb(), (C0839Mj) qj8.zzb(), (C0896Qj) qj7.zzb(), (C1527jk) qj6.zzb(), (C0855Nk) qj5.zzb(), (C0738Fn) qj4.zzb(), (C1488ix) qj3.zzb(), (C1172cq) qj2.zzb(), (C1784oh) qj.zzb());
        }
    }

    public /* synthetic */ C1375gm(MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7, MJ mj8, MJ mj9, MJ mj10, int i8) {
        this.f18966a = i8;
        this.f18967b = mj;
        this.f18968c = mj2;
        this.f18969d = mj3;
        this.f18970e = mj4;
        this.f18971f = mj5;
        this.f18972g = mj6;
        this.f18973h = mj7;
        this.f18974i = mj8;
        this.f18975j = mj9;
        this.f18976k = mj10;
    }
}
