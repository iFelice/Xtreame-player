package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3099q;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Qf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0892Qf extends FrameLayout implements InterfaceC0715Ef {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0715Ef f16040G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2246xc f16041H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicBoolean f16042I;

    public C0892Qf(ViewTreeObserverOnGlobalLayoutListenerC0920Sf viewTreeObserverOnGlobalLayoutListenerC0920Sf) {
        super(viewTreeObserverOnGlobalLayoutListenerC0920Sf.getContext());
        this.f16042I = new AtomicBoolean();
        this.f16040G = viewTreeObserverOnGlobalLayoutListenerC0920Sf;
        this.f16041H = new C2246xc(viewTreeObserverOnGlobalLayoutListenerC0920Sf.f16451G.f18542c, this, this);
        addView(viewTreeObserverOnGlobalLayoutListenerC0920Sf);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void A() {
        C2246xc c2246xc = this.f16041H;
        c2246xc.getClass();
        com.bumptech.glide.c.d("onDestroy must be called from the UI thread.");
        C0744Ge c0744Ge = (C0744Ge) c2246xc.f21885K;
        if (c0744Ge != null) {
            c0744Ge.f13573K.a();
            AbstractC0699De abstractC0699De = c0744Ge.f13575M;
            if (abstractC0699De != null) {
                abstractC0699De.x();
            }
            c0744Ge.b();
            ((ViewGroup) c2246xc.f21884J).removeView((C0744Ge) c2246xc.f21885K);
            c2246xc.f21885K = null;
        }
        this.f16040G.A();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Zv A0() {
        return this.f16040G.A0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final p105n3.k B() {
        return this.f16040G.B();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void B0() {
        setBackgroundColor(0);
        this.f16040G.setBackgroundColor(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean C0(int i8, boolean z7) {
        if (!this.f16042I.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15614F0)).booleanValue()) {
            return false;
        }
        InterfaceC0715Ef interfaceC0715Ef = this.f16040G;
        if (interfaceC0715Ef.getParent() instanceof ViewGroup) {
            ((ViewGroup) interfaceC0715Ef.getParent()).removeView((View) interfaceC0715Ef);
        }
        interfaceC0715Ef.C0(i8, z7);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Context D() {
        return this.f16040G.D();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void D0(String str, N9 n9) {
        this.f16040G.D0(str, n9);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean E0() {
        return this.f16040G.E0();
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        this.f16040G.F(f8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void F0() {
        this.f16040G.F0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void G0(boolean z7) {
        this.f16040G.G0(z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void H0(C1637lq c1637lq) {
        this.f16040G.H0(c1637lq);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final L8 I() {
        return this.f16040G.I();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void I0(ViewTreeObserverOnGlobalLayoutListenerC0752Gm viewTreeObserverOnGlobalLayoutListenerC0752Gm) {
        this.f16040G.I0(viewTreeObserverOnGlobalLayoutListenerC0752Gm);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean J0() {
        return this.f16042I.get();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void K0(boolean z7) {
        this.f16040G.K0(z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final D4.b L() {
        return this.f16040G.L();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void L0(String str, N9 n9) {
        this.f16040G.L0(str, n9);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void M0(C2218x c2218x) {
        this.f16040G.M0(c2218x);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final C1637lq N() {
        return this.f16040G.N();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void N0() {
        this.f16040G.N0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void O0(boolean z7) {
        this.f16040G.O0(z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void P() {
        this.f16040G.P();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean P0() {
        return this.f16040G.P0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final WebViewClient Q() {
        return this.f16040G.Q();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void R() {
        this.f16040G.R();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final C1689mq S() {
        return this.f16040G.S();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final H4 T() {
        return this.f16040G.T();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Qv U() {
        return this.f16040G.U();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void V(String str, K4 k8) {
        this.f16040G.V(str, k8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void W(boolean z7) {
        this.f16040G.W(z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void X(int i8, boolean z7, boolean z8) {
        this.f16040G.X(i8, z7, z8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void Z(int i8) {
        this.f16040G.Z(i8);
    }

    @Override // p083k3.h
    public final void a() {
        this.f16040G.a();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean a0() {
        return this.f16040G.a0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final void b(JSONObject jSONObject, String str) {
        this.f16040G.b(jSONObject, str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void b0(p105n3.f fVar, boolean z7, boolean z8) {
        this.f16040G.b0(fVar, z7, z8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void c(String str) {
        ((ViewTreeObserverOnGlobalLayoutListenerC0920Sf) this.f16040G).J(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void c0(boolean z7, int i8, String str, boolean z8, boolean z9) {
        this.f16040G.c0(z7, i8, str, z8, z9);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean canGoBack() {
        return this.f16040G.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void d(String str, String str2) {
        this.f16040G.d("window.inspectorInfo", str2);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void d0(boolean z7) {
        this.f16040G.d0(z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void destroy() {
        C1637lq c1637lqN;
        InterfaceC0715Ef interfaceC0715Ef = this.f16040G;
        C1689mq c1689mqS = interfaceC0715Ef.S();
        if (c1689mqS != null) {
            p113o3.J j8 = p113o3.O.f27924l;
            j8.post(new RunnableC0878Pf(c1689mqS, 0));
            j8.postDelayed(new RunnableC0850Nf(interfaceC0715Ef, 0), ((Integer) C3099q.f26624d.f26627c.a(Q7.f15634H4)).intValue());
        } else if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15650J4)).booleanValue() || (c1637lqN = interfaceC0715Ef.N()) == null) {
            interfaceC0715Ef.destroy();
        } else {
            p113o3.O.f27924l.post(new RunnableC0755Ha(17, this, c1637lqN));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final AbstractC1522jf e(String str) {
        return this.f16040G.e(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void e0(C1689mq c1689mq) {
        this.f16040G.e0(c1689mq);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final Ov f() {
        return this.f16040G.f();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void f0(Context context) {
        this.f16040G.f0(context);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void g(JSONObject jSONObject, String str) {
        ((ViewTreeObserverOnGlobalLayoutListenerC0920Sf) this.f16040G).d(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void g0(p105n3.k kVar) {
        this.f16040G.g0(kVar);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void goBack() {
        this.f16040G.goBack();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void h(String str, AbstractC1522jf abstractC1522jf) {
        this.f16040G.h(str, abstractC1522jf);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final WebView h0() {
        return (WebView) this.f16040G;
    }

    @Override // p083k3.h
    public final void i() {
        this.f16040G.i();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void i0(BinderC1228dv binderC1228dv) {
        this.f16040G.i0(binderC1228dv);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC1111bg
    public final View j() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean j0() {
        return this.f16040G.j0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void k(BinderC0948Uf binderC0948Uf) {
        this.f16040G.k(binderC0948Uf);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void k0() {
        C1689mq c1689mqS;
        C1637lq c1637lqN;
        TextView textView = new TextView(getContext());
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        Resources resourcesB = lVar.f25987g.b();
        textView.setText(resourcesB != null ? resourcesB.getString(R.string.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        int i8 = 0;
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
        J7 j8 = Q7.f15650J4;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        InterfaceC0715Ef interfaceC0715Ef = this.f16040G;
        if (zBooleanValue && (c1637lqN = interfaceC0715Ef.N()) != null) {
            synchronized (c1637lqN) {
                Bx bx = c1637lqN.f19858f;
                if (bx != null) {
                    lVar.f26002v.getClass();
                    C0621y.k(new RunnableC1170co(3, bx, textView));
                }
            }
            return;
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15642I4)).booleanValue() && (c1689mqS = interfaceC0715Ef.S()) != null && ((EnumC2215wx) c1689mqS.f20003b.f26380g) == EnumC2215wx.HTML) {
            C0621y c0621y = lVar.f26002v;
            C2267xx c2267xx = c1689mqS.f20002a;
            c0621y.getClass();
            C0621y.k(new RunnableC1482iq(c2267xx, textView, i8));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final A2.i l() {
        return this.f16040G.l();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void l0(Ov ov, Qv qv) {
        this.f16040G.l0(ov, qv);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void loadData(String str, String str2, String str3) {
        this.f16040G.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f16040G.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void loadUrl(String str) {
        this.f16040G.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void m(int i8) {
        C0744Ge c0744Ge = (C0744Ge) this.f16041H.f21885K;
        if (c0744Ge != null) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15597D)).booleanValue()) {
                c0744Ge.f13570H.setBackgroundColor(i8);
                c0744Ge.f13571I.setBackgroundColor(i8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void m0(int i8) {
        this.f16040G.m0(i8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void n() {
        this.f16040G.n();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void n0(A2.i iVar) {
        this.f16040G.n0(iVar);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void o() {
        this.f16040G.o();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final boolean o0() {
        return this.f16040G.o0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void onPause() {
        AbstractC0699De abstractC0699De;
        C2246xc c2246xc = this.f16041H;
        c2246xc.getClass();
        com.bumptech.glide.c.d("onPause must be called from the UI thread.");
        C0744Ge c0744Ge = (C0744Ge) c2246xc.f21885K;
        if (c0744Ge != null && (abstractC0699De = c0744Ge.f13575M) != null) {
            abstractC0699De.s();
        }
        this.f16040G.onPause();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void onResume() {
        this.f16040G.onResume();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void p() {
        this.f16040G.p();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void p0() {
        this.f16040G.p0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void q() {
        InterfaceC0715Ef interfaceC0715Ef = this.f16040G;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.q();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final String q0() {
        return this.f16040G.q0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final p105n3.k r() {
        return this.f16040G.r();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void r0(int i8, String str, String str2, boolean z7, boolean z8) {
        this.f16040G.r0(i8, str, str2, z7, z8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final String s() {
        return this.f16040G.s();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void s0(String str, String str2) {
        this.f16040G.s0(str, str2);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f16040G.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f16040G.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f16040G.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f16040G.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final int t() {
        return ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15601D3)).booleanValue() ? this.f16040G.getMeasuredHeight() : getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final ArrayList t0() {
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt = getChildAt(i8);
            if (childAt != this.f16040G) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void u() {
        InterfaceC0715Ef interfaceC0715Ef = this.f16040G;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.u();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void u0() {
        this.f16040G.u0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void v(int i8) {
        this.f16040G.v(i8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final void w(String str, Map map) {
        this.f16040G.w(str, map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void w0(String str, String str2) {
        this.f16040G.w0(str, str2);
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        InterfaceC0715Ef interfaceC0715Ef = this.f16040G;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.x();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void x0(boolean z7) {
        this.f16040G.x0(z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final void y(long j8, boolean z7) {
        this.f16040G.y(j8, z7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final X5 y0() {
        return this.f16040G.y0();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final void z0(p105n3.k kVar) {
        this.f16040G.z0(kVar);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef
    public final AbstractC0990Xf zzN() {
        return ((ViewTreeObserverOnGlobalLayoutListenerC0920Sf) this.f16040G).f16465T;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final int zzf() {
        return this.f16040G.zzf();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final int zzh() {
        return ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15601D3)).booleanValue() ? this.f16040G.getMeasuredWidth() : getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0976Wf, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final Activity zzi() {
        return this.f16040G.zzi();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final p083k3.a zzj() {
        return this.f16040G.zzj();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final U7 zzk() {
        return this.f16040G.zzk();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final C2218x zzm() {
        return this.f16040G.zzm();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final p120p3.a zzn() {
        return this.f16040G.zzn();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final C2246xc zzo() {
        return this.f16041H;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0715Ef, com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final BinderC0948Uf zzq() {
        return this.f16040G.zzq();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    public final String zzr() {
        return this.f16040G.zzr();
    }
}
