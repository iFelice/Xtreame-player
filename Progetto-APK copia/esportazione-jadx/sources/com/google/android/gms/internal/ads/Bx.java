package com.google.android.gms.internal.ads;

import android.view.View;
import android.webkit.WebView;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* JADX INFO: loaded from: classes.dex */
public final class Bx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V7 f12517a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WebView f12518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f12519c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Lx f12520d = new Lx();

    public Bx(V7 v7, WebView webView) {
        if (!Cw.f12720d.f3280H) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
        this.f12517a = v7;
        this.f12518b = webView;
        if (!com.bumptech.glide.c.o("WEB_MESSAGE_LISTENER")) {
            throw new UnsupportedOperationException("The JavaScriptSessionService cannot be supported in this WebView version.");
        }
        int i8 = p011b2.e.f9832a;
        if (!p019c2.n.f10637d.b()) {
            throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
        }
        ((WebViewProviderBoundaryInterface) p011b2.e.c(webView).f1868H).removeWebMessageListener("omidJsSessionService");
        p011b2.e.a(webView, "omidJsSessionService", new HashSet(Arrays.asList("*")), new Xu(this, 11));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Bx bx, String str) {
        EnumC2319yx enumC2319yx = EnumC2319yx.DEFINED_BY_JAVASCRIPT;
        Ax ax = Ax.DEFINED_BY_JAVASCRIPT;
        Cx cx = Cx.JAVASCRIPT;
        E3.a aVarA = E3.a.a(enumC2319yx, ax, cx, cx, false);
        V7 v7 = bx.f12517a;
        EnumC2215wx enumC2215wx = EnumC2215wx.HTML;
        WebView webView = bx.f12518b;
        C2267xx c2267xx = new C2267xx(aVarA, new p086l.s1(v7, webView, null, null, enumC2215wx), str);
        bx.f12519c.put(str, c2267xx);
        c2267xx.b(webView);
        for (Kx kx : bx.f12520d.f14591a) {
            View view = (View) kx.f14436a.get();
            if (!c2267xx.f21961f) {
                c2267xx.f21957b.a(view, kx.f14438c);
            }
        }
        c2267xx.c();
    }
}
