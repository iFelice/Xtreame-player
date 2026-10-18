package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ch, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0687Ch implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f12676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f12677c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f12678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f12679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f12680f;

    public C0687Ch(C1523jg c1523jg, C1887qg c1887qg, Np np, MJ mj, MJ mj2) {
        this.f12675a = 5;
        this.f12676b = c1523jg;
        this.f12677c = c1887qg;
        this.f12678d = np;
        this.f12679e = mj;
        this.f12680f = mj2;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f12675a;
        QJ qj = this.f12679e;
        QJ qj2 = this.f12680f;
        QJ qj3 = this.f12678d;
        QJ qj4 = this.f12677c;
        QJ qj5 = this.f12676b;
        switch (i8) {
            case 0:
                return new C0672Bh((C0971Wa) qj5.zzb(), (C2303yh) qj4.zzb(), (Executor) qj3.zzb(), (C2251xh) qj.zzb(), (P3.a) qj2.zzb());
            case 1:
                return new C1733ni(((C1523jg) qj5).a(), (InterfaceC0715Ef) ((C1061ai) qj4).f17908a.f21885K, C0688Ci.a(((C0688Ci) qj3).f12681a), ((C1938rg) qj).a(), (C1637lq) qj2.zzb());
            case 2:
                C1023Zk c1023Zk = (C1023Zk) qj5;
                C0862Od c0862Od = new C0862Od(((C1523jg) c1023Zk.f17792a).a(), ((C1526jj) c1023Zk.f17793b).a().f17679f);
                Context contextA = ((C1523jg) qj4).a();
                C0890Qd c0890Qd = (C0890Qd) qj3.zzb();
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) ((C0995Xk) qj).f17503a.f21780I;
                return new C1528jl(c0862Od, contextA, c0890Qd, interfaceC0715Ef == null ? null : interfaceC0715Ef.h0(), (EnumC2329z6) qj2.zzb());
            case 3:
                Map mapZzb = ((KJ) qj5).zzb();
                Map mapZzb2 = ((KJ) qj4).zzb();
                Map mapZzb3 = ((KJ) qj3).zzb();
                C0856Nl c0856Nl = ((C1788ol) qj2).f20319a.f19838a;
                Cw.N0(c0856Nl);
                return new C1580kl(mapZzb, mapZzb2, mapZzb3, this.f12679e, c0856Nl);
            case 4:
                Context contextA2 = ((C1523jg) qj5).a();
                String packageName = ((C1523jg) ((C0769Ho) qj4).f13791a).a().getPackageName();
                Cw.N0(packageName);
                p120p3.a aVarA = ((C1938rg) qj3).a();
                EnumC2329z6 enumC2329z6 = (EnumC2329z6) qj.zzb();
                String str = (String) qj2.zzb();
                C2173w6 c2173w6 = new C2173w6(new J2.t(contextA2, 6));
                S6 s6B = T6.B();
                int i9 = aVarA.f28197H;
                s6B.d();
                T6.C((T6) s6B.f20255H, i9);
                int i10 = aVarA.f28198I;
                s6B.d();
                T6.D((T6) s6B.f20255H, i10);
                int i11 = true != aVarA.f28199J ? 2 : 0;
                s6B.d();
                T6.A((T6) s6B.f20255H, i11);
                c2173w6.a(new C2246xc(enumC2329z6, packageName, (T6) s6B.b(), str, 14, (Object) null));
                return c2173w6;
            case 5:
                Context contextA3 = ((C1523jg) qj5).a();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                C2272y1 c2272y1 = new C2272y1();
                AbstractC1317fg abstractC1317fg = (AbstractC1317fg) ((C1887qg) qj4).f20597a.zzb();
                Cw.N0(abstractC1317fg);
                return new Gp(contextA3, c1936re, c2272y1, abstractC1317fg, new Mp(((C2042tg) ((Np) qj3).f15091a).zzb()), (ArrayDeque) qj.zzb(), (Uw) qj2.zzb());
            case 6:
                return new C1637lq(((C1523jg) qj5).a(), ((C1938rg) qj4).a(), C0688Ci.a(((C0688Ci) qj3).f12681a), (InterfaceC0715Ef) qj.zzb(), (C0738Fn) qj2.zzb());
            case 7:
                C2094ug c2094ug = (C2094ug) qj5.zzb();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                C1893qm c1893qm = (C1893qm) qj4;
                c1893qm.getClass();
                Cw.N0(c1936re2);
                C2100um c2100umA = ((C2152vm) c1893qm.f20613a).zzb();
                C2308ym c2308ym = (C2308ym) c1893qm.f20614b;
                c2308ym.getClass();
                return new Yq(c2094ug, c1936re2, new C1841pm(c1936re2, c2100umA, new C2256xm(c1936re2, ((C2152vm) c2308ym.f22052a).zzb())), (C1437hw) qj3.zzb(), (C0983Wm) qj.zzb(), (C0693Cn) qj2.zzb());
            case 8:
                return new C1380gr((AbstractC1317fg) qj5.zzb(), ((C1578kj) qj4).f19627a.a(), ((C2306yk) qj3).f22049a, (C1690mr) qj.zzb(), (C2104uq) qj2.zzb());
            case 9:
                return new Pr((Context) qj5.zzb(), (AbstractC1216di) qj4.zzb(), (Kw) qj3.zzb(), (InterfaceExecutorServiceC1504jC) qj.zzb(), ((Rr) qj2).f16368a.f16143a);
            case 10:
                return new BinderC1174cs((Context) qj5.zzb(), ((C1684ml) qj4).f19991a.f19839b, ((C1526jj) qj3).a(), ((C0880Ph) ((C0992Xh) qj).f17502a).zzb(), (C0738Fn) qj2.zzb());
            case 11:
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new C1537ju(c1936re3, (ScheduledExecutorService) qj5.zzb(), (String) qj4.zzb(), (Context) qj3.zzb(), ((C1526jj) qj).a(), (AbstractC1317fg) qj2.zzb());
            case 12:
                C2272y1 c2272y2 = new C2272y1();
                Context contextA4 = ((C1523jg) qj5).a();
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) qj4.zzb();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                return new Ju(c2272y2, contextA4, scheduledExecutorService, c1936re4, ((Ru) qj3).f16371a.f4294H, ((C0973Wc) ((Su) qj).f16546a.f4295I).f17261R, ((C0973Wc) ((Uu) qj2).f16903a.f4295I).f17260Q);
            case 13:
                int i12 = ((Ru) qj5).f16371a.f4294H;
                ((C1523jg) qj4).a();
                C1625le c1625le = (C1625le) qj3.zzb();
                ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) qj.zzb();
                C1936re c1936re5 = AbstractC1988se.f20906a;
                Cw.N0(c1936re5);
                Qu.a(((Qu) qj2).f16148a);
                return new Fs(c1625le, scheduledExecutorService2, c1936re5);
            case 14:
                C1625le c1625le2 = (C1625le) qj5.zzb();
                boolean z7 = ((C0973Wc) ((Tu) qj4).f16753a.f4295I).f17250G.getBoolean("is_gbid");
                boolean z8 = ((C0973Wc) ((Uu) qj3).f16903a.f4295I).f17260Q;
                C1936re c1936re6 = AbstractC1988se.f20906a;
                Cw.N0(c1936re6);
                Qu.a(((Qu) qj).f16148a);
                return new Wu(c1625le2, z7, z8, c1936re6, (ScheduledExecutorService) qj2.zzb());
            default:
                return new Dv((Context) qj5.zzb(), (Executor) qj4.zzb(), (AbstractC1317fg) qj3.zzb(), (C1433hs) qj.zzb(), (Gv) qj2.zzb(), new Xv());
        }
    }

    public C0687Ch(MJ mj, IJ ij, MJ mj2, MJ mj3, MJ mj4, IJ ij2, MJ mj5, int i8) {
        this.f12675a = i8;
        if (i8 == 13) {
            this.f12676b = ij;
            this.f12677c = mj2;
            this.f12678d = mj3;
            this.f12679e = mj4;
            this.f12680f = mj5;
            return;
        }
        if (i8 != 14) {
            this.f12676b = ij;
            this.f12677c = mj2;
            this.f12678d = mj4;
            this.f12679e = ij2;
            this.f12680f = mj5;
            return;
        }
        this.f12676b = mj;
        this.f12677c = ij;
        this.f12678d = mj2;
        this.f12679e = ij2;
        this.f12680f = mj5;
    }

    public /* synthetic */ C0687Ch(MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, int i8) {
        this.f12675a = i8;
        this.f12676b = mj;
        this.f12677c = mj2;
        this.f12678d = mj3;
        this.f12679e = mj4;
        this.f12680f = mj5;
    }

    public C0687Ch(MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, int i8) {
        this.f12675a = i8;
        if (i8 == 11) {
            this.f12676b = mj2;
            this.f12677c = mj3;
            this.f12678d = mj4;
            this.f12679e = mj5;
            this.f12680f = mj6;
            return;
        }
        if (i8 != 15) {
            this.f12676b = mj;
            this.f12677c = mj3;
            this.f12678d = mj4;
            this.f12679e = mj5;
            this.f12680f = mj6;
            return;
        }
        this.f12676b = mj;
        this.f12677c = mj2;
        this.f12678d = mj3;
        this.f12679e = mj4;
        this.f12680f = mj5;
    }
}
