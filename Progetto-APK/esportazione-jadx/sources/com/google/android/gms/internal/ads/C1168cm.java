package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.api.Service;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1168cm implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f18238c;

    public C1168cm(C1025Zm c1025Zm, MJ mj) {
        this.f18236a = 1;
        this.f18237b = c1025Zm;
        this.f18238c = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f18236a;
        int i9 = 0;
        QJ qj = this.f18238c;
        QJ qj2 = this.f18237b;
        switch (i8) {
            case 0:
                return new C1117bm((C1428hn) qj2.zzb(), C2255xl.a(((C2255xl) qj).f21922a));
            case 1:
                return new C0825Lk(new C1011Ym(C0884Pl.a(((C0884Pl) ((C1025Zm) qj2).f17798a).f15466a)), (Executor) qj.zzb());
            case 2:
                p113o3.v vVar = (p113o3.v) qj2.zzb();
                P3.a aVar = (P3.a) qj.zzb();
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C1685mm(vVar, aVar, c1936re);
            case 3:
                C0721El c0721El = (C0721El) qj2.zzb();
                C0781Il c0781IlA = C0884Pl.a(((C0884Pl) qj).f15466a);
                ViewTreeObserverOnGlobalLayoutListenerC0752Gm viewTreeObserverOnGlobalLayoutListenerC0752Gm = new ViewTreeObserverOnGlobalLayoutListenerC0752Gm("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
                viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13628G = c0781IlA.G();
                viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13629H = c0781IlA.J();
                viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13630I = c0721El;
                viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13631J = false;
                viewTreeObserverOnGlobalLayoutListenerC0752Gm.f13632K = false;
                if (c0781IlA.R() != null) {
                    c0781IlA.R().I0(viewTreeObserverOnGlobalLayoutListenerC0752Gm);
                }
                return viewTreeObserverOnGlobalLayoutListenerC0752Gm;
            case 4:
                return new C1066an((C0734Fj) qj2.zzb(), C0688Ci.a(((C0688Ci) qj).f12681a));
            case 5:
                return new C1894qn(C1281ew.a(((C1523jg) ((C1019Zg) qj2).f17786a).a()), (C1842pn) qj.zzb());
            case 6:
                return new C2049tn((C2173w6) qj2.zzb(), (C2369zv) qj.zzb());
            case 7:
                return new C0663An((C0693Cn) qj2.zzb(), (C0783In) qj.zzb());
            case 8:
                return new C0813Kn((String) qj2.zzb(), (C0783In) qj.zzb());
            case 9:
                return new C0872On((C0828Ln) qj2.zzb(), (AbstractC1317fg) qj.zzb());
            case 10:
                return new BinderC0928Sn((C0821Lg) qj2.zzb(), new C0900Qn((Z9) ((C0914Rn) qj).f16362a.zzb()));
            case 11:
                return new C1635lo((C1273eo) qj2.zzb(), (C1842pn) qj.zzb());
            case 12:
                return new C1998so(((C1523jg) qj2).a(), ((C1938rg) qj).a());
            case 13:
                H4 h8 = (H4) qj2.zzb();
                Context contextA = ((C1523jg) qj).a();
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                D4.b bVarB = c1936re2.b(new CallableC1497j5(5, h8, contextA));
                Cw.N0(bVarB);
                return bVarB;
            case 14:
                Kw kw = (Kw) qj2.zzb();
                p083k3.l.f25980A.f25985e.getClass();
                C1950rs c1950rs = new C1950rs(kw, Iw.WEBVIEW_COOKIE, null, Gw.f13664d, Collections.emptyList(), Cw.e2(((IB) kw.f13665a).b(new CallableC1419he(F2.G.L(), 3)), 1L, TimeUnit.SECONDS, kw.f13666b));
                return new C1950rs((Gw) c1950rs.f20800L, c1950rs.f20796H, (String) c1950rs.f20797I, (D4.b) c1950rs.f20795G, (List) c1950rs.f20798J, Cw.D1((D4.b) c1950rs.f20799K, Exception.class, new C1422hh(22, i9), ((Gw) c1950rs.f20800L).f13665a)).c();
            case 15:
                try {
                    return Q3.c.a((Context) qj2.zzb()).c(0, ((C0754Go) qj).zzb().packageName);
                } catch (PackageManager.NameNotFoundException unused) {
                    return null;
                }
            case 16:
                return new Tp(((Xp) qj2).zzb(), ((C1472ig) qj).zzb());
            case 17:
                Context context = (Context) qj2.zzb();
                AbstractC0747Gh abstractC0747Gh = (AbstractC0747Gh) qj.zzb();
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new Aq(context, abstractC0747Gh, c1936re3, i9);
            case 18:
                return new C2366zs(i9, (P3.a) qj2.zzb(), ((C1526jj) qj).a());
            case 19:
                D4.b bVar = (D4.b) qj2.zzb();
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                return new Fs(bVar, c1936re4, (ScheduledExecutorService) qj.zzb());
            case 20:
                C1692mt c1692mt = (C1692mt) qj2;
                c1692mt.getClass();
                C1936re c1936re5 = AbstractC1988se.f20906a;
                Cw.N0(c1936re5);
                return new C1951rt(new C1588kt(((C1523jg) c1692mt.f20015a).a(), c1936re5), 10000L, (P3.a) qj.zzb());
            case 21:
                Context contextA2 = ((C1523jg) ((C2368zu) qj2).f22228a).a();
                C1936re c1936re6 = AbstractC1988se.f20906a;
                Cw.N0(c1936re6);
                return new C1951rt(new C2264xu(contextA2, c1936re6), 2147483647L, (P3.a) qj.zzb());
            case 22:
                Cu cu = (Cu) qj2;
                cu.getClass();
                C1936re c1936re7 = AbstractC1988se.f20906a;
                Cw.N0(c1936re7);
                return new C1951rt(new Bu(((C1523jg) cu.f12714a).a(), c1936re7), ((Long) AbstractC1500j8.f19433a.l()).longValue(), (P3.a) qj.zzb());
            case 23:
                Ds ds = (Ds) qj2;
                ds.getClass();
                C1936re c1936re8 = AbstractC1988se.f20906a;
                Cw.N0(c1936re8);
                Yv yvA = ((C1526jj) ds.f12888a).a();
                return new Zt(new Bs(c1936re8, yvA), ((Integer) C3099q.f26624d.f26627c.a(Q7.Fb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 24:
                return new Zt(((Is) qj2).zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.Eb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 25:
                return new Zt(((Os) qj2).zzb(), ((Integer) C3099q.f26624d.f26627c.a(Q7.Gb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                Rs rs = (Rs) qj2;
                rs.getClass();
                C1936re c1936re9 = AbstractC1988se.f20906a;
                Cw.N0(c1936re9);
                return new Zt(new Ps(((C1523jg) rs.f16369a).a(), c1936re9), ((Integer) C3099q.f26624d.f26627c.a(Q7.Ob)).intValue(), (ScheduledExecutorService) qj.zzb());
            case 27:
                Vs vs = (Vs) qj2;
                vs.getClass();
                C1936re c1936re10 = AbstractC1988se.f20906a;
                Cw.N0(c1936re10);
                return new Zt(new Us(c1936re10, (C1625le) vs.f17123a.zzb()), ((Integer) C3099q.f26624d.f26627c.a(Q7.tb)).intValue(), (ScheduledExecutorService) qj.zzb());
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                p120p3.a aVarA = ((C1938rg) ((C1226dt) qj2).f18374a).a();
                C1936re c1936re11 = AbstractC1988se.f20906a;
                Cw.N0(c1936re11);
                return new Zt(new C1124bt(aVarA, c1936re11), ((Integer) C3099q.f26624d.f26627c.a(Q7.Db)).intValue(), (ScheduledExecutorService) qj.zzb());
            default:
                C1382gt c1382gt = (C1382gt) qj2;
                c1382gt.getClass();
                C1936re c1936re12 = AbstractC1988se.f20906a;
                Cw.N0(c1936re12);
                return new Zt(new C1278et(((C1523jg) c1382gt.f19017a).a(), c1936re12), ((Integer) C3099q.f26624d.f26627c.a(Q7.Cb)).intValue(), (ScheduledExecutorService) qj.zzb());
        }
    }

    public C1168cm(MJ mj, MJ mj2) {
        this.f18236a = 19;
        this.f18237b = mj;
        this.f18238c = mj2;
    }

    public /* synthetic */ C1168cm(MJ mj, MJ mj2, int i8) {
        this.f18236a = i8;
        this.f18237b = mj;
        this.f18238c = mj2;
    }

    public /* synthetic */ C1168cm(MJ mj, MJ mj2, int i8, int i9) {
        this.f18236a = i8;
        this.f18237b = mj;
        this.f18238c = mj2;
    }
}
