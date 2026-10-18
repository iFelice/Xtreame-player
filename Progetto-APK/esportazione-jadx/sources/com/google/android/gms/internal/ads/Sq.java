package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Sq implements InterfaceC2156vq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16534a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f16535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p120p3.a f16536c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f16537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f16538e;

    public Sq(Context context, C2094ug c2094ug, p120p3.a aVar) {
        this.f16535b = context;
        this.f16537d = c2094ug;
        this.f16536c = aVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final void a(Tv tv, Ov ov, C2000sq c2000sq) throws C1075aw {
        int i8 = this.f16534a;
        Context context = this.f16535b;
        switch (i8) {
            case 0:
                C1385gw c1385gw = (C1385gw) c2000sq.f20994b;
                Yv yv = (Yv) tv.f16754a.f17529H;
                String string = ov.f15288v.toString();
                String strD0 = Q3.b.d0(ov.f15282s);
                InterfaceC1416hb interfaceC1416hb = (InterfaceC1416hb) c2000sq.f20995c;
                p090l3.b1 b1Var = yv.f17677d;
                c1385gw.getClass();
                try {
                    c1385gw.f19025a.O1(new R3.b(context), b1Var, string, strD0, interfaceC1416hb);
                    return;
                } catch (Throwable th) {
                    throw new C1075aw(th);
                }
            default:
                try {
                    ((InterfaceC0771Ib) c2000sq.f20994b).a3(ov.f15245Z);
                    int i9 = this.f16536c.f28198I;
                    int iIntValue = ((Integer) C3099q.f26624d.f26627c.a(Q7.f15987z1)).intValue();
                    InterfaceC0749Gj interfaceC0749Gj = c2000sq.f20995c;
                    Object obj = c2000sq.f20994b;
                    JSONObject jSONObject = ov.f15288v;
                    if (i9 < iIntValue) {
                        ((InterfaceC0771Ib) obj).T0(ov.f15240U, jSONObject.toString(), ((Yv) tv.f16754a.f17529H).f17677d, new R3.b(context), new Zq(this, c2000sq), (InterfaceC1416hb) interfaceC0749Gj);
                        return;
                    } else {
                        ((InterfaceC0771Ib) obj).n1(ov.f15240U, jSONObject.toString(), ((Yv) tv.f16754a.f17529H).f17677d, new R3.b(context), new Zq(this, c2000sq), (InterfaceC1416hb) interfaceC0749Gj, ((Yv) tv.f16754a.f17529H).f17682i);
                        return;
                    }
                } catch (RemoteException e8) {
                    throw new C1075aw(e8);
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final Object b(Tv tv, Ov ov, final C2000sq c2000sq) throws C1898qr {
        int i8 = this.f16534a;
        Object obj = null;
        Object obj2 = this.f16537d;
        switch (i8) {
            case 0:
                C0851Ng c0851Ng = (C0851Ng) obj2;
                C0836Mg c0836MgC = c0851Ng.c(new p004a3.b(tv, ov, c2000sq.f20993a), new C2218x(22, new InterfaceC1374gl() { // from class: com.google.android.gms.internal.ads.Rq
                    @Override // com.google.android.gms.internal.ads.InterfaceC1374gl
                    public final void c(boolean z7, Context context, C2201wj c2201wj) throws C1322fl {
                        C2000sq c2000sq2 = c2000sq;
                        Sq sq = this.f16366G;
                        sq.getClass();
                        try {
                            ((C1385gw) c2000sq2.f20994b).c(z7);
                            int i9 = sq.f16536c.f28198I;
                            int iIntValue = ((Integer) C3099q.f26624d.f26627c.a(Q7.f15582B0)).intValue();
                            Object obj3 = c2000sq2.f20994b;
                            if (i9 < iIntValue) {
                                C1385gw c1385gw = (C1385gw) obj3;
                                c1385gw.getClass();
                                try {
                                    c1385gw.f19025a.T();
                                    return;
                                } catch (Throwable th) {
                                    throw new C1075aw(th);
                                }
                            }
                            C1385gw c1385gw2 = (C1385gw) obj3;
                            c1385gw2.getClass();
                            try {
                                c1385gw2.f19025a.O0(new R3.b(context));
                                return;
                            } catch (Throwable th2) {
                                throw new C1075aw(th2);
                            }
                        } catch (C1075aw e8) {
                            p120p3.h.f("Cannot show interstitial.");
                            throw new C1322fl(e8.getCause());
                        }
                        p120p3.h.f("Cannot show interstitial.");
                        throw new C1322fl(e8.getCause());
                    }
                }, (Object) null));
                ((C0689Cj) c0836MgC.f14750V.zzb()).Y0(new C1680mh((C1385gw) c2000sq.f20994b), (Executor) this.f16538e);
                ((Nq) c2000sq.f20995c).A3(new Mr((C1734nj) c0836MgC.f14765k0.zzb(), (C0855Nk) c0836MgC.f14768n0.zzb(), (C2357zj) c0836MgC.f14761g0.zzb(), (C0734Fj) c0836MgC.f14764j0.zzb(), (C0764Hj) c0836MgC.f14769o0.zzb(), (C1527jk) c0836MgC.f14744P.f15002e1.zzb(), (C0896Qj) c0836MgC.f14771q0.zzb(), (C0953Uk) c0836MgC.f14772r0.zzb(), (C1425hk) c0836MgC.f14773s0.zzb(), (C2201wj) c0836MgC.f14775u0.zzb()));
                return c0836MgC.G0();
            default:
                if (!((Yv) tv.f16754a.f17529H).f17680g.contains(Integer.toString(6))) {
                    throw new C1898qr(2, "Unified must be used for RTB.");
                }
                C0781Il c0781IlS = C0781Il.S((InterfaceC1830pb) this.f16538e);
                Yv yv = (Yv) tv.f16754a.f17529H;
                if (!yv.f17680g.contains(Integer.toString(c0781IlS.D()))) {
                    throw new C1898qr(1, "No corresponding native ad listener");
                }
                C2094ug c2094ug = (C2094ug) obj2;
                p004a3.b bVar = new p004a3.b(tv, ov, c2000sq.f20993a);
                C0864Of c0864Of = new C0864Of(c0781IlS, 10);
                p004a3.b bVar2 = new p004a3.b((C1622lb) null, (C1570kb) null, (InterfaceC1830pb) this.f16538e);
                C2094ug c2094ug2 = c2094ug.f21290c;
                C0688Ci c0688Ci = new C0688Ci(bVar);
                MJ mj = c2094ug2.f21338w;
                C0671Bg c0671Bg = c2094ug.f21287b;
                Bw bw = c0671Bg.f12447j0;
                MJ mjB = HJ.b(new C0788Jd(mj, c0688Ci, 23, 0));
                MJ mjP = AbstractC2090uc.p(mjB, 22, 0);
                int i9 = NJ.f14896c;
                ArrayList arrayList = new ArrayList(1);
                ArrayList arrayList2 = new ArrayList(2);
                arrayList2.add(c2094ug2.f21345z0);
                arrayList2.add(c2094ug2.f21233A0);
                arrayList.add(mjP);
                MJ mjB2 = p148t.a.b(new NJ(arrayList, arrayList2), 2);
                MJ mjB3 = HJ.b(AbstractC1717nH.f20139p0);
                MJ mjB4 = HJ.b(new C0788Jd(mjB3, c0671Bg.f12434d, 16));
                C0733Fi c0733Fi = new C0733Fi(bVar);
                C0718Ei c0718Ei = new C0718Ei(bVar);
                C1523jg c1523jg = c0671Bg.f12442h;
                MJ mjB5 = HJ.b(new C1892ql(c1523jg, c0671Bg.f12420R, HJ.b(new C0843Mn(c1523jg, 18, obj)), HJ.b(AbstractC1270el.f18563h), Cw.f12717a, c0671Bg.f12421S, c0671Bg.f12436e, 1));
                MJ mj2 = c2094ug2.f21296e;
                MJ mjB6 = HJ.b(new C1892ql(c0671Bg.f12408F, c0671Bg.f12409G, c0688Ci, c0718Ei, mjB5, mj2, 11));
                int i10 = 0;
                C2202wk c2202wk = new C2202wk(12, i10);
                C2202wk c2202wk2 = new C2202wk(10, i10);
                MJ mj3 = c2094ug2.f21296e;
                MJ mjB7 = HJ.b(new C2147vh(c1523jg, c0671Bg.f12434d, c0671Bg.f12436e, c0733Fi, c0688Ci, c2094ug2.f21335u0, mjB6, c2202wk, c2202wk2, c0671Bg.f12406D, c2094ug2.f21337v0, mj3, c2094ug2.f21241E0));
                C0778Ii c0778Ii = new C0778Ii(mjB7, 11);
                C0778Ii c0778Ii2 = new C0778Ii(HJ.b(new C0788Jd(c0688Ci, c0671Bg.f12418P, 2)), 28);
                ArrayList arrayList3 = new ArrayList(4);
                ArrayList arrayList4 = new ArrayList(2);
                arrayList3.add(c2094ug2.f21235B0);
                arrayList4.add(c2094ug2.f21237C0);
                arrayList4.add(c2094ug2.f21239D0);
                arrayList3.add(mjB4);
                arrayList3.add(c0778Ii);
                arrayList3.add(c0778Ii2);
                MJ mjB8 = p148t.a.b(new NJ(arrayList3, arrayList4), 3);
                C1523jg c1523jg2 = c0671Bg.f12442h;
                C2202wk c2202wk3 = AbstractC1270el.f18558c;
                MJ mjB9 = HJ.b(new C2361zn(c1523jg2, c0671Bg.f12433c0, c0671Bg.f12469y, c0733Fi, c0688Ci, c0671Bg.f12408F, c2202wk3, 0));
                MJ mjO = AbstractC2090uc.o(mjB9, 20);
                MJ mjB10 = HJ.b(new C0788Jd(mjB3, c0671Bg.f12434d, 15));
                MJ mjO2 = AbstractC2090uc.o(HJ.b(new C0788Jd(c0671Bg.f12427Y, c2094ug2.f21293d, 13)), 18);
                C0778Ii c0778Ii3 = new C0778Ii(mjB7, 10);
                ArrayList arrayList5 = new ArrayList(5);
                ArrayList arrayList6 = new ArrayList(3);
                arrayList5.add(c2094ug2.f21243F0);
                arrayList5.add(c2094ug2.f21245G0);
                arrayList6.add(c2094ug2.f21247H0);
                arrayList6.add(c2094ug2.f21249I0);
                arrayList5.add(mjO);
                arrayList5.add(mjB10);
                arrayList6.add(mjO2);
                arrayList5.add(c0778Ii3);
                MJ mjB11 = p148t.a.b(new NJ(arrayList5, arrayList6), 0);
                MJ mjO3 = AbstractC2090uc.o(mjB9, 21);
                MJ mjR = AbstractC2090uc.r(mjB3, c0671Bg.f12434d, 18);
                MJ mjB12 = HJ.b(new C0788Jd(mjB3, c0671Bg.f12434d, 21));
                MJ mjB13 = HJ.b(AbstractC1270el.f18561f);
                C1064al c1064al = new C1064al(mjB13, 9, (Object) null);
                ArrayList arrayList7 = new ArrayList(2);
                ArrayList arrayList8 = new ArrayList(1);
                arrayList8.add(c2094ug2.f21259N0);
                arrayList7.add(mjB12);
                arrayList7.add(c1064al);
                C1731ng c1731ng = new C1731ng(HJ.b(new C0788Jd(new NJ(arrayList7, arrayList8), c0688Ci, 24)), 29, 0);
                C0778Ii c0778Ii4 = new C0778Ii(mjB7, 13);
                ArrayList arrayList9 = new ArrayList(6);
                ArrayList arrayList10 = new ArrayList(2);
                arrayList9.add(c2094ug2.f21251J0);
                arrayList9.add(c2094ug2.f21253K0);
                arrayList10.add(c2094ug2.f21255L0);
                arrayList10.add(c2094ug2.f21257M0);
                arrayList9.add(mjO3);
                arrayList9.add(mjR);
                arrayList9.add(c1731ng);
                arrayList9.add(c0778Ii4);
                MJ mjB14 = p148t.a.b(new NJ(arrayList9, arrayList10), 1);
                C0778Ii c0778Ii5 = new C0778Ii(mjB7, 15);
                ArrayList arrayList11 = new ArrayList(1);
                ArrayList arrayList12 = new ArrayList(1);
                arrayList12.add(c2094ug2.f21261O0);
                arrayList11.add(c0778Ii5);
                MJ mjB15 = p148t.a.b(new NJ(arrayList11, arrayList12), 14);
                C0778Ii c0778Ii6 = new C0778Ii(HJ.b(new C0788Jd(c0688Ci, c0671Bg.f12409G, 25)), 9);
                ArrayList arrayList13 = new ArrayList(1);
                new ArrayList(1).add(c2094ug2.f21263P0);
                arrayList13.add(c0778Ii6);
                MJ mjR2 = AbstractC2090uc.r(mjB3, c0671Bg.f12434d, 22);
                ArrayList arrayList14 = new ArrayList(1);
                ArrayList arrayList15 = new ArrayList(1);
                arrayList15.add(c2094ug2.f21265Q0);
                arrayList14.add(mjR2);
                MJ mjB16 = p148t.a.b(new NJ(arrayList14, arrayList15), 15);
                MJ mjP2 = AbstractC2090uc.p(mjB, 23, 0);
                C0778Ii c0778Ii7 = new C0778Ii(mjB7, 14);
                ArrayList arrayList16 = new ArrayList(6);
                ArrayList arrayList17 = new ArrayList(4);
                arrayList16.add(c2094ug2.f21267R0);
                arrayList17.add(c2094ug2.f21269S0);
                arrayList16.add(c2094ug2.f21271T0);
                arrayList16.add(c2094ug2.f21273U0);
                arrayList17.add(c2094ug2.f21275V0);
                arrayList17.add(c2094ug2.f21277W0);
                arrayList17.add(c2094ug2.f21279X0);
                arrayList16.add(c2094ug2.f21281Y0);
                arrayList16.add(mjP2);
                arrayList16.add(c0778Ii7);
                MJ mjB17 = p148t.a.b(new NJ(arrayList16, arrayList17), 4);
                C0778Ii c0778Ii8 = new C0778Ii(HJ.b(new C1731ng(mjB8, 28, (Object) null)), 17, 0);
                MJ mjR3 = AbstractC2090uc.r(mjB3, c0671Bg.f12434d, 20);
                ArrayList arrayList18 = new ArrayList(2);
                ArrayList arrayList19 = new ArrayList(1);
                arrayList19.add(c2094ug2.f21292c1);
                arrayList18.add(c0778Ii8);
                arrayList18.add(mjR3);
                MJ mjB18 = p148t.a.b(new NJ(arrayList18, arrayList19), 7);
                C0884Pl c0884Pl = new C0884Pl(c0864Of);
                C1168cm c1168cm = new C1168cm(new C1025Zm(c0884Pl), c0671Bg.f12434d);
                ArrayList arrayList20 = new ArrayList(1);
                ArrayList arrayList21 = new ArrayList(1);
                arrayList21.add(c2094ug2.f21295d1);
                arrayList20.add(c1168cm);
                MJ mjB19 = p148t.a.b(new NJ(arrayList20, arrayList21), 19);
                MJ mjO4 = AbstractC2090uc.o(mjB9, 19);
                ArrayList arrayList22 = new ArrayList(1);
                List listEmptyList = Collections.emptyList();
                arrayList22.add(mjO4);
                MJ mjB20 = p148t.a.b(new NJ(arrayList22, listEmptyList), 9);
                MJ mjR4 = AbstractC2090uc.r(mjB3, c0671Bg.f12434d, 17);
                C0778Ii c0778Ii9 = new C0778Ii(mjB7, 12);
                ArrayList arrayList23 = new ArrayList(2);
                ArrayList arrayList24 = new ArrayList(1);
                arrayList24.add(c2094ug2.f21298e1);
                arrayList23.add(mjR4);
                arrayList23.add(c0778Ii9);
                C2253xj c2253xj = new C2253xj(new NJ(arrayList23, arrayList24));
                MJ mjO5 = AbstractC2090uc.o(mjB9, 16);
                ArrayList arrayList25 = new ArrayList(1);
                List listEmptyList2 = Collections.emptyList();
                arrayList25.add(mjO5);
                MJ mjB21 = HJ.b(new p167v3.E((IJ) c2253xj, (MJ) new NJ(arrayList25, listEmptyList2), c0671Bg.f12436e, 11));
                C0703Di c0703Di = new C0703Di(bVar);
                C1682mj c1682mj = new C1682mj(c0688Ci, c0703Di, c2094ug2.f21344z, c0718Ei, c2094ug2.f21299f);
                ArrayList arrayList26 = new ArrayList(1);
                ArrayList arrayList27 = new ArrayList(1);
                arrayList27.add(c2094ug2.f21304g1);
                arrayList26.add(c2094ug2.f21307h1);
                C0909Ri c0909Ri = new C0909Ri(c0733Fi, c0688Ci, mjB2, mjB17, c2094ug2.f21301f1, c1682mj, mjB3, new C0809Kj(new NJ(arrayList26, arrayList27)), mjB15);
                int i11 = 0;
                C1064al c1064al2 = new C1064al(HJ.b(new C1375gm(new C1427hm(bVar2), new C1478im(bVar2), new C1529jm(bVar2), mjB14, mjB11, mjB16, c2094ug2.f21338w, c0688Ci, c0671Bg.f12448k, c2094ug2.f21293d, 0)), 10, i11);
                MJ mjB22 = HJ.b(new C1064al(c0688Ci, 8));
                C2202wk c2202wk4 = new C2202wk(13, i11);
                C2202wk c2202wk5 = new C2202wk(14, i11);
                MJ mjB23 = HJ.b(new C1064al(new C2359zl(c0884Pl), 7));
                C0940Tl c0940Tl = new C0940Tl(c0671Bg.f12420R, c2094ug2.f21293d, mjB22, c0884Pl, c2202wk4, c2202wk5, c0671Bg.f12434d, mjB23);
                GJ gj = new GJ();
                MJ mjB24 = HJ.b(new p167v3.E((MJ) c0703Di, (MJ) gj, (MJ) c0884Pl, 15));
                MJ mjB25 = HJ.b(new p167v3.E((MJ) c0703Di, (MJ) gj, (MJ) c0884Pl, 14));
                MJ mjB26 = HJ.b(new C0762Hh(c0703Di, gj, c0884Pl, c0671Bg.f12469y, 11));
                MJ mjB27 = HJ.b(new C1168cm(gj, c0884Pl, 3));
                C1523jg c1523jg3 = c0671Bg.f12442h;
                MJ mjB28 = HJ.b(new C0762Hh((MJ) c1523jg3, (MJ) c0884Pl, (MJ) c0940Tl, (MJ) gj, 10));
                C0870Ol c0870Ol = new C0870Ol(c1523jg3, c2094ug2.f21293d);
                GJ.a(gj, HJ.b(new C0736Fl(c0909Ri, c0671Bg.f12434d, c0884Pl, c1064al2, c0940Tl, mjB22, c2094ug2.f21264Q, mjB24, mjB25, mjB26, mjB27, mjB28, c0870Ol, c0671Bg.f12406D, c0671Bg.f12448k, c1523jg3, mjB23, mjB13, c0671Bg.f12459p0)));
                ((Nq) c2000sq.f20995c).A3(new Ir((C1734nj) mjB11.zzb(), (C0855Nk) mjB16.zzb(), (C2357zj) mjB14.zzb(), (C0734Fj) mjB8.zzb(), (C0764Hj) mjB17.zzb(), (C1527jk) c2094ug2.f21289b1.zzb(), (C0896Qj) mjB18.zzb(), (C0953Uk) mjB19.zzb(), (C1425hk) mjB20.zzb(), (C2201wj) mjB21.zzb()));
                return (C0721El) gj.zzb();
        }
    }

    public Sq(Context context, p120p3.a aVar, C0851Ng c0851Ng, C1936re c1936re) {
        this.f16535b = context;
        this.f16536c = aVar;
        this.f16537d = c0851Ng;
        this.f16538e = c1936re;
    }
}
