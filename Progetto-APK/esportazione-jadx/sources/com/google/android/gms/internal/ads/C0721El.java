package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.El, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0721El extends AbstractC2252xi {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f13179G = 0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final p120p3.a f13180A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final Context f13181B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final C0751Gl f13182C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final C1484is f13183D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final HashMap f13184E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final ArrayList f13185F;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Executor f13186j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C0781Il f13187k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final InterfaceC0826Ll f13188l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0926Sl f13189m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C0811Kl f13190n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0856Nl f13191o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final EJ f13192p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final EJ f13193q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final EJ f13194r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final EJ f13195s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final EJ f13196t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public InterfaceViewOnClickListenerC1220dm f13197u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f13198v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f13199w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f13200x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final C0862Od f13201y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final H4 f13202z;

    static {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        Object[] objArr = {"3010", "3008", "1005", "1009", "2011", "2007"};
        Cw.O0(objArr, 6);
        AbstractC2073uA.s(6, objArr);
    }

    public C0721El(C2200wi c2200wi, Executor executor, C0781Il c0781Il, InterfaceC0826Ll interfaceC0826Ll, C0926Sl c0926Sl, C0811Kl c0811Kl, C0856Nl c0856Nl, EJ ej, EJ ej2, EJ ej3, EJ ej4, EJ ej5, C0862Od c0862Od, H4 h8, p120p3.a aVar, Context context, C0751Gl c0751Gl, C1484is c1484is) {
        super(c2200wi);
        this.f13186j = executor;
        this.f13187k = c0781Il;
        this.f13188l = interfaceC0826Ll;
        this.f13189m = c0926Sl;
        this.f13190n = c0811Kl;
        this.f13191o = c0856Nl;
        this.f13192p = ej;
        this.f13193q = ej2;
        this.f13194r = ej3;
        this.f13195s = ej4;
        this.f13196t = ej5;
        this.f13201y = c0862Od;
        this.f13202z = h8;
        this.f13180A = aVar;
        this.f13181B = context;
        this.f13182C = c0751Gl;
        this.f13183D = c1484is;
        this.f13184E = new HashMap();
        this.f13185F = new ArrayList();
    }

    public static boolean n(View view) {
        J7 j8 = Q7.S9;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        long jI = p113o3.O.I(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
            if (jI >= ((Integer) c3099q.f26627c.a(Q7.T9)).intValue()) {
                return true;
            }
        }
        return false;
    }

    public final synchronized void A() {
        this.f13188l.zzh();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2252xi
    public final void a() {
        RunnableC0676Bl runnableC0676Bl = new RunnableC0676Bl(this, 0);
        Executor executor = this.f13186j;
        executor.execute(runnableC0676Bl);
        if (this.f13187k.D() != 7) {
            InterfaceC0826Ll interfaceC0826Ll = this.f13188l;
            Objects.requireNonNull(interfaceC0826Ll);
            executor.execute(new RunnableC0878Pf(interfaceC0826Ll, 27));
        }
        super.a();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048 A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:19:0x0048, B:22:0x005c, B:23:0x0064, B:25:0x006a, B:27:0x007e, B:29:0x0084, B:34:0x008b), top: B:39:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x006a A[Catch: all -> 0x0044, TryCatch #0 {all -> 0x0044, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:19:0x0048, B:22:0x005c, B:23:0x0064, B:25:0x006a, B:27:0x007e, B:29:0x0084, B:34:0x008b), top: B:39:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x008b A[Catch: all -> 0x0044, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0044, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x0019, B:10:0x001f, B:11:0x0029, B:13:0x002f, B:19:0x0048, B:22:0x005c, B:23:0x0064, B:25:0x006a, B:27:0x007e, B:29:0x0084, B:34:0x008b), top: B:39:0x0001 }] */
    public final synchronized void b(View view, Map map, Map map2, boolean z7) {
        Iterator it;
        View view2;
        try {
            if (!this.f13199w) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15591C1)).booleanValue() && this.f21913b.f15267k0) {
                    Iterator it2 = this.f13184E.keySet().iterator();
                    while (it2.hasNext()) {
                        if (!((Boolean) this.f13184E.get((String) it2.next())).booleanValue()) {
                        }
                    }
                    if (!z7) {
                        s(view, map, map2);
                        return;
                    }
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15609E3)).booleanValue()) {
                        it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                            if (view2 == null) {
                            }
                        }
                    }
                } else {
                    if (!z7) {
                        s(view, map, map2);
                        return;
                    }
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15609E3)).booleanValue() && map != null) {
                        it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                            if (view2 == null && n(view2)) {
                                s(view, map, map2);
                                return;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(View view, View view2, Map map, Map map2, boolean z7) {
        C0926Sl c0926Sl = this.f13189m;
        InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm = this.f13197u;
        if (interfaceViewOnClickListenerC1220dm != null) {
            C1010Yl c1010Yl = c0926Sl.f16512e;
            if (c1010Yl != null && interfaceViewOnClickListenerC1220dm.zzh() != null && c0926Sl.f16510c.f()) {
                try {
                    interfaceViewOnClickListenerC1220dm.zzh().addView(c1010Yl.a());
                } catch (C0835Mf e8) {
                    p113o3.I.l("web view can not be obtained", e8);
                }
            }
            throw th;
        }
        c0926Sl.getClass();
        this.f13188l.h(view, view2, map, map2, z7, q());
        if (this.f13200x) {
            C0781Il c0781Il = this.f13187k;
            if (c0781Il.R() != null) {
                c0781Il.R().w("onSdkAdUserInteractionClick", new p132r.f(0));
            }
        }
    }

    public final synchronized void d(final FrameLayout frameLayout, final int i8) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pa)).booleanValue()) {
            InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm = this.f13197u;
            if (interfaceViewOnClickListenerC1220dm == null) {
                p120p3.h.b("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            } else {
                final boolean z7 = interfaceViewOnClickListenerC1220dm instanceof ViewTreeObserverOnGlobalLayoutListenerC0898Ql;
                this.f13186j.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.Cl
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0721El c0721El = this.f12683G;
                        c0721El.f13188l.l(frameLayout, c0721El.f13197u.zzf(), c0721El.f13197u.zzl(), c0721El.f13197u.zzm(), z7, c0721El.q(), i8);
                    }
                });
            }
        }
    }

    public final synchronized void e(String str) {
        this.f13188l.z(str);
    }

    public final synchronized void f(Bundle bundle) {
        this.f13188l.i(bundle);
    }

    public final void g(View view) {
        C2040te c2040te;
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15697P4)).booleanValue();
        C0781Il c0781Il = this.f13187k;
        if (!zBooleanValue) {
            t(view, c0781Il.T());
            return;
        }
        synchronized (c0781Il) {
            c2040te = c0781Il.f14034n;
        }
        if (c2040te == null) {
            return;
        }
        Cw.h2(c2040te, new C2218x(this, view, 25, 0), this.f13186j);
    }

    public final synchronized void h(View view, MotionEvent motionEvent, View view2) {
        this.f13188l.d(motionEvent, view2);
    }

    public final synchronized void i(Bundle bundle) {
        this.f13188l.j(bundle);
    }

    public final synchronized void j(View view) {
        this.f13188l.c(view);
    }

    public final synchronized void k(InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15575A1)).booleanValue()) {
            p113o3.O.f27924l.post(new RunnableC0661Al(this, interfaceViewOnClickListenerC1220dm, 0));
        } else {
            u(interfaceViewOnClickListenerC1220dm);
        }
    }

    public final synchronized void l(InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15575A1)).booleanValue()) {
            p113o3.O.f27924l.post(new RunnableC0661Al(this, interfaceViewOnClickListenerC1220dm, 1));
        } else {
            v(interfaceViewOnClickListenerC1220dm);
        }
    }

    public final synchronized boolean m() {
        return this.f13188l.v();
    }

    public final synchronized boolean o(Bundle bundle) {
        if (this.f13199w) {
            return true;
        }
        boolean zB = this.f13188l.b(bundle);
        this.f13199w = zB;
        return zB;
    }

    public final synchronized int p() {
        return this.f13188l.zza();
    }

    public final synchronized ImageView.ScaleType q() {
        InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm = this.f13197u;
        if (interfaceViewOnClickListenerC1220dm == null) {
            p120p3.h.b("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        R3.a aVarZzj = interfaceViewOnClickListenerC1220dm.zzj();
        if (aVarZzj != null) {
            return (ImageView.ScaleType) R3.b.v0(aVarZzj);
        }
        return C0926Sl.f16507k;
    }

    public final void r() {
        D4.b bVar;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15697P4)).booleanValue()) {
            x("Google", true);
            return;
        }
        C0781Il c0781Il = this.f13187k;
        synchronized (c0781Il) {
            bVar = c0781Il.f14033m;
        }
        if (bVar == null) {
            return;
        }
        Cw.h2(bVar, new C2218x(this), this.f13186j);
    }

    public final synchronized void s(View view, Map map, Map map2) {
        this.f13189m.a(this.f13197u);
        this.f13188l.a(view, map, map2, q());
        this.f13199w = true;
    }

    public final void t(View view, C1689mq c1689mq) {
        InterfaceC0715Ef interfaceC0715EfQ = this.f13187k.Q();
        if (!this.f13190n.c() || c1689mq == null || interfaceC0715EfQ == null || view == null) {
            return;
        }
        p083k3.l.f25980A.f26002v.getClass();
        C0621y.e(c1689mq.f20002a, view);
    }

    public final synchronized void u(InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm) {
        Iterator<String> itKeys;
        View view;
        E4 e8;
        try {
            if (!this.f13198v) {
                this.f13197u = interfaceViewOnClickListenerC1220dm;
                C0926Sl c0926Sl = this.f13189m;
                c0926Sl.getClass();
                c0926Sl.f16514g.execute(new RunnableC0755Ha(26, c0926Sl, interfaceViewOnClickListenerC1220dm));
                this.f13188l.f(interfaceViewOnClickListenerC1220dm.zzf(), interfaceViewOnClickListenerC1220dm.zzm(), interfaceViewOnClickListenerC1220dm.zzn(), interfaceViewOnClickListenerC1220dm, interfaceViewOnClickListenerC1220dm);
                J7 j8 = Q7.f15957v2;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && (e8 = this.f13202z.f13700b) != null) {
                    e8.a(interfaceViewOnClickListenerC1220dm.zzf());
                }
                if (((Boolean) c3099q.f26627c.a(Q7.f15591C1)).booleanValue()) {
                    Ov ov = this.f21913b;
                    if (ov.f15267k0 && (itKeys = ov.f15265j0.keys()) != null) {
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            WeakReference weakReference = (WeakReference) this.f13197u.zzl().get(next);
                            this.f13184E.put(next, Boolean.FALSE);
                            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                                H5 h8 = new H5(this.f13181B, view);
                                this.f13185F.add(h8);
                                h8.f13714R.add(new C0706Dl(this, next));
                                h8.c(3);
                            }
                        }
                    }
                }
                if (interfaceViewOnClickListenerC1220dm.zzi() != null) {
                    H5 h5Zzi = interfaceViewOnClickListenerC1220dm.zzi();
                    h5Zzi.f13714R.add(this.f13201y);
                    h5Zzi.c(3);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void v(InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm) {
        View viewZzf = interfaceViewOnClickListenerC1220dm.zzf();
        interfaceViewOnClickListenerC1220dm.zzl();
        this.f13188l.m(viewZzf);
        if (interfaceViewOnClickListenerC1220dm.zzh() != null) {
            interfaceViewOnClickListenerC1220dm.zzh().setClickable(false);
            interfaceViewOnClickListenerC1220dm.zzh().removeAllViews();
        }
        if (interfaceViewOnClickListenerC1220dm.zzi() != null) {
            interfaceViewOnClickListenerC1220dm.zzi().f13714R.remove(this.f13201y);
        }
        this.f13197u = null;
    }

    public final synchronized void w() {
        int i8 = 1;
        this.f13198v = true;
        this.f13186j.execute(new RunnableC0676Bl(this, i8));
        C0689Cj c0689Cj = this.f21914c;
        c0689Cj.getClass();
        c0689Cj.Z0(new I7(null, 3));
    }

    public final C1689mq x(String str, boolean z7) {
        String str2;
        int i8;
        int i9;
        C1689mq c1689mq;
        Object objA;
        String str3;
        if (!this.f13190n.c() || TextUtils.isEmpty(str)) {
            return null;
        }
        C0781Il c0781Il = this.f13187k;
        InterfaceC0715Ef interfaceC0715EfQ = c0781Il.Q();
        InterfaceC0715Ef interfaceC0715EfR = c0781Il.R();
        if (interfaceC0715EfQ == null && interfaceC0715EfR == null) {
            p120p3.h.g("Omid display and video webview are null. Skipping initialization.");
            return null;
        }
        boolean z8 = interfaceC0715EfQ != null;
        boolean z9 = interfaceC0715EfR != null;
        J7 j8 = Q7.f15681N4;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            this.f13190n.a();
            int iP = this.f13190n.a().p();
            int i10 = iP - 1;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (iP != 1) {
                        str3 = iP != 2 ? "UNKNOWN" : "DISPLAY";
                    } else {
                        str3 = "VIDEO";
                    }
                    p120p3.h.g("Unknown omid media type: " + str3 + ". Not initializing Omid.");
                    return null;
                }
                if (interfaceC0715EfQ == null) {
                    p120p3.h.g("Omid media type was display but there was no display webview.");
                    return null;
                }
                z8 = true;
                z9 = false;
            } else {
                if (interfaceC0715EfR == null) {
                    p120p3.h.g("Omid media type was video but there was no video webview.");
                    return null;
                }
                z8 = false;
                z9 = true;
            }
        }
        if (z8) {
            str2 = null;
        } else {
            str2 = "javascript";
            interfaceC0715EfQ = interfaceC0715EfR;
        }
        interfaceC0715EfQ.h0();
        Context context = this.f13181B;
        p083k3.l lVar = p083k3.l.f25980A;
        lVar.f26002v.getClass();
        if (!C0621y.g(context)) {
            p120p3.h.g("Failed to initialize omid in InternalNativeAd");
            return null;
        }
        p120p3.a aVar = this.f13180A;
        String str4 = aVar.f28197H + "." + aVar.f28198I;
        if (z9) {
            i8 = 3;
            i9 = 2;
        } else if (this.f13187k.D() == 3) {
            i8 = 2;
            i9 = 4;
        } else {
            i8 = 2;
            i9 = 3;
        }
        C0621y c0621y = lVar.f26002v;
        WebView webViewH0 = interfaceC0715EfQ.h0();
        String str5 = this.f21913b.f15269l0;
        c0621y.getClass();
        if (((Boolean) c3099q.f26627c.a(Q7.f15626G4)).booleanValue() && Cw.f12720d.f3280H) {
            try {
                objA = new C1533jq(str, str4, str2, i8, webViewH0, str5, i9).a();
            } catch (RuntimeException e8) {
                p083k3.l.f25980A.f25987g.h("omid exception", e8);
                objA = null;
            }
            c1689mq = (C1689mq) objA;
        } else {
            c1689mq = null;
        }
        if (c1689mq == null) {
            p120p3.h.g("Failed to create omid session in InternalNativeAd");
            return null;
        }
        C0781Il c0781Il2 = this.f13187k;
        synchronized (c0781Il2) {
            c0781Il2.f14032l = c1689mq;
        }
        interfaceC0715EfQ.e0(c1689mq);
        if (z9) {
            C2267xx c2267xx = c1689mq.f20002a;
            View viewJ = interfaceC0715EfR.j();
            lVar.f26002v.getClass();
            C0621y.e(c2267xx, viewJ);
            this.f13200x = true;
        }
        if (z7) {
            C0621y c0621y2 = lVar.f26002v;
            C2267xx c2267xx2 = c1689mq.f20002a;
            c0621y2.getClass();
            C0621y.f(c2267xx2);
            interfaceC0715EfQ.w("onSdkLoaded", new p132r.f(0));
        }
        return c1689mq;
    }

    public final synchronized JSONObject y(FrameLayout frameLayout, Map map, Map map2) {
        return this.f13188l.k(frameLayout, map, map2, q());
    }

    public final synchronized JSONObject z(View view, Map map, Map map2) {
        return this.f13188l.o(view, map, map2, q());
    }
}
