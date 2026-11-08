package com.google.android.gms.ads.internal;

import R3.a;
import R3.b;
import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.AbstractC1270el;
import com.google.android.gms.internal.ads.AbstractC1317fg;
import com.google.android.gms.internal.ads.AbstractC1717nH;
import com.google.android.gms.internal.ads.BinderC1225ds;
import com.google.android.gms.internal.ads.BinderC1228dv;
import com.google.android.gms.internal.ads.BinderC1329fs;
import com.google.android.gms.internal.ads.BinderC1431hq;
import com.google.android.gms.internal.ads.BinderC1587ks;
import com.google.android.gms.internal.ads.BinderC2258xo;
import com.google.android.gms.internal.ads.C0671Bg;
import com.google.android.gms.internal.ads.C0731Fg;
import com.google.android.gms.internal.ads.C0738Fn;
import com.google.android.gms.internal.ads.C0791Jg;
import com.google.android.gms.internal.ads.C0843Mn;
import com.google.android.gms.internal.ads.C1332fv;
import com.google.android.gms.internal.ads.C1433hs;
import com.google.android.gms.internal.ads.C1892ql;
import com.google.android.gms.internal.ads.C1938rg;
import com.google.android.gms.internal.ads.C2265xv;
import com.google.android.gms.internal.ads.C2361zn;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.HJ;
import com.google.android.gms.internal.ads.InterfaceC1016Zd;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1210dc;
import com.google.android.gms.internal.ads.InterfaceC1519jc;
import com.google.android.gms.internal.ads.InterfaceC1884qd;
import com.google.android.gms.internal.ads.JJ;
import com.google.android.gms.internal.ads.Lv;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.Ou;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.ViewTreeObserverOnGlobalLayoutListenerC0912Rl;
import com.google.android.gms.internal.ads.X8;
import p083k3.k;
import p090l3.C3099q;
import p090l3.F;
import p090l3.InterfaceC3105t0;
import p090l3.J;
import p090l3.P0;
import p090l3.W;
import p090l3.d1;
import p105n3.d;
import p167v3.j;

/* JADX INFO: loaded from: classes.dex */
public class ClientApi extends W {
    public ClientApi() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // p090l3.X
    public final J J2(a aVar, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        Context context = (Context) b.v0(aVar);
        C0671Bg c0671BgB = AbstractC1317fg.b(context, interfaceC1157cb, i8);
        context.getClass();
        d1Var.getClass();
        str.getClass();
        JJ jjA = JJ.a(context);
        JJ jjA2 = JJ.a(d1Var);
        C0671Bg c0671Bg = c0671BgB.f12432c;
        MJ mjB = HJ.b(new C0843Mn(c0671Bg.f12469y, 20, (Object) null));
        C1332fv c1332fv = (C1332fv) HJ.b(new C2361zn(jjA, c0671Bg.f12434d, jjA2, c0671Bg.f12404B, mjB, HJ.b(AbstractC1270el.f18576u), HJ.b(AbstractC1717nH.f20141q0))).zzb();
        C1433hs c1433hs = (C1433hs) mjB.zzb();
        p120p3.a aVar2 = c0671Bg.f12430b.f19117a;
        Cw.N0(aVar2);
        return new BinderC1329fs(context, d1Var, str, c1332fv, c1433hs, aVar2, (C0738Fn) c0671Bg.f12469y.zzb());
    }

    @Override // p090l3.X
    public final X8 K0(a aVar, a aVar2) {
        return new ViewTreeObserverOnGlobalLayoutListenerC0912Rl((FrameLayout) b.v0(aVar), (FrameLayout) b.v0(aVar2));
    }

    @Override // p090l3.X
    public final F M2(a aVar, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        Context context = (Context) b.v0(aVar);
        return new BinderC1225ds(AbstractC1317fg.b(context, interfaceC1157cb, i8), context, str);
    }

    @Override // p090l3.X
    public final J Y2(a aVar, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        Context context = (Context) b.v0(aVar);
        C0671Bg c0671BgB = AbstractC1317fg.b(context, interfaceC1157cb, i8);
        str.getClass();
        context.getClass();
        JJ jjA = JJ.a(context);
        JJ jjA2 = JJ.a(str);
        C0671Bg c0671Bg = c0671BgB.f12432c;
        MJ mj = c0671Bg.f12453m0;
        C2265xv c2265xv = new C2265xv(jjA, mj, c0671Bg.f12455n0);
        MJ mjB = HJ.b(new Ou(mj, 2));
        JJ jj = c0671Bg.f12404B;
        C1938rg c1938rg = c0671Bg.f12448k;
        return i8 >= ((Integer) C3099q.f26624d.f26627c.a(Q7.f15721S4)).intValue() ? (BinderC1228dv) HJ.b(new C2361zn(jj, jjA, jjA2, HJ.b(new C1892ql((MJ) jjA, c0671Bg.f12434d, jj, (MJ) c2265xv, mjB, (MJ) c1938rg, 9)), mjB, c1938rg, c0671Bg.f12469y, 2)).zzb() : new P0();
    }

    @Override // p090l3.X
    public final J Z1(a aVar, d1 d1Var, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        Context context = (Context) b.v0(aVar);
        C0791Jg c0791Jg = new C0791Jg(AbstractC1317fg.b(context, interfaceC1157cb, i8).f12432c);
        context.getClass();
        c0791Jg.f14179b = context;
        d1Var.getClass();
        c0791Jg.f14181d = d1Var;
        str.getClass();
        c0791Jg.f14180c = str;
        return (BinderC1587ks) ((MJ) c0791Jg.a().f26616h).zzb();
    }

    @Override // p090l3.X
    public final InterfaceC1884qd e0(a aVar, String str, InterfaceC1157cb interfaceC1157cb, int i8) {
        Context context = (Context) b.v0(aVar);
        C0731Fg c0731Fg = new C0731Fg(AbstractC1317fg.b(context, interfaceC1157cb, i8).f12432c);
        context.getClass();
        c0731Fg.f13386b = context;
        c0731Fg.f13387c = str;
        return (Lv) ((MJ) c0731Fg.a().f14919i).zzb();
    }

    @Override // p090l3.X
    public final J e2(a aVar, d1 d1Var, String str, int i8) {
        return new k((Context) b.v0(aVar), d1Var, str, new p120p3.a(243220000, i8, true, false));
    }

    @Override // p090l3.X
    public final InterfaceC3105t0 g3(a aVar, InterfaceC1157cb interfaceC1157cb, int i8) {
        return (BinderC2258xo) AbstractC1317fg.b((Context) b.v0(aVar), interfaceC1157cb, i8).f12465u.zzb();
    }

    @Override // p090l3.X
    public final InterfaceC1016Zd t3(a aVar, InterfaceC1157cb interfaceC1157cb, int i8) {
        return (j) AbstractC1317fg.b((Context) b.v0(aVar), interfaceC1157cb, i8).f12413K.zzb();
    }

    @Override // p090l3.X
    public final InterfaceC1210dc x1(a aVar, InterfaceC1157cb interfaceC1157cb, int i8) {
        return (BinderC1431hq) AbstractC1317fg.b((Context) b.v0(aVar), interfaceC1157cb, i8).f12410H.zzb();
    }

    @Override // p090l3.X
    public final InterfaceC1519jc y(a aVar) {
        Activity activity = (Activity) b.v0(aVar);
        AdOverlayInfoParcel adOverlayInfoParcelI = AdOverlayInfoParcel.i(activity.getIntent());
        int i8 = 4;
        if (adOverlayInfoParcelI == null) {
            return new d(activity, i8);
        }
        int i9 = 3;
        int i10 = 1;
        int i11 = adOverlayInfoParcelI.f11647Q;
        if (i11 == 1) {
            return new d(activity, i9);
        }
        int i12 = 2;
        if (i11 == 2) {
            return new d(activity, i10);
        }
        if (i11 == 3) {
            return new d(activity, i12);
        }
        if (i11 != 4) {
            return i11 != 5 ? new d(activity, i8) : new d(activity, 0);
        }
        return new p105n3.b(activity, adOverlayInfoParcelI);
    }
}
