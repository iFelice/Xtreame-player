package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2361zn implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f22191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f22192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f22193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f22194e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f22195f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f22196g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f22197h;

    public /* synthetic */ C2361zn(IJ ij, MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, int i8) {
        this.f22190a = i8;
        this.f22191b = ij;
        this.f22192c = mj;
        this.f22193d = mj2;
        this.f22194e = mj3;
        this.f22195f = mj4;
        this.f22196g = mj5;
        this.f22197h = mj6;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f22190a;
        QJ qj = this.f22197h;
        QJ qj2 = this.f22196g;
        QJ qj3 = this.f22195f;
        QJ qj4 = this.f22194e;
        QJ qj5 = this.f22193d;
        QJ qj6 = this.f22192c;
        QJ qj7 = this.f22191b;
        switch (i8) {
            case 0:
                return new C2309yn(((C1523jg) qj7).a(), (C1229dw) qj6.zzb(), (C0738Fn) qj5.zzb(), C0733Fi.a(((C0733Fi) qj4).f13392a), C0688Ci.a(((C0688Ci) qj3).f12681a), (C1172cq) qj2.zzb(), (String) qj.zzb());
            case 1:
                return new C0693Cn(((C1523jg) qj7).a(), (C0783In) qj6.zzb(), ((C1990sg) qj5).zzb(), ((C1526jj) qj4).a(), (String) qj3.zzb(), (String) qj2.zzb(), (p083k3.f) qj.zzb());
            case 2:
                return new BinderC1228dv((AbstractC1317fg) qj7.zzb(), (Context) qj6.zzb(), (String) qj5.zzb(), (C1126bv) qj4.zzb(), (C1074av) qj3.zzb(), ((C1938rg) qj2).a(), (C0738Fn) qj.zzb());
            default:
                return new C1332fv((Context) qj7.zzb(), (Executor) qj6.zzb(), (p090l3.d1) qj5.zzb(), (AbstractC1317fg) qj4.zzb(), (C1433hs) qj3.zzb(), (C1535js) qj2.zzb(), new Xv(), (C1579kk) qj.zzb());
        }
    }

    public C2361zn(MJ mj, MJ mj2, MJ mj3, JJ jj, MJ mj4, MJ mj5, MJ mj6) {
        this.f22190a = 3;
        this.f22191b = mj;
        this.f22192c = mj2;
        this.f22193d = mj3;
        this.f22194e = jj;
        this.f22195f = mj4;
        this.f22196g = mj5;
        this.f22197h = mj6;
    }
}
