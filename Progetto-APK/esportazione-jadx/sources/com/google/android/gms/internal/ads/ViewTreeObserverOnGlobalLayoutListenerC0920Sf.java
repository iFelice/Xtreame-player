package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.api.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.json.JSONException;
import org.json.JSONObject;
import p086l.C3059w;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0920Sf extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, InterfaceC0715Ef {

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public static final /* synthetic */ int f16444H0 = 0;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public int f16445A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public int f16446B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public int f16447C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public HashMap f16448D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public final WindowManager f16449E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public final C2173w6 f16450F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1265eg f16451G;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public boolean f16452G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final H4 f16453H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Zv f16454I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1242e8 f16455J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p120p3.a f16456K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public p083k3.h f16457L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final p083k3.a f16458M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final DisplayMetrics f16459N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final float f16460O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Ov f16461P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Qv f16462Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f16463R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f16464S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public AbstractC0990Xf f16465T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public p105n3.k f16466U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public C1689mq f16467V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public C1637lq f16468W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public A2.i f16469a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f16470b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f16471c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f16472d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f16473e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f16474f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public Boolean f16475g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f16476h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final String f16477i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public BinderC0948Uf f16478j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f16479k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f16480l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public L8 f16481m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public J8 f16482n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public X5 f16483o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f16484p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f16485q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public U7 f16486r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final U7 f16487s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public U7 f16488t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final C2218x f16489u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public int f16490v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public p105n3.k f16491w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f16492x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final C3059w f16493y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f16494z0;

    public ViewTreeObserverOnGlobalLayoutListenerC0920Sf(C1265eg c1265eg, A2.i iVar, String str, boolean z7, H4 h8, C1242e8 c1242e8, p120p3.a aVar, p083k3.h hVar, p083k3.a aVar2, C2173w6 c2173w6, Ov ov, Qv qv, Zv zv) {
        Qv qv2;
        String str2;
        super(c1265eg);
        this.f16463R = false;
        this.f16464S = false;
        int i8 = 1;
        this.f16476h0 = true;
        this.f16477i0 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f16494z0 = -1;
        this.f16445A0 = -1;
        this.f16446B0 = -1;
        this.f16447C0 = -1;
        this.f16451G = c1265eg;
        this.f16469a0 = iVar;
        this.f16470b0 = str;
        this.f16473e0 = z7;
        this.f16453H = h8;
        this.f16454I = zv;
        this.f16455J = c1242e8;
        this.f16456K = aVar;
        this.f16457L = hVar;
        this.f16458M = aVar2;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.f16449E0 = windowManager;
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        this.f16459N = displayMetrics;
        this.f16460O = displayMetrics.density;
        this.f16450F0 = c2173w6;
        this.f16461P = ov;
        this.f16462Q = qv;
        this.f16493y0 = new C3059w(c1265eg.f18540a, this, this);
        this.f16452G0 = false;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e8) {
            p120p3.h.e("Unable to enable Javascript.", e8);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        J7 j8 = Q7.Ua;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        p083k3.l lVar = p083k3.l.f25980A;
        settings.setUserAgentString(lVar.f25983c.w(c1265eg, aVar.f28196G));
        Context context = getContext();
        p113o3.r.l(context, new p113o3.F(settings, context, i8));
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        R0();
        addJavascriptInterface(new C0962Vf(this, new L9(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        C2218x c2218x = this.f16489u0;
        if (c2218x != null) {
            W7 w7 = (W7) c2218x.f21780I;
            C0848Nd c0848NdC = lVar.f25987g.c();
            if (c0848NdC != null) {
                ((BlockingQueue) c0848NdC.f14911a).offer(w7);
            }
        }
        C2218x c2218x2 = new C2218x(new W7(this.f16470b0));
        this.f16489u0 = c2218x2;
        synchronized (((W7) c2218x2.f21780I).f17173c) {
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15639I1)).booleanValue() && (qv2 = this.f16462Q) != null && (str2 = qv2.f16150b) != null) {
            ((W7) c2218x2.f21780I).b("gqi", str2);
        }
        U7 u7D = W7.d();
        this.f16487s0 = u7D;
        ((Map) c2218x2.f21779H).put("native:view_create", u7D);
        this.f16488t0 = null;
        this.f16486r0 = null;
        if (T1.a.f6517H == null) {
            T1.a.f6517H = new T1.a();
        }
        T1.a aVar3 = T1.a.f6517H;
        aVar3.getClass();
        p113o3.I.k("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(c1265eg);
        if (!defaultUserAgent.equals(aVar3.f6518G)) {
            if (J3.j.a(c1265eg) == null) {
                c1265eg.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(c1265eg)).apply();
            }
            aVar3.f6518G = defaultUserAgent;
        }
        p113o3.I.k("User agent is updated.");
        lVar.f25987g.f19814j.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void A() {
        p113o3.I.k("Destroying WebView!");
        S0();
        p113o3.O.f27924l.post(new RunnableC0878Pf(this, 18));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Zv A0() {
        return this.f16454I;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized p105n3.k B() {
        return this.f16466U;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void B0() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean C0(int i8, boolean z7) {
        destroy();
        G.c cVar = new G.c();
        cVar.f3280H = z7;
        cVar.f3279G = i8;
        C2173w6 c2173w6 = this.f16450F0;
        c2173w6.a(cVar);
        c2173w6.b(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Context D() {
        return this.f16451G.f18542c;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void D0(String str, N9 n9) {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        if (abstractC0990Xf != null) {
            synchronized (abstractC0990Xf.f17460J) {
                try {
                    List list = (List) abstractC0990Xf.f17459I.get(str);
                    if (list == null) {
                        return;
                    }
                    list.remove(n9);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final synchronized Boolean E() {
        return this.f16475g0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized boolean E0() {
        return this.f16471c0;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        boolean z7;
        synchronized (this) {
            z7 = f8.f13321j;
            this.f16479k0 = z7;
        }
        U0(z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void F0() {
        C3059w c3059w = this.f16493y0;
        c3059w.f26405f = true;
        if (c3059w.f26404e) {
            c3059w.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void G0(boolean z7) {
        try {
            boolean z8 = this.f16473e0;
            this.f16473e0 = z7;
            R0();
            if (z7 != z8) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15676N)).booleanValue()) {
                    if (!this.f16469a0.b()) {
                    }
                }
                try {
                    b(new JSONObject().put("state", true != z7 ? "default" : "expanded"), "onStateChanged");
                } catch (JSONException e8) {
                    p120p3.h.e("Error occurred while dispatching state change.", e8);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void H(String str) {
        if (a0()) {
            p120p3.h.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            evaluateJavascript(str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void H0(C1637lq c1637lq) {
        this.f16468W = c1637lq;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized L8 I() {
        return this.f16481m0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void I0(ViewTreeObserverOnGlobalLayoutListenerC0752Gm viewTreeObserverOnGlobalLayoutListenerC0752Gm) {
        this.f16482n0 = viewTreeObserverOnGlobalLayoutListenerC0752Gm;
    }

    public final void J(String str) {
        if (E() == null) {
            synchronized (this) {
                try {
                    Boolean boolF = p083k3.l.f25980A.f25987g.f();
                    this.f16475g0 = boolF;
                    if (boolF == null) {
                        try {
                            evaluateJavascript("(function(){})()", null);
                            v0(Boolean.TRUE);
                        } catch (IllegalStateException unused) {
                            v0(Boolean.FALSE);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (E().booleanValue()) {
            H(str);
        } else {
            Y("javascript:".concat(str));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean J0() {
        return false;
    }

    public final /* synthetic */ void K(String str, ValueCallback valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void K0(boolean z7) {
        p105n3.k kVar;
        int i8 = this.f16484p0 + (true != z7 ? -1 : 1);
        this.f16484p0 = i8;
        if (i8 > 0 || (kVar = this.f16466U) == null) {
            return;
        }
        kVar.A0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final D4.b L() {
        C1242e8 c1242e8 = this.f16455J;
        return c1242e8 == null ? Cw.N1(null) : (AbstractC1040aC) Cw.e2(AbstractC1040aC.r(Cw.N1(null)), ((Long) AbstractC1864q8.f20549c.l()).longValue(), TimeUnit.MILLISECONDS, c1242e8.f18486c);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void L0(String str, N9 n9) {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        if (abstractC0990Xf != null) {
            abstractC0990Xf.m(str, n9);
        }
    }

    public final /* synthetic */ void M(String str) {
        super.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void M0(C2218x c2218x) {
        this.f16481m0 = c2218x;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized C1637lq N() {
        return this.f16468W;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0043  */
    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void N0() {
        float f8;
        HashMap map = new HashMap(3);
        p083k3.l lVar = p083k3.l.f25980A;
        map.put("app_muted", String.valueOf(lVar.f25988h.d()));
        map.put("app_volume", String.valueOf(lVar.f25988h.a()));
        AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
        if (audioManager == null) {
            f8 = 0.0f;
        } else {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            if (streamMaxVolume != 0) {
                f8 = streamVolume / streamMaxVolume;
            } else {
                f8 = 0.0f;
            }
        }
        map.put("device_volume", String.valueOf(f8));
        w("volume", map);
    }

    public final /* synthetic */ void O() {
        super.loadUrl("about:blank");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void O0(boolean z7) {
        p105n3.k kVar = this.f16466U;
        if (kVar != null) {
            kVar.F3(this.f16465T.v(), z7);
        } else {
            this.f16471c0 = z7;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void P() {
        if (this.f16486r0 == null) {
            C2218x c2218x = this.f16489u0;
            S3.e.v((W7) c2218x.f21780I, this.f16487s0, "aes2");
            U7 u7D = W7.d();
            this.f16486r0 = u7D;
            ((Map) c2218x.f21779H).put("native:view_show", u7D);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.f16456K.f28196G);
        w("onshow", map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized boolean P0() {
        return this.f16476h0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final WebViewClient Q() {
        return this.f16465T;
    }

    public final boolean Q0() {
        int iRound;
        int iRound2;
        if (this.f16465T.v() || this.f16465T.w()) {
            p120p3.d dVar = C3097p.f26618f.f26619a;
            DisplayMetrics displayMetrics = this.f16459N;
            int iRound3 = Math.round(displayMetrics.widthPixels / displayMetrics.density);
            int iRound4 = Math.round(displayMetrics.heightPixels / displayMetrics.density);
            Activity activity = this.f16451G.f18540a;
            if (activity == null || activity.getWindow() == null) {
                iRound = iRound3;
                iRound2 = iRound4;
            } else {
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                int[] iArrM = p113o3.O.m(activity);
                iRound = Math.round(iArrM[0] / displayMetrics.density);
                iRound2 = Math.round(iArrM[1] / displayMetrics.density);
            }
            int i8 = this.f16445A0;
            if (i8 != iRound3 || this.f16494z0 != iRound4 || this.f16446B0 != iRound || this.f16447C0 != iRound2) {
                boolean z7 = (i8 == iRound3 && this.f16494z0 == iRound4) ? false : true;
                this.f16445A0 = iRound3;
                this.f16494z0 = iRound4;
                this.f16446B0 = iRound;
                this.f16447C0 = iRound2;
                new C2218x(14, this, HttpUrl.FRAGMENT_ENCODE_SET).m(iRound3, iRound4, iRound, iRound2, displayMetrics.density, this.f16449E0.getDefaultDisplay().getRotation());
                return z7;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void R() {
        S3.e.v((W7) this.f16489u0.f21780I, this.f16487s0, "aeh2");
        HashMap map = new HashMap(1);
        map.put("version", this.f16456K.f28196G);
        w("onhide", map);
    }

    public final synchronized void R0() {
        Ov ov = this.f16461P;
        if (ov != null && ov.f15271m0) {
            p120p3.h.b("Disabling hardware acceleration on an overlay.");
            T0();
            return;
        }
        if (!this.f16473e0 && !this.f16469a0.b()) {
            p120p3.h.b("Enabling hardware acceleration on an AdView.");
            V0();
            return;
        }
        p120p3.h.b("Enabling hardware acceleration on an overlay.");
        V0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized C1689mq S() {
        return this.f16467V;
    }

    public final synchronized void S0() {
        if (this.f16492x0) {
            return;
        }
        this.f16492x0 = true;
        p083k3.l.f25980A.f25987g.f19814j.decrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final H4 T() {
        return this.f16453H;
    }

    public final synchronized void T0() {
        try {
            if (!this.f16474f0) {
                setLayerType(1, null);
            }
            this.f16474f0 = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Qv U() {
        return this.f16462Q;
    }

    public final void U0(boolean z7) {
        HashMap map = new HashMap();
        map.put("isVisible", true != z7 ? "0" : "1");
        w("onAdVisibilityChanged", map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void V(String str, K4 k8) {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        if (abstractC0990Xf != null) {
            synchronized (abstractC0990Xf.f17460J) {
                try {
                    List<N9> list = (List) abstractC0990Xf.f17459I.get(str);
                    if (list == null) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (N9 n9 : list) {
                        if (n9 instanceof C2192wa) {
                            if (((C2192wa) n9).f21697G.equals((N9) k8.f14301H)) {
                                arrayList.add(n9);
                            }
                        }
                    }
                    list.removeAll(arrayList);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final synchronized void V0() {
        try {
            if (this.f16474f0) {
                setLayerType(0, null);
            }
            this.f16474f0 = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void W(boolean z7) {
        this.f16476h0 = z7;
    }

    public final synchronized void W0() {
        try {
            p113o3.O.f27924l.post(new RunnableC0906Rf(this, "about:blank", 0));
        } catch (Throwable th) {
            p083k3.l.f25980A.f25987g.i("AdWebViewImpl.loadUrlUnsafe", th);
            p120p3.h.h("Could not call loadUrl in destroy(). ", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void X(int i8, boolean z7, boolean z8) {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        InterfaceC0715Ef interfaceC0715Ef = abstractC0990Xf.f17457G;
        boolean zG = AbstractC0990Xf.G(interfaceC0715Ef.j0(), interfaceC0715Ef);
        boolean z9 = true;
        if (!zG && z8) {
            z9 = false;
        }
        abstractC0990Xf.S0(new AdOverlayInfoParcel(zG ? null : abstractC0990Xf.f17461K, abstractC0990Xf.f17462L, abstractC0990Xf.f17476Z, interfaceC0715Ef, z7, i8, interfaceC0715Ef.zzn(), z9 ? null : abstractC0990Xf.f17467Q, (interfaceC0715Ef.f() == null || !interfaceC0715Ef.f().f15263i0) ? null : abstractC0990Xf.f17486j0));
    }

    public final synchronized void X0() {
        try {
            HashMap map = this.f16448D0;
            if (map != null) {
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    ((AbstractC1522jf) it.next()).j();
                }
            }
            this.f16448D0 = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void Y(String str) {
        if (a0()) {
            p120p3.h.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void Z(int i8) {
        p105n3.k kVar = this.f16466U;
        if (kVar != null) {
            kVar.z3(i8);
        }
    }

    @Override // p083k3.h
    public final synchronized void a() {
        p083k3.h hVar = this.f16457L;
        if (hVar != null) {
            hVar.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized boolean a0() {
        return this.f16472d0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final void b(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        StringBuilder sbQ = com.google.protobuf.U2.q("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        p120p3.h.b("Dispatching AFMA event: ".concat(sbQ.toString()));
        J(sbQ.toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void b0(p105n3.f fVar, boolean z7, boolean z8) {
        this.f16465T.R0(fVar, z7, z8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void c(String str) {
        J(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void c0(boolean z7, int i8, String str, boolean z8, boolean z9) {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        InterfaceC0715Ef interfaceC0715Ef = abstractC0990Xf.f17457G;
        boolean zJ0 = interfaceC0715Ef.j0();
        boolean zG = AbstractC0990Xf.G(zJ0, interfaceC0715Ef);
        boolean z10 = true;
        if (!zG && z8) {
            z10 = false;
        }
        abstractC0990Xf.S0(new AdOverlayInfoParcel(zG ? null : abstractC0990Xf.f17461K, zJ0 ? null : new C0745Gf(interfaceC0715Ef, abstractC0990Xf.f17462L), abstractC0990Xf.f17465O, abstractC0990Xf.f17466P, abstractC0990Xf.f17476Z, interfaceC0715Ef, z7, i8, str, interfaceC0715Ef.zzn(), z10 ? null : abstractC0990Xf.f17467Q, (interfaceC0715Ef.f() == null || !interfaceC0715Ef.f().f15263i0) ? null : abstractC0990Xf.f17486j0, z9));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void d(String str, String str2) {
        J(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void d0(boolean z7) {
        this.f16465T.f17484h0 = z7;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void destroy() {
        View decorView;
        try {
            C2218x c2218x = this.f16489u0;
            if (c2218x != null) {
                W7 w7 = (W7) c2218x.f21780I;
                C0848Nd c0848NdC = p083k3.l.f25980A.f25987g.c();
                if (c0848NdC != null) {
                    ((BlockingQueue) c0848NdC.f14911a).offer(w7);
                }
            }
            C3059w c3059w = this.f16493y0;
            c3059w.f26405f = false;
            Activity activity = (Activity) c3059w.f26401b;
            if (activity != null && c3059w.f26403d) {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = (ViewTreeObserver.OnGlobalLayoutListener) c3059w.f26402c;
                Window window = activity.getWindow();
                ViewTreeObserver viewTreeObserver = (window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
                }
                c3059w.f26403d = false;
            }
            p105n3.k kVar = this.f16466U;
            if (kVar != null) {
                kVar.zzb();
                this.f16466U.zzm();
                this.f16466U = null;
            }
            this.f16467V = null;
            this.f16468W = null;
            this.f16465T.O();
            this.f16483o0 = null;
            this.f16457L = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.f16472d0) {
                return;
            }
            p083k3.l.f25980A.f26005y.b(this);
            X0();
            this.f16472d0 = true;
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.ba)).booleanValue()) {
                p113o3.I.k("Destroying the WebView immediately...");
                A();
            } else {
                p113o3.I.k("Initiating WebView self destruct sequence in 3...");
                p113o3.I.k("Loading blank page in WebView, 2...");
                W0();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized AbstractC1522jf e(String str) {
        HashMap map = this.f16448D0;
        if (map == null) {
            return null;
        }
        return (AbstractC1522jf) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void e0(C1689mq c1689mq) {
        this.f16467V = c1689mq;
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(String str, ValueCallback valueCallback) {
        if (a0()) {
            p120p3.h.i("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.ca)).booleanValue() || Looper.getMainLooper().getThread() == Thread.currentThread()) {
            super.evaluateJavascript(str, valueCallback);
        } else {
            AbstractC1988se.f20910e.a(new K.a(this, str, valueCallback, 20, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Ov f() {
        return this.f16461P;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void f0(Context context) {
        C1265eg c1265eg = this.f16451G;
        c1265eg.setBaseContext(context);
        this.f16493y0.f26401b = c1265eg.f18540a;
    }

    public final void finalize() throws Throwable {
        try {
            synchronized (this) {
                try {
                    if (!this.f16472d0) {
                        this.f16465T.O();
                        p083k3.l.f25980A.f26005y.b(this);
                        X0();
                        S0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            super.finalize();
        } catch (Throwable th2) {
            super.finalize();
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void g(JSONObject jSONObject, String str) {
        d(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void g0(p105n3.k kVar) {
        this.f16491w0 = kVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized void h(String str, AbstractC1522jf abstractC1522jf) {
        try {
            if (this.f16448D0 == null) {
                this.f16448D0 = new HashMap();
            }
            this.f16448D0.put(str, abstractC1522jf);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final WebView h0() {
        return this;
    }

    @Override // p083k3.h
    public final synchronized void i() {
        p083k3.h hVar = this.f16457L;
        if (hVar != null) {
            hVar.i();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void i0(BinderC1228dv binderC1228dv) {
        this.f16483o0 = binderC1228dv;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC1111bg
    public final View j() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized boolean j0() {
        return this.f16473e0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized void k(BinderC0948Uf binderC0948Uf) {
        if (this.f16478j0 != null) {
            p120p3.h.d("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.f16478j0 = binderC0948Uf;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void k0() {
        p113o3.I.k("Cannot add text view to inner AdWebView");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized A2.i l() {
        return this.f16469a0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void l0(Ov ov, Qv qv) {
        this.f16461P = ov;
        this.f16462Q = qv;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void loadData(String str, String str2, String str3) {
        if (a0()) {
            p120p3.h.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (a0()) {
            p120p3.h.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void loadUrl(String str) {
        if (a0()) {
            p120p3.h.g("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            p113o3.O.f27924l.post(new RunnableC0906Rf(this, str, 1));
        } catch (Throwable th) {
            p083k3.l.f25980A.f25987g.i("AdWebViewImpl.loadUrl", th);
            p120p3.h.h("Could not call loadUrl. ", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void m(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void m0(int i8) {
        C2218x c2218x = this.f16489u0;
        U7 u7 = this.f16487s0;
        if (i8 == 0) {
            S3.e.v((W7) c2218x.f21780I, u7, "aebb2");
        }
        S3.e.v((W7) c2218x.f21780I, u7, "aeh2");
        c2218x.getClass();
        ((W7) c2218x.f21780I).b("close_type", String.valueOf(i8));
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i8));
        map.put("version", this.f16456K.f28196G);
        w("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void n() {
        p105n3.k kVarB = B();
        if (kVarB != null) {
            kVarB.f27520R.f27506H = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void n0(A2.i iVar) {
        this.f16469a0 = iVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void o() {
        this.f16465T.f17468R = false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized boolean o0() {
        return this.f16484p0 > 0;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final synchronized void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            boolean z7 = true;
            if (!a0()) {
                C3059w c3059w = this.f16493y0;
                c3059w.f26404e = true;
                if (c3059w.f26405f) {
                    c3059w.d();
                }
            }
            if (this.f16452G0) {
                onResume();
                this.f16452G0 = false;
            }
            boolean z8 = this.f16479k0;
            AbstractC0990Xf abstractC0990Xf = this.f16465T;
            if (abstractC0990Xf == null || !abstractC0990Xf.w()) {
                z7 = z8;
            } else {
                if (!this.f16480l0) {
                    this.f16465T.H();
                    this.f16465T.J();
                    this.f16480l0 = true;
                }
                Q0();
            }
            U0(z7);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        AbstractC0990Xf abstractC0990Xf;
        View decorView;
        synchronized (this) {
            try {
                if (!a0()) {
                    C3059w c3059w = this.f16493y0;
                    c3059w.f26404e = false;
                    Activity activity = (Activity) c3059w.f26401b;
                    if (activity != null && c3059w.f26403d) {
                        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = (ViewTreeObserver.OnGlobalLayoutListener) c3059w.f26402c;
                        Window window = activity.getWindow();
                        ViewTreeObserver viewTreeObserver = (window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getViewTreeObserver();
                        if (viewTreeObserver != null) {
                            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
                        }
                        c3059w.f26403d = false;
                    }
                }
                super.onDetachedFromWindow();
                if (this.f16480l0 && (abstractC0990Xf = this.f16465T) != null && abstractC0990Xf.w() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                    this.f16465T.H();
                    this.f16465T.J();
                    this.f16480l0 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        U0(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j8) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.qa)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            p113o3.O.p(getContext(), intent);
        } catch (ActivityNotFoundException e8) {
            p120p3.h.b("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
            p083k3.l.f25980A.f25987g.i("AdWebViewImpl.onDownloadStart: ".concat(String.valueOf(str)), e8);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (a0()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zQ0 = Q0();
        p105n3.k kVarB = B();
        if (kVarB != null && zQ0 && kVarB.f27521S) {
            kVarB.f27521S = false;
            kVarB.b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x007b A[Catch: all -> 0x000f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:11:0x0012, B:13:0x0018, B:15:0x001c, B:20:0x0027, B:25:0x002f, B:27:0x0041, B:30:0x0046, B:32:0x004d, B:36:0x0057, B:39:0x005c, B:42:0x006e, B:50:0x0087, B:44:0x0076, B:47:0x007b, B:55:0x0097, B:57:0x00a9, B:60:0x00ae, B:62:0x00cb, B:64:0x00d4, B:63:0x00d0, B:67:0x00d9, B:69:0x00df, B:72:0x00ea, B:81:0x0110, B:83:0x0117, B:87:0x011e, B:89:0x0130, B:91:0x013e, B:95:0x014b, B:98:0x0150, B:100:0x0196, B:101:0x0199, B:103:0x01a0, B:108:0x01ad, B:110:0x01b3, B:111:0x01b6, B:113:0x01ba, B:114:0x01c3, B:117:0x01ce), top: B:122:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public final synchronized void onMeasure(int i8, int i9) {
        A2.i iVar;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        if (a0()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.f16473e0 && (i10 = (iVar = this.f16469a0).f630a) != 0) {
            if (i10 == 5) {
                super.onMeasure(i8, i9);
                return;
            }
            if (i10 == 4) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15593C3)).booleanValue()) {
                    super.onMeasure(i8, i9);
                    return;
                }
                BinderC0948Uf binderC0948UfZzq = zzq();
                float fZze = binderC0948UfZzq != null ? binderC0948UfZzq.zze() : 0.0f;
                if (fZze == 0.0f) {
                    super.onMeasure(i8, i9);
                    return;
                }
                int size = View.MeasureSpec.getSize(i8);
                int size2 = View.MeasureSpec.getSize(i9);
                float f8 = size2 * fZze;
                int i15 = (int) (size / fZze);
                if (size2 != 0) {
                    i11 = (int) f8;
                    if (size == 0) {
                        i14 = size;
                    } else if (i11 != 0) {
                        i15 = (int) (i11 / fZze);
                        i12 = size2;
                        i13 = i11;
                        i14 = i13;
                    }
                    i12 = size2;
                    i13 = i11;
                } else if (i15 != 0) {
                    i13 = (int) (i15 * fZze);
                    i14 = size;
                    i12 = i15;
                } else {
                    size2 = 0;
                    i11 = (int) f8;
                    if (size == 0) {
                        i14 = size;
                    } else if (i11 != 0) {
                        i15 = (int) (i11 / fZze);
                        i12 = size2;
                        i13 = i11;
                        i14 = i13;
                    }
                    i12 = size2;
                    i13 = i11;
                }
                setMeasuredDimension(Math.min(i13, i14), Math.min(i15, i12));
                return;
            }
            if (i10 == 2) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15633H3)).booleanValue()) {
                    super.onMeasure(i8, i9);
                    return;
                }
                L0("/contentHeight", new E9(this, 7));
                J("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                float f9 = this.f16459N.density;
                int size3 = View.MeasureSpec.getSize(i8);
                int i16 = this.f16485q0;
                setMeasuredDimension(size3, i16 != -1 ? (int) (i16 * f9) : View.MeasureSpec.getSize(i9));
                return;
            }
            if (iVar.b()) {
                DisplayMetrics displayMetrics = this.f16459N;
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
                return;
            }
            int mode = View.MeasureSpec.getMode(i8);
            int size4 = View.MeasureSpec.getSize(i8);
            int mode2 = View.MeasureSpec.getMode(i9);
            int size5 = View.MeasureSpec.getSize(i9);
            int i17 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            int i18 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size4 : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i17 = size5;
            }
            A2.i iVar2 = this.f16469a0;
            boolean z7 = iVar2.f632c > i18 || iVar2.f631b > i17;
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15752W4)).booleanValue()) {
                A2.i iVar3 = this.f16469a0;
                float f10 = iVar3.f632c;
                float f11 = this.f16460O;
                z7 &= f10 / f11 <= ((float) i18) / f11 && ((float) iVar3.f631b) / f11 <= ((float) i17) / f11;
            }
            if (!z7) {
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                if (!this.f16464S) {
                    this.f16450F0.b(10002);
                    this.f16464S = true;
                }
                A2.i iVar4 = this.f16469a0;
                setMeasuredDimension(iVar4.f632c, iVar4.f631b);
                return;
            }
            A2.i iVar5 = this.f16469a0;
            float f12 = iVar5.f632c;
            float f13 = this.f16460O;
            p120p3.h.g("Not enough space to show ad. Needs " + ((int) (f12 / f13)) + "x" + ((int) (iVar5.f631b / f13)) + " dp, but only has " + ((int) (size4 / f13)) + "x" + ((int) (size5 / f13)) + " dp.");
            if (getVisibility() != 8) {
                setVisibility(4);
            }
            setMeasuredDimension(0, 0);
            if (this.f16463R) {
                return;
            }
            this.f16450F0.b(10001);
            this.f16463R = true;
            return;
        }
        super.onMeasure(i8, i9);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void onPause() {
        if (a0()) {
            return;
        }
        try {
            super.onPause();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pb)).booleanValue() && com.bumptech.glide.c.o("MUTE_AUDIO")) {
                p120p3.h.b("Muting webview");
                int i8 = p011b2.e.f9832a;
                if (!p019c2.n.f10638e.b()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                ((WebViewProviderBoundaryInterface) p011b2.e.c(this).f1868H).setAudioMuted(true);
            }
        } catch (Exception e8) {
            p120p3.h.e("Could not pause webview.", e8);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Sb)).booleanValue()) {
                p083k3.l.f25980A.f25987g.i("AdWebViewImpl.onPause", e8);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void onResume() {
        if (a0()) {
            return;
        }
        try {
            super.onResume();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pb)).booleanValue() && com.bumptech.glide.c.o("MUTE_AUDIO")) {
                p120p3.h.b("Unmuting webview");
                int i8 = p011b2.e.f9832a;
                if (!p019c2.n.f10638e.b()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                ((WebViewProviderBoundaryInterface) p011b2.e.c(this).f1868H).setAudioMuted(false);
            }
        } catch (Exception e8) {
            p120p3.h.e("Could not resume webview.", e8);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Sb)).booleanValue()) {
                p083k3.l.f25980A.f25987g.i("AdWebViewImpl.onResume", e8);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f16465T.w() && !this.f16465T.t()) {
            synchronized (this) {
                L8 l8 = this.f16481m0;
                if (l8 != null) {
                    C2218x c2218x = (C2218x) l8;
                    switch (c2218x.f21778G) {
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            ((InterfaceViewOnClickListenerC1220dm) c2218x.f21779H).onTouch(null, motionEvent);
                            break;
                    }
                }
            }
        } else {
            H4 h8 = this.f16453H;
            if (h8 != null) {
                h8.f13700b.zzk(motionEvent);
            }
            C1242e8 c1242e8 = this.f16455J;
            if (c1242e8 != null) {
                if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > c1242e8.f18484a.getEventTime()) {
                    c1242e8.f18484a = MotionEvent.obtain(motionEvent);
                } else if (motionEvent.getAction() == 0 && motionEvent.getEventTime() > c1242e8.f18485b.getEventTime()) {
                    c1242e8.f18485b = MotionEvent.obtain(motionEvent);
                }
            }
        }
        if (a0()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized void p() {
        J8 j8 = this.f16482n0;
        if (j8 != null) {
            p113o3.O.f27924l.post(new RunnableC0878Pf((ViewTreeObserverOnGlobalLayoutListenerC0752Gm) j8, 29));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void p0() {
        this.f16452G0 = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void q() {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        if (abstractC0990Xf != null) {
            abstractC0990Xf.q();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized String q0() {
        return this.f16470b0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized p105n3.k r() {
        return this.f16491w0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void r0(int i8, String str, String str2, boolean z7, boolean z8) {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        InterfaceC0715Ef interfaceC0715Ef = abstractC0990Xf.f17457G;
        boolean zJ0 = interfaceC0715Ef.j0();
        boolean zG = AbstractC0990Xf.G(zJ0, interfaceC0715Ef);
        boolean z9 = true;
        if (!zG && z8) {
            z9 = false;
        }
        abstractC0990Xf.S0(new AdOverlayInfoParcel(zG ? null : abstractC0990Xf.f17461K, zJ0 ? null : new C0745Gf(interfaceC0715Ef, abstractC0990Xf.f17462L), abstractC0990Xf.f17465O, abstractC0990Xf.f17466P, abstractC0990Xf.f17476Z, interfaceC0715Ef, z7, i8, str, str2, interfaceC0715Ef.zzn(), z9 ? null : abstractC0990Xf.f17467Q, (interfaceC0715Ef.f() == null || !interfaceC0715Ef.f().f15263i0) ? null : abstractC0990Xf.f17486j0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized String s() {
        return this.f16477i0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void s0(String str, String str2) {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        abstractC0990Xf.getClass();
        InterfaceC0715Ef interfaceC0715Ef = abstractC0990Xf.f17457G;
        abstractC0990Xf.S0(new AdOverlayInfoParcel(interfaceC0715Ef, interfaceC0715Ef.zzn(), str, str2, abstractC0990Xf.f17486j0));
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof AbstractC0990Xf) {
            this.f16465T = (AbstractC0990Xf) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (a0()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e8) {
            p120p3.h.e("Could not stop loading webview.", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final int t() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final ArrayList t0() {
        return new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void u() {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        if (abstractC0990Xf != null) {
            abstractC0990Xf.u();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void u0() {
        if (this.f16488t0 == null) {
            C2218x c2218x = this.f16489u0;
            c2218x.getClass();
            U7 u7D = W7.d();
            this.f16488t0 = u7D;
            ((Map) c2218x.f21779H).put("native:view_load", u7D);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized void v(int i8) {
        this.f16490v0 = i8;
    }

    public final void v0(Boolean bool) {
        synchronized (this) {
            this.f16475g0 = bool;
        }
        p083k3.l.f25980A.f25987g.k(bool);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final void w(String str, Map map) {
        try {
            b(C3097p.f26618f.f26619a.i(map), str);
        } catch (JSONException unused) {
            p120p3.h.g("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void w0(String str, String str2) {
        String str3;
        try {
            if (a0()) {
                p120p3.h.g("#004 The webview is destroyed. Ignoring action.");
                return;
            }
            String[] strArr = new String[1];
            String str4 = (String) C3099q.f26624d.f26627c.a(Q7.f15668M);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", str4);
                jSONObject.put("sdk", "Google Mobile Ads");
                jSONObject.put("sdkVersion", "12.4.51-000");
                str3 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
            } catch (JSONException e8) {
                p120p3.h.h("Unable to build MRAID_ENV", e8);
                str3 = null;
            }
            strArr[0] = str3;
            super.loadDataWithBaseURL(str, AbstractC1018Zf.b(str2, strArr), "text/html", "UTF-8", null);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        AbstractC0990Xf abstractC0990Xf = this.f16465T;
        if (abstractC0990Xf != null) {
            abstractC0990Xf.x();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void x0(boolean z7) {
        if (z7) {
            try {
                setBackgroundColor(0);
            } catch (Throwable th) {
                throw th;
            }
        }
        p105n3.k kVar = this.f16466U;
        if (kVar != null) {
            if (z7) {
                kVar.f27520R.setBackgroundColor(0);
            } else {
                kVar.f27520R.setBackgroundColor(-16777216);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void y(long j8, boolean z7) {
        HashMap map = new HashMap(2);
        map.put("success", true != z7 ? "0" : "1");
        map.put("duration", Long.toString(j8));
        w("onCacheAccessComplete", map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized X5 y0() {
        return this.f16483o0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final synchronized void z0(p105n3.k kVar) {
        this.f16466U = kVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final /* synthetic */ AbstractC0990Xf zzN() {
        return this.f16465T;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized int zzf() {
        return this.f16490v0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final int zzh() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0976Wf, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final Activity zzi() {
        return this.f16451G.f18540a;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final p083k3.a zzj() {
        return this.f16458M;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final U7 zzk() {
        return this.f16487s0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final C2218x zzm() {
        return this.f16489u0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final p120p3.a zzn() {
        return this.f16456K;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final C2246xc zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized BinderC0948Uf zzq() {
        return this.f16478j0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final synchronized String zzr() {
        Qv qv = this.f16462Q;
        if (qv == null) {
            return null;
        }
        return qv.f16150b;
    }
}
