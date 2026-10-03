package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Rl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0912Rl extends W8 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, InterfaceViewOnClickListenerC1220dm {

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final PA f16337V;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f16338H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public FrameLayout f16340J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public FrameLayout f16341K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1936re f16342L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public View f16343M;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C0721El f16345O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public H5 f16346P;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public R8 f16348R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f16349S;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public GestureDetector f16351U;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public HashMap f16339I = new HashMap();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public R3.a f16347Q = null;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f16350T = false;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f16344N = 243220000;

    static {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        Object[] objArr = {"2011", "1009", "3010"};
        Cw.O0(objArr, 3);
        f16337V = AbstractC2073uA.s(3, objArr);
    }

    public ViewTreeObserverOnGlobalLayoutListenerC0912Rl(FrameLayout frameLayout, FrameLayout frameLayout2) {
        String str;
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2 = null;
        this.f16340J = frameLayout;
        this.f16341K = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f16338H = str;
        C0650Aa c0650Aa = p083k3.l.f25980A.f26006z;
        ViewTreeObserverOnGlobalLayoutListenerC2248xe viewTreeObserverOnGlobalLayoutListenerC2248xe = new ViewTreeObserverOnGlobalLayoutListenerC2248xe(frameLayout, this);
        View view = (View) ((WeakReference) viewTreeObserverOnGlobalLayoutListenerC2248xe.f19929G).get();
        ViewTreeObserver viewTreeObserver3 = (view == null || (viewTreeObserver3 = view.getViewTreeObserver()) == null || !viewTreeObserver3.isAlive()) ? null : viewTreeObserver3;
        if (viewTreeObserver3 != null) {
            viewTreeObserverOnGlobalLayoutListenerC2248xe.a1(viewTreeObserver3);
        }
        ViewTreeObserverOnScrollChangedListenerC2300ye viewTreeObserverOnScrollChangedListenerC2300ye = new ViewTreeObserverOnScrollChangedListenerC2300ye(frameLayout, this);
        View view2 = (View) ((WeakReference) viewTreeObserverOnScrollChangedListenerC2300ye.f19929G).get();
        if (view2 != null && (viewTreeObserver = view2.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            viewTreeObserverOnScrollChangedListenerC2300ye.a1(viewTreeObserver2);
        }
        this.f16342L = AbstractC1988se.f20910e;
        this.f16346P = new H5(this.f16340J.getContext(), this.f16340J);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    public final synchronized void A3() {
        this.f16342L.execute(new RunnableC0878Pf(this, 28));
    }

    public final synchronized void B3() {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.Pa)).booleanValue() || this.f16345O.p() == 0) {
            return;
        }
        this.f16351U = new GestureDetector(this.f16340J.getContext(), new GestureDetectorOnGestureListenerC0954Ul(this.f16345O, this));
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized void N0(R3.a aVar) {
        if (this.f16350T) {
            return;
        }
        Object objV0 = R3.b.v0(aVar);
        if (!(objV0 instanceof C0721El)) {
            p120p3.h.g("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        C0721El c0721El = this.f16345O;
        if (c0721El != null) {
            c0721El.l(this);
        }
        A3();
        C0721El c0721El2 = (C0721El) objV0;
        this.f16345O = c0721El2;
        c0721El2.k(this);
        this.f16345O.g(this.f16340J);
        C0721El c0721El3 = this.f16345O;
        FrameLayout frameLayout = this.f16341K;
        C1689mq c1689mqT = c0721El3.f13187k.T();
        if (c0721El3.f13190n.c() && c1689mqT != null && frameLayout != null) {
            C0621y c0621y = p083k3.l.f25980A.f26002v;
            C2267xx c2267xx = c1689mqT.f20002a;
            c0621y.getClass();
            C0621y.k(new RunnableC1482iq(c2267xx, frameLayout, 0));
        }
        if (this.f16349S) {
            this.f16345O.f13182C.b(this.f16348R);
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15617F3)).booleanValue() && !TextUtils.isEmpty(this.f16345O.f13190n.b())) {
            z3(this.f16345O.f13190n.b());
        }
        B3();
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized void Z(R8 r8) {
        if (!this.f16350T) {
            this.f16349S = true;
            this.f16348R = r8;
            C0721El c0721El = this.f16345O;
            if (c0721El != null) {
                c0721El.f13182C.b(r8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void d1(R3.a aVar) {
        onTouch(this.f16340J, (MotionEvent) R3.b.v0(aVar));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized void j0(String str, View view) {
        if (!this.f16350T) {
            if (view == null) {
                this.f16339I.remove(str);
                return;
            }
            this.f16339I.put(str, new WeakReference(view));
            if (!"1098".equals(str) && !"3011".equals(str)) {
                if (S3.e.H(this.f16344N)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized R3.a m(String str) {
        return new R3.b(n2(str));
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized void m3(R3.a aVar) {
        this.f16345O.j((View) R3.b.v0(aVar));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized View n2(String str) {
        WeakReference weakReference;
        if (!this.f16350T && (weakReference = (WeakReference) this.f16339I.get(str)) != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        C0721El c0721El = this.f16345O;
        if (c0721El == null || !c0721El.m()) {
            return;
        }
        this.f16345O.A();
        this.f16345O.c(view, this.f16340J, zzl(), zzm(), false);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        C0721El c0721El = this.f16345O;
        if (c0721El != null) {
            FrameLayout frameLayout = this.f16340J;
            c0721El.b(frameLayout, zzl(), zzm(), C0721El.n(frameLayout));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        C0721El c0721El = this.f16345O;
        if (c0721El != null) {
            FrameLayout frameLayout = this.f16340J;
            c0721El.b(frameLayout, zzl(), zzm(), C0721El.n(frameLayout));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        C0721El c0721El = this.f16345O;
        if (c0721El != null) {
            c0721El.h(view, motionEvent, this.f16340J);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pa)).booleanValue() && this.f16351U != null && this.f16345O.p() != 0) {
                this.f16351U.onTouchEvent(motionEvent);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized void r0(R3.a aVar) {
        if (this.f16350T) {
            return;
        }
        this.f16347Q = aVar;
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized void u1(R3.a aVar, String str) {
        j0(str, (View) R3.b.v0(aVar));
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized void v1(R3.a aVar, int i8) {
    }

    public final synchronized void z3(String str) {
        DisplayMetrics displayMetrics;
        try {
            View frameLayout = new FrameLayout(this.f16341K.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            Context context = this.f16341K.getContext();
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            if (!TextUtils.isEmpty(str)) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    try {
                        byte[] bArrDecode = Base64.decode(str, 0);
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        bitmapDrawable.setTileModeXY(tileMode, tileMode);
                        frameLayout.setBackground(bitmapDrawable);
                    } catch (IllegalArgumentException e8) {
                        p120p3.h.h("Encountered invalid base64 watermark.", e8);
                    }
                }
            }
            this.f16341K.addView(frameLayout);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final synchronized void zzc() {
        try {
            if (this.f16350T) {
                return;
            }
            C0721El c0721El = this.f16345O;
            if (c0721El != null) {
                c0721El.l(this);
                this.f16345O = null;
            }
            this.f16339I.clear();
            this.f16340J.removeAllViews();
            this.f16341K.removeAllViews();
            this.f16339I = null;
            this.f16340J = null;
            this.f16341K = null;
            this.f16343M = null;
            this.f16346P = null;
            this.f16350T = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final /* synthetic */ View zzf() {
        return this.f16340J;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final FrameLayout zzh() {
        return this.f16341K;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final H5 zzi() {
        return this.f16346P;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final R3.a zzj() {
        return this.f16347Q;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized String zzk() {
        return this.f16338H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized Map zzl() {
        return this.f16339I;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized Map zzm() {
        return this.f16339I;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized Map zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized JSONObject zzo() {
        C0721El c0721El = this.f16345O;
        if (c0721El == null) {
            return null;
        }
        return c0721El.y(this.f16340J, zzl(), zzm());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceViewOnClickListenerC1220dm
    public final synchronized JSONObject zzp() {
        C0721El c0721El = this.f16345O;
        if (c0721El == null) {
            return null;
        }
        return c0721El.z(this.f16340J, zzl(), zzm());
    }
}
