package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.ArrayList;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0715Ef extends InterfaceC3067a, InterfaceC0869Ok, InterfaceC1984sa, InterfaceC0976Wf, InterfaceC2296ya, G5, p083k3.h, InterfaceC0863Oe, InterfaceC1111bg {
    void A();

    Zv A0();

    p105n3.k B();

    void B0();

    boolean C0(int i8, boolean z7);

    Context D();

    void D0(String str, N9 n9);

    boolean E0();

    void F0();

    void G0(boolean z7);

    void H0(C1637lq c1637lq);

    L8 I();

    void I0(ViewTreeObserverOnGlobalLayoutListenerC0752Gm viewTreeObserverOnGlobalLayoutListenerC0752Gm);

    boolean J0();

    void K0(boolean z7);

    D4.b L();

    void L0(String str, N9 n9);

    void M0(C2218x c2218x);

    C1637lq N();

    void N0();

    void O0(boolean z7);

    void P();

    boolean P0();

    WebViewClient Q();

    void R();

    C1689mq S();

    H4 T();

    Qv U();

    void V(String str, K4 k8);

    void W(boolean z7);

    void X(int i8, boolean z7, boolean z8);

    void Z(int i8);

    boolean a0();

    void b0(p105n3.f fVar, boolean z7, boolean z8);

    void c0(boolean z7, int i8, String str, boolean z8, boolean z9);

    boolean canGoBack();

    void d0(boolean z7);

    void destroy();

    void e0(C1689mq c1689mq);

    Ov f();

    void f0(Context context);

    void g0(p105n3.k kVar);

    @Override // com.google.android.gms.internal.ads.InterfaceC0976Wf, com.google.android.gms.internal.ads.InterfaceC0863Oe
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    void h(String str, AbstractC1522jf abstractC1522jf);

    WebView h0();

    void i0(BinderC1228dv binderC1228dv);

    boolean isAttachedToWindow();

    @Override // com.google.android.gms.internal.ads.InterfaceC1111bg
    View j();

    boolean j0();

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    void k(BinderC0948Uf binderC0948Uf);

    void k0();

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    A2.i l();

    void l0(Ov ov, Qv qv);

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void m0(int i8);

    void measure(int i8, int i9);

    void n0(A2.i iVar);

    boolean o0();

    void onPause();

    void onResume();

    void p0();

    String q0();

    p105n3.k r();

    void r0(int i8, String str, String str2, boolean z7, boolean z8);

    void s0(String str, String str2);

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    void setBackgroundColor(int i8);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    ArrayList t0();

    void u0();

    void w0(String str, String str2);

    void x0(boolean z7);

    X5 y0();

    void z0(p105n3.k kVar);

    AbstractC0990Xf zzN();

    @Override // com.google.android.gms.internal.ads.InterfaceC0976Wf, com.google.android.gms.internal.ads.InterfaceC0863Oe
    Activity zzi();

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    p083k3.a zzj();

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    C2218x zzm();

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    p120p3.a zzn();

    @Override // com.google.android.gms.internal.ads.InterfaceC0863Oe
    BinderC0948Uf zzq();
}
