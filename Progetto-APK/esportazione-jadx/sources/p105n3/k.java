package p105n3;

import A2.i;
import B0.w0;
import F2.G;
import R3.b;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.AbstractBinderC1469ic;
import com.google.android.gms.internal.ads.AbstractC0990Xf;
import com.google.android.gms.internal.ads.Bx;
import com.google.android.gms.internal.ads.C1121bq;
import com.google.android.gms.internal.ads.C1637lq;
import com.google.android.gms.internal.ads.C1689mq;
import com.google.android.gms.internal.ads.C2173w6;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.C2267xx;
import com.google.android.gms.internal.ads.C2272y1;
import com.google.android.gms.internal.ads.EnumC2215wx;
import com.google.android.gms.internal.ads.F9;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.InterfaceC1162cg;
import com.google.android.gms.internal.ads.InterfaceC1210dc;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.O7;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RunnableC1170co;
import com.google.android.gms.internal.ads.RunnableC1482iq;
import java.util.Collections;
import okhttp3.internal.http2.Http2Connection;
import p000a.f;
import p021c4.C0621y;
import p039f.ViewOnClickListenerC2988c;
import p072j0.c;
import p083k3.g;
import p083k3.l;
import p090l3.C3099q;
import p113o3.I;
import p113o3.J;
import p113o3.O;
import p120p3.a;
import p120p3.h;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends AbstractBinderC1469ic implements e {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final int f27509d0 = Color.argb(0, 0, 0, 0);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Activity f27510H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public AdOverlayInfoParcel f27511I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public InterfaceC0715Ef f27512J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public w0 f27513K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public n f27514L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public FrameLayout f27516N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public WebChromeClient.CustomViewCallback f27517O;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public i f27520R;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public f f27524V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f27525W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f27526X;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Toolbar f27530b0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f27515M = false;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f27518P = false;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f27519Q = false;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f27521S = false;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f27531c0 = 1;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Object f27522T = new Object();

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final ViewOnClickListenerC2988c f27523U = new ViewOnClickListenerC2988c(this, 5);

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f27527Y = false;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f27528Z = false;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f27529a0 = true;

    public k(Activity activity) {
        this.f27510H = activity;
    }

    public static final void D3(View view, C1689mq c1689mq) {
        if (c1689mq == null || view == null) {
            return;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15642I4)).booleanValue() && ((EnumC2215wx) c1689mq.f20003b.f26380g) == EnumC2215wx.HTML) {
            return;
        }
        l.f25980A.f26002v.getClass();
        C0621y.e(c1689mq.f20002a, view);
    }

    public final void A0() {
        synchronized (this.f27522T) {
            try {
                this.f27525W = true;
                f fVar = this.f27524V;
                if (fVar != null) {
                    J j8 = O.f27924l;
                    j8.removeCallbacks(fVar);
                    j8.post(this.f27524V);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    public final void A3(boolean z7) throws h {
        boolean z8;
        InterfaceC1210dc interfaceC1210dc;
        boolean z9 = this.f27526X;
        Activity activity = this.f27510H;
        if (!z9) {
            activity.requestWindowFeature(1);
        }
        Window window = activity.getWindow();
        if (window == null) {
            throw new h("Invalid activity, no window available.");
        }
        InterfaceC0715Ef interfaceC0715Ef = this.f27511I.f11640J;
        AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef != null ? interfaceC0715Ef.zzN() : null;
        boolean z10 = abstractC0990XfZzN != null && abstractC0990XfZzN.v();
        this.f27521S = false;
        if (z10) {
            int i8 = this.f27511I.f11646P;
            if (i8 == 6) {
                z8 = activity.getResources().getConfiguration().orientation == 1;
                this.f27521S = z8;
            } else if (i8 == 7) {
                z8 = activity.getResources().getConfiguration().orientation == 2;
                this.f27521S = z8;
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        h.b("Delay onShow to next orientation change: " + z8);
        z3(this.f27511I.f11646P);
        window.setFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        h.b("Hardware acceleration on the AdActivity window enabled.");
        if (this.f27519Q) {
            this.f27520R.setBackgroundColor(f27509d0);
        } else {
            this.f27520R.setBackgroundColor(-16777216);
        }
        activity.setContentView(this.f27520R);
        this.f27526X = true;
        if (z7) {
            try {
                C2272y1 c2272y1 = l.f25980A.f25984d;
                Activity activity2 = this.f27510H;
                InterfaceC0715Ef interfaceC0715Ef2 = this.f27511I.f11640J;
                i iVarL = interfaceC0715Ef2 != null ? interfaceC0715Ef2.l() : null;
                InterfaceC0715Ef interfaceC0715Ef3 = this.f27511I.f11640J;
                String strQ0 = interfaceC0715Ef3 != null ? interfaceC0715Ef3.q0() : null;
                AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
                a aVar = adOverlayInfoParcel.f11649S;
                InterfaceC0715Ef interfaceC0715Ef4 = adOverlayInfoParcel.f11640J;
                InterfaceC0715Ef interfaceC0715EfE = C2272y1.e(activity2, iVarL, aVar, interfaceC0715Ef4 != null ? interfaceC0715Ef4.zzj() : null, null, null, new C2173w6(), null, null, null, null, null, strQ0, true, z10);
                this.f27512J = interfaceC0715EfE;
                AbstractC0990Xf abstractC0990XfZzN2 = interfaceC0715EfE.zzN();
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f27511I;
                F9 f9 = adOverlayInfoParcel2.f11652V;
                InterfaceC0715Ef interfaceC0715Ef5 = adOverlayInfoParcel2.f11640J;
                abstractC0990XfZzN2.y(null, f9, null, adOverlayInfoParcel2.f11641K, adOverlayInfoParcel2.f11645O, true, null, interfaceC0715Ef5 != null ? interfaceC0715Ef5.zzN().f17478b0 : null, null, null, null, null, null, null, null, null, null, null, null);
                this.f27512J.zzN().f17463M = new InterfaceC1162cg() { // from class: n3.g
                    @Override // com.google.android.gms.internal.ads.InterfaceC1162cg
                    public final void g(String str, int i9, String str2, boolean z11) {
                        InterfaceC0715Ef interfaceC0715Ef6 = this.f27504G.f27512J;
                        if (interfaceC0715Ef6 != null) {
                            interfaceC0715Ef6.P();
                        }
                    }
                };
                AdOverlayInfoParcel adOverlayInfoParcel3 = this.f27511I;
                String str = adOverlayInfoParcel3.f11648R;
                if (str != null) {
                    this.f27512J.loadUrl(str);
                } else {
                    String str2 = adOverlayInfoParcel3.f11644N;
                    if (str2 == null) {
                        throw new h("No URL or HTML to display in ad overlay.");
                    }
                    this.f27512J.loadDataWithBaseURL(adOverlayInfoParcel3.f11642L, str2, "text/html", "UTF-8", null);
                }
                InterfaceC0715Ef interfaceC0715Ef6 = this.f27511I.f11640J;
                if (interfaceC0715Ef6 != null) {
                    interfaceC0715Ef6.g0(this);
                }
            } catch (Exception e8) {
                h.e("Error obtaining webview.", e8);
                throw new h("Could not obtain webview for the overlay.", e8);
            }
        } else {
            InterfaceC0715Ef interfaceC0715Ef7 = this.f27511I.f11640J;
            this.f27512J = interfaceC0715Ef7;
            interfaceC0715Ef7.f0(activity);
        }
        if (this.f27511I.f11659c0) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this.f27512J.h0(), false);
        }
        this.f27512J.z0(this);
        InterfaceC0715Ef interfaceC0715Ef8 = this.f27511I.f11640J;
        if (interfaceC0715Ef8 != null) {
            D3(this.f27520R, interfaceC0715Ef8.S());
        }
        if (this.f27511I.f11647Q != 5) {
            ViewParent parent = this.f27512J.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this.f27512J.j());
            }
            if (this.f27519Q) {
                this.f27512J.B0();
            }
            if (!this.f27511I.f11659c0 || Build.VERSION.SDK_INT < 24) {
                this.f27520R.addView(this.f27512J.j(), -1, -1);
            } else {
                Toolbar toolbar = new Toolbar(activity);
                this.f27530b0 = toolbar;
                toolbar.setId(View.generateViewId());
                this.f27512J.j().setId(View.generateViewId());
                this.f27530b0.setBackgroundColor(-12303292);
                this.f27530b0.setVisibility(0);
                try {
                    this.f27530b0.setNavigationIcon(l.f25980A.f25987g.b().getDrawable(R.drawable.admob_close_button_white_cross, null));
                } catch (Resources.NotFoundException | NullPointerException e9) {
                    I.l("Error obtaining close icon.", e9);
                }
                this.f27530b0.setNavigationOnClickListener(this.f27523U);
                this.f27530b0.setTitleMarginStart(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(10);
                this.f27520R.addView(this.f27530b0, layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams2.addRule(3, this.f27530b0.getId());
                layoutParams2.addRule(12);
                this.f27520R.addView(this.f27512J.j(), layoutParams2);
                B3(this.f27530b0);
            }
        }
        if (!z7 && !this.f27521S) {
            b();
        }
        if (this.f27511I.f11647Q != 5) {
            E3(z10);
            if (this.f27512J.E0()) {
                F3(z10, true);
                return;
            }
            return;
        }
        AdOverlayInfoParcel adOverlayInfoParcel4 = this.f27511I;
        C1121bq c1121bq = new C1121bq(activity, this, adOverlayInfoParcel4.f11653W, adOverlayInfoParcel4.f11654X);
        try {
            AdOverlayInfoParcel adOverlayInfoParcel5 = this.f27511I;
            if (adOverlayInfoParcel5 == null || (interfaceC1210dc = adOverlayInfoParcel5.f11658b0) == null) {
                throw new h("noioou");
            }
            interfaceC1210dc.w3(new b(c1121bq));
        } catch (RemoteException | h e10) {
            throw new h(e10.getMessage(), e10);
        }
    }

    public final void B3(ViewGroup viewGroup) {
        C1689mq c1689mqS;
        C1637lq c1637lqN;
        J7 j8 = Q7.f15650J4;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && (c1637lqN = this.f27512J.N()) != null) {
            synchronized (c1637lqN) {
                Bx bx = c1637lqN.f19858f;
                if (bx != null) {
                    l.f25980A.f26002v.getClass();
                    C0621y.k(new RunnableC1170co(3, bx, viewGroup));
                }
            }
            return;
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15642I4)).booleanValue() && (c1689mqS = this.f27512J.S()) != null && ((EnumC2215wx) c1689mqS.f20003b.f26380g) == EnumC2215wx.HTML) {
            C0621y c0621y = l.f25980A.f26002v;
            C2267xx c2267xx = c1689mqS.f20002a;
            c0621y.getClass();
            C0621y.k(new RunnableC1482iq(c2267xx, viewGroup, 0));
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    /* JADX WARN: Code duplicated, block: B:17:0x0036 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0038  */
    public final void C3(Configuration configuration) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        g gVar;
        int i8;
        g gVar2;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f27511I;
        boolean z7 = true;
        boolean z8 = false;
        boolean z9 = (adOverlayInfoParcel2 == null || (gVar2 = adOverlayInfoParcel2.f11651U) == null || !gVar2.f25959H) ? false : true;
        G g8 = l.f25980A.f25985e;
        Activity activity = this.f27510H;
        boolean zQ = g8.Q(activity, configuration);
        if (!this.f27519Q || z9) {
            if (zQ) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15978y0)).booleanValue()) {
                    z7 = false;
                }
            }
            adOverlayInfoParcel = this.f27511I;
            if (adOverlayInfoParcel != null && (gVar = adOverlayInfoParcel.f11651U) != null && gVar.f25964M) {
                z8 = true;
            }
        } else if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15986z0)).booleanValue()) {
            if (zQ) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15978y0)).booleanValue()) {
                    z7 = false;
                }
            }
            adOverlayInfoParcel = this.f27511I;
            if (adOverlayInfoParcel != null) {
                z8 = true;
            }
        } else {
            z7 = false;
        }
        Window window = activity.getWindow();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15756X0)).booleanValue()) {
            View decorView = window.getDecorView();
            if (z7) {
                i8 = z8 ? 5894 : 5380;
            } else {
                i8 = 256;
            }
            decorView.setSystemUiVisibility(i8);
            return;
        }
        if (!z7) {
            window.addFlags(2048);
            window.clearFlags(1024);
            return;
        }
        window.addFlags(1024);
        window.clearFlags(2048);
        if (z8) {
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    public final void E3(boolean z7) {
        if (this.f27511I.f11659c0) {
            return;
        }
        J7 j8 = Q7.f15990z4;
        C3099q c3099q = C3099q.f26624d;
        int iIntValue = ((Integer) c3099q.f26627c.a(j8)).intValue();
        boolean z8 = ((Boolean) c3099q.f26627c.a(Q7.f15725T0)).booleanValue() || z7;
        c cVar = new c(3);
        cVar.f25663J = 50;
        cVar.f25660G = true != z8 ? 0 : iIntValue;
        cVar.f25661H = true != z8 ? iIntValue : 0;
        cVar.f25662I = iIntValue;
        this.f27514L = new n(this.f27510H, cVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(true != z8 ? 9 : 11);
        F3(z7, this.f27511I.f11643M);
        this.f27520R.addView(this.f27514L, layoutParams);
        B3(this.f27514L);
    }

    public final void F3(boolean z7, boolean z8) {
        AdOverlayInfoParcel adOverlayInfoParcel;
        g gVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        g gVar2;
        J7 j8 = Q7.f15709R0;
        C3099q c3099q = C3099q.f26624d;
        boolean z9 = true;
        boolean z10 = ((Boolean) c3099q.f26627c.a(j8)).booleanValue() && (adOverlayInfoParcel2 = this.f27511I) != null && (gVar2 = adOverlayInfoParcel2.f11651U) != null && gVar2.f25965N;
        J7 j9 = Q7.f15717S0;
        O7 o7 = c3099q.f26627c;
        boolean z11 = ((Boolean) o7.a(j9)).booleanValue() && (adOverlayInfoParcel = this.f27511I) != null && (gVar = adOverlayInfoParcel.f11651U) != null && gVar.f25966O;
        if (z7 && z8 && z10 && !z11) {
            new C2218x(14, this.f27512J, "useCustomClose").l("Custom close has been disabled for interstitial ads in this ad slot.");
        }
        n nVar = this.f27514L;
        if (nVar != null) {
            if (!z11 && (!z8 || z10)) {
                z9 = false;
            }
            ImageButton imageButton = nVar.f27541G;
            if (!z9) {
                imageButton.setVisibility(0);
                return;
            }
            imageButton.setVisibility(8);
            if (((Long) o7.a(Q7.f15740V0)).longValue() > 0) {
                imageButton.animate().cancel();
                imageButton.clearAnimation();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final boolean Q() {
        this.f27531c0 = 1;
        if (this.f27512J == null) {
            return true;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.h8)).booleanValue() && this.f27512J.canGoBack()) {
            this.f27512J.goBack();
            return false;
        }
        boolean zP0 = this.f27512J.P0();
        if (!zP0) {
            this.f27512J.w("onbackblocked", Collections.emptyMap());
        }
        return zP0;
    }

    public final void b() {
        this.f27512J.P();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void c2(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f27518P);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void e() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15966w4)).booleanValue()) {
            InterfaceC0715Ef interfaceC0715Ef = this.f27512J;
            if (interfaceC0715Ef == null || interfaceC0715Ef.a0()) {
                h.g("The webview does not exist. Ignoring action.");
            } else {
                this.f27512J.onResume();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void f() {
        this.f27526X = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void h() {
        m mVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
        if (adOverlayInfoParcel == null || (mVar = adOverlayInfoParcel.f11639I) == null) {
            return;
        }
        mVar.k3();
    }

    public final void j() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        m mVar;
        if (!this.f27510H.isFinishing() || this.f27527Y) {
            return;
        }
        this.f27527Y = true;
        InterfaceC0715Ef interfaceC0715Ef = this.f27512J;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.m0(this.f27531c0 - 1);
            synchronized (this.f27522T) {
                try {
                    if (!this.f27525W && this.f27512J.o0()) {
                        J7 j8 = Q7.f15951u4;
                        C3099q c3099q = C3099q.f26624d;
                        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && !this.f27528Z && (adOverlayInfoParcel = this.f27511I) != null && (mVar = adOverlayInfoParcel.f11639I) != null) {
                            mVar.Y();
                        }
                        f fVar = new f(this, 23);
                        this.f27524V = fVar;
                        O.f27924l.postDelayed(fVar, ((Long) c3099q.f26627c.a(Q7.f15701Q0)).longValue());
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        zzc();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void k() {
        m mVar;
        zzg();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
        if (adOverlayInfoParcel != null && (mVar = adOverlayInfoParcel.f11639I) != null) {
            mVar.u3();
        }
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15966w4)).booleanValue() && this.f27512J != null && (!this.f27510H.isFinishing() || this.f27513K == null)) {
            this.f27512J.onPause();
        }
        j();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void k1(int i8, String[] strArr, int[] iArr) {
        if (i8 == 12345) {
            Activity activity = this.f27510H;
            if (activity == null) {
                throw new NullPointerException("Null activity");
            }
            try {
                this.f27511I.f11658b0.Q2(strArr, iArr, new b(new C1121bq(activity, this.f27511I.f11647Q == 5 ? this : null, null, null)));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void n() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15966w4)).booleanValue() && this.f27512J != null && (!this.f27510H.isFinishing() || this.f27513K == null)) {
            this.f27512J.onPause();
        }
        j();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void p1(R3.a aVar) {
        C3((Configuration) b.v0(aVar));
    }

    public final void z3(int i8) {
        int i9;
        Activity activity = this.f27510H;
        int i10 = activity.getApplicationInfo().targetSdkVersion;
        J7 j8 = Q7.f15983y5;
        C3099q c3099q = C3099q.f26624d;
        if (i10 >= ((Integer) c3099q.f26627c.a(j8)).intValue()) {
            int i11 = activity.getApplicationInfo().targetSdkVersion;
            J7 j9 = Q7.f15991z5;
            O7 o7 = c3099q.f26627c;
            if (i11 <= ((Integer) o7.a(j9)).intValue() && (i9 = Build.VERSION.SDK_INT) >= ((Integer) o7.a(Q7.f15579A5)).intValue() && i9 <= ((Integer) o7.a(Q7.f15587B5)).intValue()) {
                return;
            }
        }
        try {
            activity.setRequestedOrientation(i8);
        } catch (Throwable th) {
            l.f25980A.f25987g.h("AdOverlay.setRequestedOrientation", th);
        }
    }

    public final void zzb() {
        this.f27531c0 = 3;
        Activity activity = this.f27510H;
        activity.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.f11647Q != 5) {
            return;
        }
        activity.overridePendingTransition(0, 0);
    }

    public final void zzc() {
        InterfaceC0715Ef interfaceC0715Ef;
        m mVar;
        if (this.f27528Z) {
            return;
        }
        this.f27528Z = true;
        InterfaceC0715Ef interfaceC0715Ef2 = this.f27512J;
        if (interfaceC0715Ef2 != null) {
            this.f27520R.removeView(interfaceC0715Ef2.j());
            w0 w0Var = this.f27513K;
            if (w0Var != null) {
                this.f27512J.f0((Context) w0Var.f1123K);
                this.f27512J.G0(false);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Ub)).booleanValue() && this.f27512J.getParent() != null) {
                    ((ViewGroup) this.f27512J.getParent()).removeView(this.f27512J.j());
                }
                ViewGroup viewGroup = (ViewGroup) this.f27513K.f1122J;
                View viewJ = this.f27512J.j();
                w0 w0Var2 = this.f27513K;
                viewGroup.addView(viewJ, w0Var2.f1120H, (ViewGroup.LayoutParams) w0Var2.f1121I);
                this.f27513K = null;
            } else {
                Activity activity = this.f27510H;
                if (activity.getApplicationContext() != null) {
                    this.f27512J.f0(activity.getApplicationContext());
                }
            }
            this.f27512J = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
        if (adOverlayInfoParcel != null && (mVar = adOverlayInfoParcel.f11639I) != null) {
            mVar.r1(this.f27531c0);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f27511I;
        if (adOverlayInfoParcel2 == null || (interfaceC0715Ef = adOverlayInfoParcel2.f11640J) == null) {
            return;
        }
        D3(this.f27511I.f11640J.j(), interfaceC0715Ef.S());
    }

    public final void zzg() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
        if (adOverlayInfoParcel != null && this.f27515M) {
            z3(adOverlayInfoParcel.f11646P);
        }
        if (this.f27516N != null) {
            this.f27510H.setContentView(this.f27520R);
            this.f27526X = true;
            this.f27516N.removeAllViews();
            this.f27516N = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.f27517O;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.f27517O = null;
        }
        this.f27515M = false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzi() {
        this.f27531c0 = 1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzm() {
        InterfaceC0715Ef interfaceC0715Ef = this.f27512J;
        if (interfaceC0715Ef != null) {
            try {
                this.f27520R.removeView(interfaceC0715Ef.j());
            } catch (NullPointerException unused) {
            }
        }
        j();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzr() {
        m mVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f27511I;
        if (adOverlayInfoParcel != null && (mVar = adOverlayInfoParcel.f11639I) != null) {
            mVar.O2();
        }
        C3(this.f27510H.getResources().getConfiguration());
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15966w4)).booleanValue()) {
            return;
        }
        InterfaceC0715Ef interfaceC0715Ef = this.f27512J;
        if (interfaceC0715Ef == null || interfaceC0715Ef.a0()) {
            h.g("The webview does not exist. Ignoring action.");
        } else {
            this.f27512J.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void Q0(int i8, int i9, Intent intent) {
    }
}
