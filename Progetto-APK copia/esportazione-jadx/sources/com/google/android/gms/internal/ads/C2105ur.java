package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ur, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2105ur implements InterfaceC2156vq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f21397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f21398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0893Qg f21399d;

    public /* synthetic */ C2105ur(Context context, Executor executor, C0893Qg c0893Qg, int i8) {
        this.f21396a = i8;
        this.f21397b = context;
        this.f21398c = executor;
        this.f21399d = c0893Qg;
    }

    public static final void c(Tv tv, Ov ov, C2000sq c2000sq) {
        try {
            C1385gw c1385gw = (C1385gw) c2000sq.f20994b;
            p090l3.b1 b1Var = ((Yv) tv.f16754a.f17529H).f17677d;
            String string = ov.f15288v.toString();
            c1385gw.getClass();
            try {
                c1385gw.f19025a.q3(b1Var, string);
            } catch (Throwable th) {
                throw new C1075aw(th);
            }
        } catch (Exception e8) {
            p120p3.h.h("Fail to load ad from adapter ".concat(String.valueOf(c2000sq.f20993a)), e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final void a(Tv tv, Ov ov, C2000sq c2000sq) throws C1075aw {
        switch (this.f21396a) {
            case 0:
                try {
                    Yv yv = (Yv) tv.f16754a.f17529H;
                    int i8 = yv.f17688o.f9298H;
                    Context context = this.f21397b;
                    p090l3.b1 b1Var = yv.f17677d;
                    if (i8 == 3) {
                        C1385gw c1385gw = (C1385gw) c2000sq.f20994b;
                        String string = ov.f15288v.toString();
                        InterfaceC1416hb interfaceC1416hb = (InterfaceC1416hb) c2000sq.f20995c;
                        c1385gw.getClass();
                        try {
                            c1385gw.f19025a.g2(new R3.b(context), b1Var, string, interfaceC1416hb);
                            return;
                        } catch (Throwable th) {
                            throw new C1075aw(th);
                        }
                    }
                    C1385gw c1385gw2 = (C1385gw) c2000sq.f20994b;
                    String string2 = ov.f15288v.toString();
                    InterfaceC1416hb interfaceC1416hb2 = (InterfaceC1416hb) c2000sq.f20995c;
                    c1385gw2.getClass();
                    try {
                        c1385gw2.f19025a.l1(new R3.b(context), b1Var, string2, interfaceC1416hb2);
                        return;
                    } catch (Throwable th2) {
                        throw new C1075aw(th2);
                    }
                } catch (Exception e8) {
                    p120p3.h.h("Fail to load ad from adapter ".concat(String.valueOf(c2000sq.f20993a)), e8);
                    return;
                }
                p120p3.h.h("Fail to load ad from adapter ".concat(String.valueOf(c2000sq.f20993a)), e8);
                return;
            default:
                if (((C1385gw) c2000sq.f20994b).a()) {
                    c(tv, ov, c2000sq);
                    return;
                }
                Dr dr = new Dr(this, tv, ov, c2000sq);
                Oq oq = (Oq) c2000sq.f20995c;
                synchronized (oq) {
                    oq.f15212I = dr;
                }
                Object obj = c2000sq.f20994b;
                Context context2 = this.f21397b;
                C1385gw c1385gw3 = (C1385gw) obj;
                Yv yv2 = (Yv) tv.f16754a.f17529H;
                InterfaceC1572kd interfaceC1572kd = (InterfaceC1572kd) c2000sq.f20995c;
                String string3 = ov.f15288v.toString();
                p090l3.b1 b1Var2 = yv2.f17677d;
                c1385gw3.getClass();
                try {
                    c1385gw3.f19025a.f3(new R3.b(context2), b1Var2, interfaceC1572kd, string3);
                    return;
                } catch (Throwable th3) {
                    throw new C1075aw(th3);
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final Object b(Tv tv, Ov ov, C2000sq c2000sq) {
        switch (this.f21396a) {
            case 0:
                p004a3.b bVar = new p004a3.b(tv, ov, c2000sq.f20993a);
                C1169cn c1169cn = new C1169cn(new O1.J(c2000sq, 1));
                C0893Qg c0893Qg = this.f21399d;
                C0879Pg c0879Pg = new C0879Pg(c0893Qg.f16073c, c0893Qg.f16075d, bVar, c1169cn);
                ((C0689Cj) c0879Pg.f15423V.zzb()).Y0(new C1680mh((C1385gw) c2000sq.f20994b), this.f21398c);
                ((Nq) c2000sq.f20995c).A3((BinderC2313yr) c0879Pg.f15451x0.zzb());
                return c0879Pg.G0();
            default:
                p004a3.b bVar2 = new p004a3.b(tv, ov, c2000sq.f20993a);
                C1169cn c1169cn2 = new C1169cn(new O1.J(c2000sq, 2));
                C0893Qg c0893Qg2 = this.f21399d;
                C0879Pg c0879Pg2 = new C0879Pg(c0893Qg2.f16073c, c0893Qg2.f16075d, bVar2, c1169cn2);
                ((C0689Cj) c0879Pg2.f15423V.zzb()).Y0(new C1680mh((C1385gw) c2000sq.f20994b), this.f21398c);
                C0734Fj c0734Fj = (C0734Fj) c0879Pg2.f15437j0.zzb();
                C1734nj c1734nj = (C1734nj) c0879Pg2.f15438k0.zzb();
                C0896Qj c0896Qj = (C0896Qj) c0879Pg2.f15443p0.zzb();
                C0911Rk c0911Rk = (C0911Rk) c0879Pg2.f15449v0.zzb();
                Oq oq = (Oq) c2000sq.f20995c;
                Er er = new Er(c0896Qj, c1734nj, c0734Fj, c0911Rk);
                synchronized (oq) {
                    oq.f15210G = er;
                }
                return c0879Pg2.G0();
        }
    }
}
