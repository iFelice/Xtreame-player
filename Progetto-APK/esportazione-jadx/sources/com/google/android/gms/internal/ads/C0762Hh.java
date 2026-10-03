package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0762Hh implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f13770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f13771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f13772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f13773e;

    public C0762Hh(C1523jg c1523jg, C0656Ag c0656Ag, C0656Ag c0656Ag2, MJ mj) {
        this.f13769a = 14;
        this.f13770b = c1523jg;
        this.f13771c = c0656Ag;
        this.f13772d = c0656Ag2;
        this.f13773e = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f13769a;
        QJ qj = this.f13773e;
        QJ qj2 = this.f13772d;
        QJ qj3 = this.f13771c;
        QJ qj4 = this.f13770b;
        switch (i8) {
            case 0:
                Dq dq = (Dq) qj2;
                return new Kr((Kw) qj4.zzb(), (InterfaceExecutorServiceC1504jC) qj3.zzb(), ((Gr) qj).zzb(), new Cq((Context) dq.f12882a.zzb(), (AbstractC0747Gh) dq.f12883b.zzb()));
            case 1:
                Iq iq = (Iq) qj2;
                return new Kr((Kw) qj4.zzb(), (InterfaceExecutorServiceC1504jC) qj3.zzb(), ((Gr) qj).zzb(), new Hq((Context) iq.f14056a.zzb(), (AbstractC1216di) iq.f14057b.zzb()));
            case 2:
                C2200wi c2200wiZzb = ((C0909Ri) qj4).zzb();
                InterfaceC2280y9 interfaceC2280y9 = (InterfaceC2280y9) ((C1629li) qj3).f19823a.f21779H;
                Cw.N0(interfaceC2280y9);
                return new C1525ji(c2200wiZzb, interfaceC2280y9, (Runnable) ((C1577ki) qj2).f19626a.f21780I, (Executor) qj.zzb());
            case 3:
                return new C0881Pi((P3.a) qj4.zzb(), (C0895Qi) qj3.zzb(), ((C1526jj) qj2).a(), (String) qj.zzb());
            case 4:
                C2357zj c2357zj = (C2357zj) qj4.zzb();
                Ov ovA = C0688Ci.a(((C0688Ci) qj3).f12681a);
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) qj2.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C0979Wi(c2357zj, ovA, scheduledExecutorService, c1936re, (String) ((C0703Di) qj).f12851a.f8652J);
            case 5:
                return new C0825Lk(new C0894Qh((Context) qj4.zzb(), ((C1938rg) qj3).a(), C0688Ci.a(((C0688Ci) qj2).f12681a), ((C1526jj) qj).a(), 1), AbstractC1988se.f20911f);
            case 6:
                Vq vq = (Vq) qj2;
                return new Kr((Kw) qj4.zzb(), (InterfaceExecutorServiceC1504jC) qj3.zzb(), ((Gr) qj).zzb(), new Uq((Context) vq.f17120a.zzb(), (C0851Ng) vq.f17121b.zzb()));
            case 7:
                E5 e8 = (E5) qj4.zzb();
                Executor executor = (Executor) qj3.zzb();
                Context context = (Context) qj2.zzb();
                return new C0702Dh(executor, new C2303yh(context, e8), (P3.a) qj.zzb());
            case 8:
                C1428hn c1428hn = (C1428hn) qj4.zzb();
                C0941Tm c0941TmA = C2255xl.a(((C2255xl) qj3).f21922a);
                C0702Dh c0702Dh = (C0702Dh) qj2.zzb();
                C1995sl c1995sl = (C1995sl) ((C2203wl) qj).f21740a.zzb();
                Cw.N0(c1995sl);
                return new C1010Yl(c1428hn, c0941TmA, c0702Dh, c1995sl);
            case 9:
                return new C0692Cm((Executor) qj4.zzb(), (C0702Dh) qj3.zzb(), (C0840Mk) qj2.zzb(), (C1784oh) qj.zzb());
            case 10:
                return new BinderC0812Km(((C1523jg) qj4).a(), C0884Pl.a(((C0884Pl) qj3).f15466a), ((C0940Tl) qj2).zzb(), (C0721El) qj.zzb());
            case 11:
                return new BinderC0827Lm((String) ((C0703Di) qj4).f12851a.f8652J, (C0721El) qj3.zzb(), C0884Pl.a(((C0884Pl) qj2).f15466a), (C0738Fn) qj.zzb());
            case 12:
                C2261xr c2261xr = (C2261xr) qj2;
                return new Kr((Kw) qj4.zzb(), (InterfaceExecutorServiceC1504jC) qj3.zzb(), ((Gr) qj).zzb(), new C2209wr((Context) c2261xr.f21937a.zzb(), (C0893Qg) c2261xr.f21938b.zzb()));
            case 13:
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                p120p3.k kVar = (p120p3.k) qj4.zzb();
                p174w3.b bVar = (p174w3.b) qj3;
                p174w3.a aVar = new p174w3.a((Context) bVar.f31006a.zzb(), (p120p3.a) bVar.f31007b.zzb());
                ((p174w3.c) qj2).getClass();
                return new C0783In(c1936re2, kVar, aVar, new T1.a(), ((C1523jg) qj).a());
            case 14:
                Context contextA = ((C1523jg) qj4).a();
                C2354zg c2354zg = (C2354zg) qj3.zzb();
                C2250xg c2250xg = (C2250xg) qj2.zzb();
                Mp mp = new Mp(((C2042tg) ((Np) qj).f15091a).zzb());
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new Hp(contextA, c2354zg, c2250xg, mp, c1936re3, new C2272y1());
            case 15:
                return new BinderC1431hq(((C1523jg) qj4).a(), (C1172cq) qj3.zzb(), (p120p3.k) qj2.zzb(), (C0738Fn) qj.zzb());
            case 16:
                return new Jq((Context) qj4.zzb(), (Executor) qj3.zzb(), (C0851Ng) qj2.zzb(), (Nv) qj.zzb());
            case 17:
                return new Jq((Kw) qj4.zzb(), (InterfaceExecutorServiceC1504jC) qj3.zzb(), ((Rr) qj2).f16368a.f16143a, new Ur((C0851Ng) ((Vr) qj).f17122a.zzb()));
            case 18:
                return new C1073au(((C0754Go) qj4).zzb(), (PackageInfo) qj3.zzb(), ((C1523jg) qj2).a(), (C0693Cn) qj.zzb());
            default:
                return new C2111ux(((C1523jg) qj4).a(), ((C1938rg) qj3).a(), (ScheduledExecutorService) qj2.zzb(), (P3.a) qj.zzb());
        }
    }

    public /* synthetic */ C0762Hh(MJ mj, IJ ij, MJ mj2, IJ ij2, int i8) {
        this.f13769a = i8;
        this.f13770b = mj;
        this.f13771c = ij;
        this.f13772d = mj2;
        this.f13773e = ij2;
    }

    public C0762Hh(MJ mj, MJ mj2, MJ mj3, C0703Di c0703Di) {
        this.f13769a = 4;
        this.f13770b = mj;
        this.f13771c = mj2;
        this.f13772d = mj3;
        this.f13773e = c0703Di;
    }

    public /* synthetic */ C0762Hh(MJ mj, MJ mj2, MJ mj3, MJ mj4, int i8) {
        this.f13769a = i8;
        this.f13770b = mj;
        this.f13771c = mj2;
        this.f13772d = mj3;
        this.f13773e = mj4;
    }
}
