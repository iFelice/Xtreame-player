package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2302yg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22039a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0671Bg f22040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MJ f22041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final MJ f22042d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MJ f22043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f22044f;

    public C2302yg(C0671Bg c0671Bg, Ku ku) {
        this.f22040b = c0671Bg;
        this.f22044f = ku;
        this.f22041c = HJ.b(new Ou(c0671Bg.f12460q, 8));
        C1116bl c1116bl = new C1116bl(ku, 1);
        MJ mjB = HJ.b(AbstractC1270el.f18568m);
        MJ mjB2 = HJ.b(AbstractC1270el.f18567l);
        MJ mjB3 = HJ.b(AbstractC1270el.f18569n);
        MJ mjB4 = HJ.b(AbstractC1270el.f18570o);
        int i8 = KJ.f14324b;
        LinkedHashMap linkedHashMapG0 = Cw.G0(4);
        linkedHashMapG0.put(Iw.GMS_SIGNALS, mjB);
        linkedHashMapG0.put(Iw.BUILD_URL, mjB2);
        linkedHashMapG0.put(Iw.HTTP, mjB3);
        linkedHashMapG0.put(Iw.PRE_PROCESS, mjB4);
        MJ mjB5 = HJ.b(new p167v3.E((IJ) c1116bl, (MJ) c0671Bg.f12442h, (MJ) new KJ(linkedHashMapG0), 17));
        int i9 = NJ.f14896c;
        List listEmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(mjB5);
        Mw mw = new Mw(new NJ(listEmptyList, arrayList));
        this.f22042d = mw;
        this.f22043e = HJ.b(new C2263xt(c0671Bg.f12436e, (IJ) mw, 20));
    }

    public final C2160vu a() {
        int i8 = this.f22039a;
        Object obj = this.f22044f;
        C0671Bg c0671Bg = this.f22040b;
        switch (i8) {
            case 0:
                Context context = c0671Bg.f12430b.f19118b;
                Cw.N0(context);
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                Cw.N0(((Pu) obj).f15498a.f14168L);
                Wt wt = new Wt();
                ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) c0671Bg.f12436e.zzb();
                Tw tw = (Tw) this.f22043e.zzb();
                C0738Fn c0738Fn = (C0738Fn) c0671Bg.f12469y.zzb();
                HashSet hashSet = new HashSet();
                hashSet.add(new Zt(wt, 0L, scheduledExecutorService));
                return new C2160vu(context, c1936re, hashSet, tw, c0738Fn);
            default:
                Context context2 = c0671Bg.f12430b.f19118b;
                Cw.N0(context2);
                Ku ku = (Ku) obj;
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                Cw.N0(ku.f14431a.f13759H);
                Wt wt2 = new Wt(0);
                MJ mj = c0671Bg.f12436e;
                Zt zt = new Zt(wt2, 0L, (ScheduledExecutorService) mj.zzb());
                ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) mj.zzb();
                C1421hg c1421hg = c0671Bg.f12430b;
                Cw.N0(c1421hg.f19118b);
                Zt zt2 = new Zt(new C2002ss(scheduledExecutorService2), ((Long) C3099q.f26624d.f26627c.a(Q7.f15712R3)).longValue(), (ScheduledExecutorService) mj.zzb());
                C2272y1 c2272y1 = new C2272y1();
                Context context3 = c1421hg.f19118b;
                Cw.N0(context3);
                ScheduledExecutorService scheduledExecutorService3 = (ScheduledExecutorService) mj.zzb();
                C0757Hc c0757Hc = ku.f14431a;
                Zt zt3 = new Zt(new Ju(c2272y1, context3, scheduledExecutorService3, c1936re2, ku.f14432b, c0757Hc.f13766O, c0757Hc.f13765N), 0L, (ScheduledExecutorService) mj.zzb());
                Zt zt4 = new Zt(new Mu(c1936re2, 0), 0L, (ScheduledExecutorService) mj.zzb());
                Wt wt3 = new Wt(2);
                Cw.N0(context3);
                Mu mu = new Mu(c1936re2);
                List list = c0757Hc.f13764M;
                Cw.N0(list);
                C2366zs c2366zs = new C2366zs(c1936re2, list);
                String str = c0757Hc.f13761J;
                Cw.N0(str);
                PackageInfo packageInfo = c0757Hc.f13760I;
                C2366zs c2366zs2 = new C2366zs(c1936re2, str);
                Cw.N0(context3);
                MJ mj2 = c0671Bg.f12417O;
                C1625le c1625le = (C1625le) mj2.zzb();
                ScheduledExecutorService scheduledExecutorService4 = (ScheduledExecutorService) mj.zzb();
                Cw.N0(c0757Hc.f13759H);
                Fs fs = new Fs(c1625le, scheduledExecutorService4, c1936re2);
                InterfaceC2108uu interfaceC2108uu = (InterfaceC2108uu) c0671Bg.f12461q0.zzb();
                Cw.N0(c0757Hc.f13759H);
                return new C2160vu(context2, c1936re2, AbstractC2333zA.t(zt, zt2, zt3, zt4, wt3, mu, c2366zs, c2366zs2, fs, interfaceC2108uu, new Fs((C1625le) mj2.zzb(), (ScheduledExecutorService) mj.zzb(), c1936re2, 0)), (Tw) this.f22041c.zzb(), (C0738Fn) c0671Bg.f12469y.zzb());
        }
    }

    public C2302yg(C0671Bg c0671Bg, Pu pu) {
        this.f22040b = c0671Bg;
        this.f22044f = pu;
        C1116bl c1116bl = new C1116bl(pu, 2);
        this.f22041c = c1116bl;
        MJ mjB = HJ.b(AbstractC1270el.f18568m);
        MJ mjB2 = HJ.b(AbstractC1270el.f18567l);
        MJ mjB3 = HJ.b(AbstractC1270el.f18569n);
        MJ mjB4 = HJ.b(AbstractC1270el.f18570o);
        int i8 = KJ.f14324b;
        LinkedHashMap linkedHashMapG0 = Cw.G0(4);
        linkedHashMapG0.put(Iw.GMS_SIGNALS, mjB);
        linkedHashMapG0.put(Iw.BUILD_URL, mjB2);
        linkedHashMapG0.put(Iw.HTTP, mjB3);
        linkedHashMapG0.put(Iw.PRE_PROCESS, mjB4);
        MJ mjB5 = HJ.b(new p167v3.E((IJ) c1116bl, (MJ) c0671Bg.f12442h, (MJ) new KJ(linkedHashMapG0), 17));
        int i9 = NJ.f14896c;
        List listEmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(mjB5);
        this.f22042d = HJ.b(new C2263xt(c0671Bg.f12436e, (IJ) new Mw(new NJ(listEmptyList, arrayList)), 20));
        this.f22043e = HJ.b(new Ou(c0671Bg.f12460q, 8));
    }
}
