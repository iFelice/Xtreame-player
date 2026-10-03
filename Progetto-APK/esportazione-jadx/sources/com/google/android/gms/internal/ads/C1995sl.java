package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p021c4.C0621y;
import p039f.AbstractC2987b;
import p090l3.C3080g0;
import p090l3.C3097p;
import p090l3.C3099q;
import p090l3.InterfaceC3082h0;
import p090l3.InterfaceC3086j0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1995sl implements InterfaceC0826Ll {

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public InterfaceC3082h0 f20940C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f20941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0856Nl f20942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JSONObject f20943c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0941Tm f20944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0781Il f20945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final H4 f20946f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C2357zj f20947g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1734nj f20948h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0855Nk f20949i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Ov f20950j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final p120p3.a f20951k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Yv f20952l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0672Bh f20953m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ViewOnClickListenerC0982Wl f20954n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final P3.a f20955o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final C0840Mk f20956p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final C1488ix f20957q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final C1634ln f20958r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Tw f20959s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final BinderC1431hq f20960t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f20962v;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f20961u = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f20963w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f20964x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Point f20965y = new Point();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Point f20966z = new Point();

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f20938A = 0;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public long f20939B = 0;

    public C1995sl(Context context, C0856Nl c0856Nl, JSONObject jSONObject, C0941Tm c0941Tm, C0781Il c0781Il, H4 h8, C2357zj c2357zj, C1734nj c1734nj, C0855Nk c0855Nk, Ov ov, p120p3.a aVar, Yv yv, C0672Bh c0672Bh, ViewOnClickListenerC0982Wl viewOnClickListenerC0982Wl, P3.a aVar2, C0840Mk c0840Mk, C1488ix c1488ix, Tw tw, BinderC1431hq binderC1431hq, C1634ln c1634ln) {
        this.f20941a = context;
        this.f20942b = c0856Nl;
        this.f20943c = jSONObject;
        this.f20944d = c0941Tm;
        this.f20945e = c0781Il;
        this.f20946f = h8;
        this.f20947g = c2357zj;
        this.f20948h = c1734nj;
        this.f20949i = c0855Nk;
        this.f20950j = ov;
        this.f20951k = aVar;
        this.f20952l = yv;
        this.f20953m = c0672Bh;
        this.f20954n = viewOnClickListenerC0982Wl;
        this.f20955o = aVar2;
        this.f20956p = c0840Mk;
        this.f20957q = c1488ix;
        this.f20959s = tw;
        this.f20960t = binderC1431hq;
        this.f20958r = c1634ln;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void a(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.f20941a;
        u(S3.e.F(context, view), S3.e.C(context, map, map2, view, scaleType), S3.e.E(view), S3.e.D(context, view), q(view), null, S3.e.G(context, this.f20950j));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final boolean b(Bundle bundle) {
        JSONObject jSONObject;
        JSONObject jSONObjectH;
        if (!s("impression_reporting")) {
            p120p3.h.d("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        p120p3.d dVar = C3097p.f26618f.f26619a;
        dVar.getClass();
        if (bundle != null) {
            try {
                jSONObjectH = dVar.h(bundle);
            } catch (JSONException e8) {
                p120p3.h.e("Error converting Bundle to JSON", e8);
                jSONObject = null;
            }
        } else {
            jSONObjectH = null;
        }
        jSONObject = jSONObjectH;
        return u(null, null, null, null, ((Boolean) C3099q.f26624d.f26627c.a(Q7.La)).booleanValue() ? q(null) : null, jSONObject, false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void c(View view) {
        if (!this.f20943c.optBoolean("custom_one_point_five_click_enabled", false)) {
            p120p3.h.g("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            if (view == null) {
                return;
            }
            ViewOnClickListenerC0982Wl viewOnClickListenerC0982Wl = this.f20954n;
            view.setOnClickListener(viewOnClickListenerC0982Wl);
            view.setClickable(true);
            viewOnClickListenerC0982Wl.f17318M = new WeakReference(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void d(MotionEvent motionEvent, View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        this.f20965y = new Point(((int) motionEvent.getRawX()) - iArr[0], ((int) motionEvent.getRawY()) - iArr[1]);
        ((P3.b) this.f20955o).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f20939B = jCurrentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.f20958r.f19843a = motionEvent;
            this.f20938A = jCurrentTimeMillis;
            this.f20966z = this.f20965y;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        Point point = this.f20965y;
        motionEventObtain.setLocation(point.x, point.y);
        this.f20946f.f13700b.zzk(motionEventObtain);
        motionEventObtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void e(C2332z9 c2332z9) {
        if (!this.f20943c.optBoolean("custom_one_point_five_click_enabled", false)) {
            p120p3.h.g("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        ViewOnClickListenerC0982Wl viewOnClickListenerC0982Wl = this.f20954n;
        viewOnClickListenerC0982Wl.f17314I = c2332z9;
        C0968Vl c0968Vl = viewOnClickListenerC0982Wl.f17315J;
        C0941Tm c0941Tm = viewOnClickListenerC0982Wl.f17312G;
        if (c0968Vl != null) {
            c0941Tm.d("/unconfirmedClick", c0968Vl);
        }
        C0968Vl c0968Vl2 = new C0968Vl(0, viewOnClickListenerC0982Wl, c2332z9);
        viewOnClickListenerC0982Wl.f17315J = c0968Vl2;
        c0941Tm.c("/unconfirmedClick", c0968Vl2);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void f(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f20965y = new Point();
        this.f20966z = new Point();
        if (!this.f20962v) {
            this.f20956p.a1(view);
            this.f20962v = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        C0672Bh c0672Bh = this.f20953m;
        c0672Bh.getClass();
        c0672Bh.f12480P = new WeakReference(this);
        boolean zH = S3.e.H(this.f20951k.f28198I);
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (view2 != null) {
                    if (zH) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                if (view3 != null) {
                    if (zH) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void g() {
        this.f20964x = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void h(View view, View view2, Map map, Map map2, boolean z7, ImageView.ScaleType scaleType) {
        Context context = this.f20941a;
        JSONObject jSONObjectC = S3.e.C(context, map, map2, view2, scaleType);
        JSONObject jSONObjectF = S3.e.F(context, view2);
        JSONObject jSONObjectE = S3.e.E(view2);
        JSONObject jSONObjectD = S3.e.D(context, view2);
        String strR = r(view, map);
        w(true == ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15934s3)).booleanValue() ? view2 : view, jSONObjectF, jSONObjectC, jSONObjectE, jSONObjectD, strR, S3.e.B(strR, context, this.f20966z, this.f20965y), null, z7, false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void i(Bundle bundle) {
        if (bundle == null) {
            p120p3.h.b("Click data is null. No click is reported.");
            return;
        }
        if (!s("click_reporting")) {
            p120p3.h.d("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
            return;
        }
        Bundle bundle2 = bundle.getBundle("click_signal");
        JSONObject jSONObjectH = null;
        String string = bundle2 != null ? bundle2.getString("asset_id") : null;
        p120p3.d dVar = C3097p.f26618f.f26619a;
        dVar.getClass();
        try {
            jSONObjectH = dVar.h(bundle);
        } catch (JSONException e8) {
            p120p3.h.e("Error converting Bundle to JSON", e8);
        }
        w(null, null, null, null, null, string, null, jSONObjectH, false, false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void j(Bundle bundle) {
        if (bundle == null) {
            p120p3.h.b("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!s("touch_reporting")) {
            p120p3.h.d("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
            return;
        }
        this.f20946f.f13700b.zzl((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final JSONObject k(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.f20941a;
        JSONObject jSONObjectC = S3.e.C(context, map, map2, view, scaleType);
        JSONObject jSONObjectF = S3.e.F(context, view);
        JSONObject jSONObjectE = S3.e.E(view);
        JSONObject jSONObjectD = S3.e.D(context, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", jSONObjectC);
            jSONObject.put("ad_view_signal", jSONObjectF);
            jSONObject.put("scroll_view_signal", jSONObjectE);
            jSONObject.put("lock_screen_signal", jSONObjectD);
            return jSONObject;
        } catch (JSONException e8) {
            p120p3.h.e("Unable to create native ad view signals JSON.", e8);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void l(View view, View view2, Map map, Map map2, boolean z7, ImageView.ScaleType scaleType, int i8) {
        boolean z8;
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.f20943c;
        if (jSONObject2.optBoolean("allow_sdk_custom_click_gesture", false)) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pa)).booleanValue()) {
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        if (!z8) {
            if (!this.f20964x) {
                p120p3.h.b("Custom click reporting failed. enableCustomClickGesture is not set.");
                return;
            } else if (!jSONObject2.optBoolean("allow_custom_click_gesture", false)) {
                p120p3.h.b("Custom click reporting failed. Ad unit id not in the allow list.");
                return;
            }
        }
        Context context = this.f20941a;
        JSONObject jSONObjectC = S3.e.C(context, map, map2, view2, scaleType);
        JSONObject jSONObjectF = S3.e.F(context, view2);
        JSONObject jSONObjectE = S3.e.E(view2);
        JSONObject jSONObjectD = S3.e.D(context, view2);
        String strR = r(view, map);
        JSONObject jSONObjectB = S3.e.B(strR, context, this.f20966z, this.f20965y);
        if (z8) {
            try {
                Point point = this.f20966z;
                Point point2 = this.f20965y;
                try {
                    jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        JSONObject jSONObject4 = new JSONObject();
                        if (point != null) {
                            jSONObject3.put("x", point.x);
                            jSONObject3.put("y", point.y);
                        }
                        if (point2 != null) {
                            jSONObject4.put("x", point2.x);
                            jSONObject4.put("y", point2.y);
                        }
                        jSONObject.put("start_point", jSONObject3);
                        jSONObject.put("end_point", jSONObject4);
                        jSONObject.put("duration_ms", i8);
                    } catch (Exception e8) {
                        e = e8;
                        p120p3.h.e("Error occurred while grabbing custom click gesture signals.", e);
                    }
                } catch (Exception e9) {
                    e = e9;
                    jSONObject = null;
                }
                jSONObject2.put("custom_click_gesture_signal", jSONObject);
            } catch (JSONException e10) {
                p120p3.h.e("Error occurred while adding CustomClickGestureSignals to adJson.", e10);
                p083k3.l.f25980A.f25987g.i("FirstPartyNativeAdCore.performCustomClickGesture", e10);
            }
        }
        w(view2, jSONObjectF, jSONObjectC, jSONObjectE, jSONObjectD, strR, jSONObjectB, null, z7, true);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void m(View view) {
        this.f20965y = new Point();
        this.f20966z = new Point();
        if (view != null) {
            C0840Mk c0840Mk = this.f20956p;
            synchronized (c0840Mk) {
                if (c0840Mk.f14783H.containsKey(view)) {
                    ((H5) c0840Mk.f14783H.get(view)).f13714R.remove(c0840Mk);
                    c0840Mk.f14783H.remove(view);
                }
            }
        }
        this.f20962v = false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void n(InterfaceC3082h0 interfaceC3082h0) {
        this.f20940C = interfaceC3082h0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final JSONObject o(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        JSONObject jSONObjectK = k(view, map, map2, scaleType);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f20964x && this.f20943c.optBoolean("allow_custom_click_gesture", false)) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (jSONObjectK != null) {
                jSONObject.put("nas", jSONObjectK);
            }
        } catch (JSONException e8) {
            p120p3.h.e("Unable to create native click meta data JSON.", e8);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void p(InterfaceC3086j0 interfaceC3086j0) {
        p090l3.K0 k8;
        try {
            if (this.f20963w) {
                return;
            }
            Tw tw = this.f20959s;
            C1488ix c1488ix = this.f20957q;
            if (interfaceC3086j0 == null) {
                C0781Il c0781Il = this.f20945e;
                synchronized (c0781Il) {
                    k8 = c0781Il.f14027g;
                }
                if (k8 != null) {
                    this.f20963w = true;
                    c1488ix.a(c0781Il.K().f26489H, tw);
                    zzg();
                    return;
                }
            }
            this.f20963w = true;
            c1488ix.a(interfaceC3086j0.zzf(), tw);
            zzg();
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    public final String q(View view) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15879l3)).booleanValue()) {
            return null;
        }
        try {
            return this.f20946f.f13700b.zzh(this.f20941a, view, null);
        } catch (Exception unused) {
            p120p3.h.d("Exception getting data.");
            return null;
        }
    }

    public final String r(View view, Map map) {
        if (map != null && view != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    return (String) entry.getKey();
                }
            }
        }
        int iD = this.f20945e.D();
        if (iD == 1) {
            return "1099";
        }
        if (iD == 2) {
            return "2099";
        }
        if (iD != 6) {
            return null;
        }
        return "3099";
    }

    public final boolean s(String str) {
        JSONObject jSONObjectOptJSONObject = this.f20943c.optJSONObject("allow_pub_event_reporting");
        return jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean(str, false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final boolean t() {
        return this.f20943c.optBoolean("allow_custom_click_gesture", false);
    }

    public final boolean u(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z7) {
        Context context = this.f20941a;
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f20943c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15879l3)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z7);
            JSONObject jSONObject7 = new JSONObject();
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            try {
                int i8 = displayMetrics.widthPixels;
                C3097p c3097p = C3097p.f26618f;
                jSONObject7.put("width", c3097p.f26619a.f(context, i8));
                jSONObject7.put("height", c3097p.f26619a.f(context, displayMetrics.heightPixels));
            } catch (JSONException unused) {
                jSONObject7 = null;
            }
            jSONObject6.put("screen", jSONObject7);
            boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.R7)).booleanValue();
            C0941Tm c0941Tm = this.f20944d;
            if (zBooleanValue) {
                c0941Tm.c("/clickRecorded", new C1943rl(this, 0));
            } else {
                c0941Tm.c("/logScionEvent", new C1943rl(this));
            }
            c0941Tm.c("/nativeImpression", new C1943rl(this, (Object) null));
            AbstractC2987b.d0(c0941Tm.a(jSONObject6, "google.afma.nativeAds.handleImpression"), "Error during performing handleImpression");
            if (this.f20961u) {
                return true;
            }
            this.f20961u = p083k3.l.f25980A.f25993m.j(context, this.f20951k.f28196G, this.f20950j.f15222C.toString(), this.f20952l.f17679f);
            return true;
        } catch (JSONException e8) {
            p120p3.h.e("Unable to create impression JSON.", e8);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final boolean v() {
        if (zza() == 0) {
            return true;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pa)).booleanValue()) {
            return this.f20952l.f17682i.f14652P;
        }
        return true;
    }

    public final void w(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z7, boolean z8) {
        List list;
        String strE;
        P3.a aVar = this.f20955o;
        C0856Nl c0856Nl = this.f20942b;
        JSONObject jSONObject7 = this.f20943c;
        C0781Il c0781Il = this.f20945e;
        try {
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("ad", jSONObject7);
            jSONObject8.put("asset_view_signal", jSONObject2);
            jSONObject8.put("ad_view_signal", jSONObject);
            jSONObject8.put("click_signal", jSONObject5);
            jSONObject8.put("scroll_view_signal", jSONObject3);
            jSONObject8.put("lock_screen_signal", jSONObject4);
            jSONObject8.put("has_custom_click_handler", ((InterfaceC1709n9) c0856Nl.f15081g.get(c0781Il.a())) != null);
            jSONObject8.put("provided_signals", jSONObject6);
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("asset_id", str);
            jSONObject9.put("template", c0781Il.D());
            jSONObject9.put("view_aware_api_used", z7);
            M8 m8 = this.f20952l.f17682i;
            jSONObject9.put("custom_mute_requested", m8 != null && m8.f14649M);
            synchronized (c0781Il) {
                list = c0781Il.f14026f;
            }
            jSONObject9.put("custom_mute_enabled", (list.isEmpty() || c0781Il.K() == null) ? false : true);
            if (this.f20954n.f17314I != null && jSONObject7.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject9.put("custom_one_point_five_click_eligible", true);
            }
            ((P3.b) aVar).getClass();
            jSONObject9.put("timestamp", System.currentTimeMillis());
            if (this.f20964x && this.f20943c.optBoolean("allow_custom_click_gesture", false)) {
                jSONObject9.put("custom_click_gesture_eligible", true);
            }
            if (z8) {
                jSONObject9.put("is_custom_click_gesture", true);
            }
            jSONObject9.put("has_custom_click_handler", ((InterfaceC1709n9) c0856Nl.f15081g.get(c0781Il.a())) != null);
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject7.optJSONObject("tracking_urls_and_actions");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                strE = this.f20946f.f13700b.e(this.f20941a, jSONObjectOptJSONObject.optString("click_string"), view);
            } catch (Exception e8) {
                p120p3.h.e("Exception obtaining click signals", e8);
                strE = null;
            }
            jSONObject9.put("click_signals", strE);
            J7 j8 = Q7.l4;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                jSONObject9.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) c3099q.f26627c.a(Q7.V7)).booleanValue() && U2.m.b()) {
                jSONObject9.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) c3099q.f26627c.a(Q7.W7)).booleanValue() && U2.m.b()) {
                jSONObject9.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject8.put("click", jSONObject9);
            JSONObject jSONObject10 = new JSONObject();
            ((P3.b) aVar).getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            jSONObject10.put("time_from_last_touch_down", jCurrentTimeMillis - this.f20938A);
            jSONObject10.put("time_from_last_touch", jCurrentTimeMillis - this.f20939B);
            jSONObject8.put("touch_signal", jSONObject10);
            if (this.f20950j.f15263i0) {
                JSONObject jSONObject11 = (JSONObject) jSONObject7.get("tracking_urls_and_actions");
                String string = jSONObject11 != null ? jSONObject11.getString("gws_query_id") : null;
                if (string != null) {
                    this.f20960t.A3(string, c0781Il);
                }
            }
            AbstractC2987b.d0(this.f20944d.a(jSONObject8, "google.afma.nativeAds.handleClick"), "Error during performing handleClick");
        } catch (JSONException e9) {
            p120p3.h.e("Unable to create click JSON.", e9);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void z(String str) {
        w(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final int zza() {
        Yv yv = this.f20952l;
        if (yv.f17682i == null) {
            return 0;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pa)).booleanValue()) {
            return yv.f17682i.f14651O;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzg() {
        try {
            InterfaceC3082h0 interfaceC3082h0 = this.f20940C;
            if (interfaceC3082h0 != null) {
                C3080g0 c3080g0 = (C3080g0) interfaceC3082h0;
                c3080g0.O2(1, c3080g0.j0());
            }
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzh() {
        View view;
        if (this.f20943c.optBoolean("custom_one_point_five_click_enabled", false)) {
            ViewOnClickListenerC0982Wl viewOnClickListenerC0982Wl = this.f20954n;
            if (viewOnClickListenerC0982Wl.f17314I == null || viewOnClickListenerC0982Wl.f17317L == null) {
                return;
            }
            viewOnClickListenerC0982Wl.f17316K = null;
            viewOnClickListenerC0982Wl.f17317L = null;
            WeakReference weakReference = viewOnClickListenerC0982Wl.f17318M;
            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                view.setClickable(false);
                view.setOnClickListener(null);
                viewOnClickListenerC0982Wl.f17318M = null;
            }
            try {
                C2332z9 c2332z9 = viewOnClickListenerC0982Wl.f17314I;
                c2332z9.O2(2, c2332z9.j0());
            } catch (RemoteException e8) {
                p120p3.h.i("#007 Could not call remote method.", e8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzi() {
        C0941Tm c0941Tm = this.f20944d;
        synchronized (c0941Tm) {
            KB kb = c0941Tm.f16738m;
            if (kb != null) {
                Cw.h2(kb, new C0621y(), c0941Tm.f16730e);
                c0941Tm.f16738m = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzp() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f20943c);
            AbstractC2987b.d0(this.f20944d.a(jSONObject, "google.afma.nativeAds.handleDownloadedImpression"), "Error during performing handleDownloadedImpression");
        } catch (JSONException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0826Ll
    public final void zzr() {
        u(null, null, null, null, null, null, false);
    }
}
