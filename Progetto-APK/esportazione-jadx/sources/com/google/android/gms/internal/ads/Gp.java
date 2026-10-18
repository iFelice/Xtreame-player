package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3099q;
import p167v3.CallableC3196d;

/* JADX INFO: loaded from: classes.dex */
public final class Gp extends AbstractBinderC2328z5 implements InterfaceC0817Lc {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f13636G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f13637H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Mp f13638I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final InterfaceC1060ah f13639J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ArrayDeque f13640K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Uw f13641L;

    public Gp(Context context, C1936re c1936re, C2272y1 c2272y1, AbstractC1317fg abstractC1317fg, Mp mp, ArrayDeque arrayDeque, Uw uw) {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
        Q7.a(context);
        this.f13636G = context;
        this.f13637H = c1936re;
        this.f13638I = mp;
        this.f13639J = abstractC1317fg;
        this.f13640K = arrayDeque;
        this.f13641L = uw;
    }

    public static Fw E3(Fw fw, Kw kw, C0887Qa c0887Qa, Tw tw, Ow ow) {
        C0915Sa c0915SaA = c0887Qa.a("AFMA_getAdDictionary", AbstractC0873Pa.f15389b, new C0621y(10));
        com.google.android.gms.internal.measurement.H1.L(fw, ow);
        Fw fwC = kw.b(fw, Iw.BUILD_URL).m(c0915SaA).c();
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            Cw.h2(AbstractC1040aC.r(fwC), new C0871Om(17, tw, ow), AbstractC1988se.f20911f);
        }
        return fwC;
    }

    public static Fw F3(C0973Wc c0973Wc, Kw kw, C2146vg c2146vg) {
        C0957Va c0957Va = new C0957Va(10, c2146vg, c0973Wc);
        return kw.b(Cw.N1(c0973Wc.f17250G), Iw.GMS_SIGNALS).m(c0957Va).k(new C0621y(9)).c();
    }

    public static void H3(D4.b bVar, InterfaceC0903Rc interfaceC0903Rc, C0973Wc c0973Wc) {
        Cw.h2(Cw.d2(bVar, new C1422hh(12, 0), AbstractC1988se.f20906a), new C0871Om(c0973Wc, interfaceC0903Rc), AbstractC1988se.f20911f);
    }

    public final Fw A3(C0973Wc c0973Wc, int i8) {
        Ep epD3;
        boolean z7;
        Fw fwC;
        C2246xc c2246xc = p083k3.l.f25980A.f25996p;
        p120p3.a aVarI = p120p3.a.i();
        Context context = this.f13636G;
        C0887Qa c0887QaN = c2246xc.n(context, aVarI, this.f13641L);
        C2146vg c2146vgC = ((AbstractC1317fg) this.f13639J).c(c0973Wc, i8);
        C0915Sa c0915SaA = c0887QaN.a("google.afma.response.normalize", Fp.f13417d, AbstractC0873Pa.f15390c);
        if (((Boolean) AbstractC2279y8.f21995a.l()).booleanValue()) {
            epD3 = D3(c0973Wc.f17257N);
            if (epD3 == null) {
                p113o3.I.k("Request contained a PoolKey but no matching parameters were found.");
            }
        } else {
            String str = c0973Wc.f17259P;
            epD3 = null;
            if (str != null && !str.isEmpty()) {
                p113o3.I.k("Request contained a PoolKey but split request is disabled.");
            }
        }
        Ow owH = epD3 == null ? U4.a.h(context, 9) : epD3.f13221d;
        Tw tw = (Tw) c2146vgC.f21551c.zzb();
        tw.d(c0973Wc.f17250G.getStringArrayList("ad_types"));
        Lp lp = new Lp(c0973Wc.f17256M, tw, owH);
        C0871Om c0871Om = new C0871Om(context, c0973Wc.f17251H.f28196G);
        Kw kw = (Kw) c2146vgC.f21560l.zzb();
        Ow owH2 = U4.a.h(context, 11);
        Iw iw = Iw.PRE_PROCESS;
        Iw iw2 = Iw.HTTP;
        if (epD3 == null) {
            Fw fwF3 = F3(c0973Wc, kw, c2146vgC);
            Fw fwE3 = E3(fwF3, kw, c0887QaN, tw, owH);
            Ow owH3 = U4.a.h(context, 10);
            Fw fwC2 = kw.a(iw2, fwE3, fwF3).m(new CallableC3196d(fwE3, c0973Wc, fwF3, 10)).k(lp).k(new Rw(owH3)).k(c0871Om).c();
            com.google.android.gms.internal.measurement.H1.N(fwC2, tw, owH3, false);
            com.google.android.gms.internal.measurement.H1.L(fwC2, owH2);
            fwC = kw.a(iw, fwF3, fwE3, fwC2).m(new CallableC0808Ki(c0973Wc, fwC2, fwF3, fwE3, 1)).m(c0915SaA).c();
            z7 = false;
        } else {
            Kp kp = new Kp(epD3.f13219b, epD3.f13218a);
            Ow owH4 = U4.a.h(context, 10);
            Fw fwC3 = kw.b(Cw.N1(kp), iw2).k(lp).k(new Rw(owH4)).k(c0871Om).c();
            z7 = false;
            com.google.android.gms.internal.measurement.H1.N(fwC3, tw, owH4, false);
            C1298fC c1298fCN1 = Cw.N1(epD3);
            com.google.android.gms.internal.measurement.H1.L(fwC3, owH2);
            fwC = kw.a(iw, fwC3, c1298fCN1).m(new Ap(fwC3, c1298fCN1, 0)).m(c0915SaA).c();
        }
        com.google.android.gms.internal.measurement.H1.N(fwC, tw, owH2, z7);
        return fwC;
    }

    public final D4.b B3(C0973Wc c0973Wc, int i8) {
        C2246xc c2246xc = p083k3.l.f25980A.f25996p;
        p120p3.a aVarI = p120p3.a.i();
        Context context = this.f13636G;
        C0887Qa c0887QaN = c2246xc.n(context, aVarI, this.f13641L);
        if (!((Boolean) C8.f12584a.l()).booleanValue()) {
            return Cw.H1(new Exception("Signal collection disabled."));
        }
        C2146vg c2146vgC = ((AbstractC1317fg) this.f13639J).c(c0973Wc, i8);
        C0671Bg c0671Bg = c2146vgC.f21550b;
        Context context2 = c0671Bg.f12430b.f19118b;
        Cw.N0(context2);
        Object objZzb = c0671Bg.f12461q0.zzb();
        C2366zs c2366zsA = c2146vgC.a();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        List list = ((C0973Wc) c2146vgC.f21549a.f4295I).f17254K;
        Cw.N0(list);
        C2366zs c2366zs = new C2366zs(c1936re, list);
        EJ ejA = HJ.a(c2146vgC.f21552d);
        EJ ejA2 = HJ.a(c2146vgC.f21553e);
        EJ ejA3 = HJ.a(c2146vgC.f21554f);
        HJ.a(c2146vgC.f21555g);
        EJ ejA4 = HJ.a(c2146vgC.f21556h);
        EJ ejA5 = HJ.a(c2146vgC.f21557i);
        HJ.a(c2146vgC.f21558j);
        EJ ejA6 = HJ.a(c2146vgC.f21559k);
        Cw.N0(c1936re);
        MJ mj = c2146vgC.f21551c;
        Tw tw = (Tw) mj.zzb();
        C0738Fn c0738Fn = (C0738Fn) c0671Bg.f12469y.zzb();
        HashSet hashSet = new HashSet();
        hashSet.add((Nu) objZzb);
        hashSet.add(c2366zsA);
        hashSet.add(c2366zs);
        J7 j8 = Q7.f15897n5;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            hashSet.add((InterfaceC2108uu) ejA.zzb());
        }
        J7 j9 = Q7.f15904o5;
        O7 o7 = c3099q.f26627c;
        if (((Boolean) o7.a(j9)).booleanValue()) {
            hashSet.add((InterfaceC2108uu) ejA2.zzb());
        }
        if (((Boolean) o7.a(Q7.f15912p5)).booleanValue()) {
            hashSet.add((InterfaceC2108uu) ejA3.zzb());
        }
        if (((Boolean) o7.a(Q7.f15928r5)).booleanValue()) {
            hashSet.add((InterfaceC2108uu) ejA4.zzb());
        }
        if (((Boolean) o7.a(Q7.f15936s5)).booleanValue()) {
            hashSet.add((InterfaceC2108uu) ejA5.zzb());
        }
        if (((Boolean) o7.a(Q7.f15640I2)).booleanValue()) {
            hashSet.add((InterfaceC2108uu) ejA6.zzb());
        }
        C2160vu c2160vu = new C2160vu(context2, c1936re, hashSet, tw, c0738Fn);
        C0915Sa c0915SaA = c0887QaN.a("google.afma.request.getSignals", AbstractC0873Pa.f15389b, AbstractC0873Pa.f15390c);
        Ow owH = U4.a.h(context, 22);
        Fw fwC = ((Kw) c2146vgC.f21560l.zzb()).b(Cw.N1(c0973Wc.f17250G), Iw.GET_SIGNALS).k(new Rw(owH)).m(new C0957Va(11, c2160vu, c0973Wc)).g(Iw.JS_SIGNALS).m(c0915SaA).c();
        Tw tw2 = (Tw) mj.zzb();
        Bundle bundle = c0973Wc.f17250G;
        tw2.d(bundle.getStringArrayList("ad_types"));
        tw2.f(bundle.getBundle("extras"));
        com.google.android.gms.internal.measurement.H1.N(fwC, tw2, owH, true);
        if (((Boolean) AbstractC1915r8.f20684g.l()).booleanValue()) {
            Mp mp = this.f13638I;
            Objects.requireNonNull(mp);
            fwC.a(new Cp(mp, 0), this.f13637H);
        }
        return fwC;
    }

    public final D4.b C3(String str) {
        if (((Boolean) AbstractC2279y8.f21995a.l()).booleanValue()) {
            return D3(str) == null ? Cw.H1(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str)))) : Cw.N1(new Dp());
        }
        return Cw.H1(new Exception("Split request is disabled."));
    }

    public final synchronized Ep D3(String str) {
        Iterator it = this.f13640K.iterator();
        while (it.hasNext()) {
            Ep ep = (Ep) it.next();
            if (ep.f13220c.equals(str)) {
                it.remove();
                return ep;
            }
        }
        return null;
    }

    public final synchronized void G3() {
        int iIntValue = ((Long) AbstractC2279y8.f21997c.l()).intValue();
        while (this.f13640K.size() >= iIntValue) {
            this.f13640K.removeFirst();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0817Lc
    public final void L1(String str, InterfaceC0903Rc interfaceC0903Rc) {
        H3(C3(str), interfaceC0903Rc, null);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0817Lc
    public final void W1(C0973Wc c0973Wc, InterfaceC0903Rc interfaceC0903Rc) {
        Bundle bundle;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() && (bundle = c0973Wc.f17262S) != null) {
            p148t.a.g(p083k3.l.f25980A.f25990j, bundle, "service-connected");
        }
        H3(B3(c0973Wc, Binder.getCallingUid()), interfaceC0903Rc, c0973Wc);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0817Lc
    public final void n3(C0973Wc c0973Wc, InterfaceC0903Rc interfaceC0903Rc) {
        Bundle bundle;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() && (bundle = c0973Wc.f17262S) != null) {
            p148t.a.g(p083k3.l.f25980A.f25990j, bundle, "service-connected");
        }
        Fw fwA3 = A3(c0973Wc, Binder.getCallingUid());
        H3(fwA3, interfaceC0903Rc, c0973Wc);
        if (((Boolean) AbstractC1915r8.f20682e.l()).booleanValue()) {
            Mp mp = this.f13638I;
            Objects.requireNonNull(mp);
            fwA3.a(new Cp(mp, 0), this.f13637H);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0817Lc
    public final void u2(C0973Wc c0973Wc, InterfaceC0903Rc interfaceC0903Rc) {
        H3(z3(c0973Wc, Binder.getCallingUid()), interfaceC0903Rc, c0973Wc);
    }

    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        InterfaceC0903Rc c0889Qc = null;
        if (i8 == 1) {
            A5.b(parcel);
            parcel2.writeNoException();
            A5.d(parcel2, null);
            return true;
        }
        if (i8 == 2) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
            }
            A5.b(parcel);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 4) {
            C0973Wc c0973Wc = (C0973Wc) A5.a(parcel, C0973Wc.CREATOR);
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                c0889Qc = iInterfaceQueryLocalInterface instanceof InterfaceC0903Rc ? (InterfaceC0903Rc) iInterfaceQueryLocalInterface : new C0889Qc(strongBinder2);
            }
            A5.b(parcel);
            n3(c0973Wc, c0889Qc);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 5) {
            C0973Wc c0973Wc2 = (C0973Wc) A5.a(parcel, C0973Wc.CREATOR);
            IBinder strongBinder3 = parcel.readStrongBinder();
            if (strongBinder3 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                c0889Qc = iInterfaceQueryLocalInterface2 instanceof InterfaceC0903Rc ? (InterfaceC0903Rc) iInterfaceQueryLocalInterface2 : new C0889Qc(strongBinder3);
            }
            A5.b(parcel);
            W1(c0973Wc2, c0889Qc);
            parcel2.writeNoException();
            return true;
        }
        if (i8 == 6) {
            C0973Wc c0973Wc3 = (C0973Wc) A5.a(parcel, C0973Wc.CREATOR);
            IBinder strongBinder4 = parcel.readStrongBinder();
            if (strongBinder4 != null) {
                IInterface iInterfaceQueryLocalInterface3 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                c0889Qc = iInterfaceQueryLocalInterface3 instanceof InterfaceC0903Rc ? (InterfaceC0903Rc) iInterfaceQueryLocalInterface3 : new C0889Qc(strongBinder4);
            }
            A5.b(parcel);
            u2(c0973Wc3, c0889Qc);
            parcel2.writeNoException();
            return true;
        }
        if (i8 != 7) {
            return false;
        }
        String string = parcel.readString();
        IBinder strongBinder5 = parcel.readStrongBinder();
        if (strongBinder5 != null) {
            IInterface iInterfaceQueryLocalInterface4 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
            c0889Qc = iInterfaceQueryLocalInterface4 instanceof InterfaceC0903Rc ? (InterfaceC0903Rc) iInterfaceQueryLocalInterface4 : new C0889Qc(strongBinder5);
        }
        A5.b(parcel);
        L1(string, c0889Qc);
        parcel2.writeNoException();
        return true;
    }

    public final D4.b z3(final C0973Wc c0973Wc, int i8) {
        if (!((Boolean) AbstractC2279y8.f21995a.l()).booleanValue()) {
            return Cw.H1(new Exception("Split request is disabled."));
        }
        C1799ow c1799ow = c0973Wc.f17258O;
        if (c1799ow == null) {
            return Cw.H1(new Exception("Pool configuration missing from request."));
        }
        if (c1799ow.f20353J == 0 || c1799ow.f20354K == 0) {
            return Cw.H1(new Exception("Caching is disabled."));
        }
        C2246xc c2246xc = p083k3.l.f25980A.f25996p;
        p120p3.a aVarI = p120p3.a.i();
        Uw uw = this.f13641L;
        Context context = this.f13636G;
        C0887Qa c0887QaN = c2246xc.n(context, aVarI, uw);
        C2146vg c2146vgC = ((AbstractC1317fg) this.f13639J).c(c0973Wc, i8);
        Kw kw = (Kw) c2146vgC.f21560l.zzb();
        final Fw fwF3 = F3(c0973Wc, kw, c2146vgC);
        Tw tw = (Tw) c2146vgC.f21551c.zzb();
        final Ow owH = U4.a.h(context, 9);
        final Fw fwE3 = E3(fwF3, kw, c0887QaN, tw, owH);
        return kw.a(Iw.GET_URL_AND_CACHE_KEY, fwF3, fwE3).m(new Callable() { // from class: com.google.android.gms.internal.ads.Bp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Gp gp = this.f12498a;
                D4.b bVar = fwE3;
                D4.b bVar2 = fwF3;
                C0973Wc c0973Wc2 = c0973Wc;
                Ow ow = owH;
                gp.getClass();
                String str = ((C0987Xc) bVar.get()).f17441i;
                Ep ep = new Ep((C0987Xc) bVar.get(), (JSONObject) bVar2.get(), c0973Wc2.f17257N, ow);
                synchronized (gp) {
                    gp.G3();
                    gp.f13640K.addLast(ep);
                }
                return new ByteArrayInputStream(str.getBytes(StandardCharsets.UTF_8));
            }
        }).c();
    }
}
