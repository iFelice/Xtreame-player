package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Zl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1024Zl implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17794G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1117bm f17795H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ View f17796I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ WindowManager f17797J;

    public /* synthetic */ C1024Zl(C1117bm c1117bm, WindowManager windowManager, FrameLayout frameLayout) {
        this.f17795H = c1117bm;
        this.f17797J = windowManager;
        this.f17796I = frameLayout;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.am] */
    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        int i8 = this.f17794G;
        final WindowManager windowManager = this.f17797J;
        final View view = this.f17796I;
        C1117bm c1117bm = this.f17795H;
        switch (i8) {
            case 0:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                c1117bm.getClass();
                p120p3.h.b("Hide native ad policy validator overlay.");
                interfaceC0715Ef.j().setVisibility(8);
                if (interfaceC0715Ef.j().getWindowToken() != null) {
                    windowManager.removeView(interfaceC0715Ef.j());
                }
                interfaceC0715Ef.destroy();
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (c1117bm.f18084c != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(c1117bm.f18084c);
                    break;
                }
                break;
            default:
                final InterfaceC0715Ef interfaceC0715Ef2 = (InterfaceC0715Ef) obj;
                c1117bm.getClass();
                interfaceC0715Ef2.zzN().f17463M = new C2218x(28, c1117bm, map);
                if (map != null) {
                    Context context = view.getContext();
                    String str = (String) map.get("validator_width");
                    J7 j8 = Q7.s7;
                    C3099q c3099q = C3099q.f26624d;
                    int iB = C1117bm.b(((Integer) c3099q.f26627c.a(j8)).intValue(), context, str);
                    String str2 = (String) map.get("validator_height");
                    J7 j9 = Q7.t7;
                    O7 o7 = c3099q.f26627c;
                    int iB2 = C1117bm.b(((Integer) o7.a(j9)).intValue(), context, str2);
                    int iB3 = C1117bm.b(0, context, (String) map.get("validator_x"));
                    int iB4 = C1117bm.b(0, context, (String) map.get("validator_y"));
                    interfaceC0715Ef2.n0(new A2.i(1, iB, iB2, 5));
                    try {
                        interfaceC0715Ef2.h0().getSettings().setUseWideViewPort(((Boolean) o7.a(Q7.u7)).booleanValue());
                        interfaceC0715Ef2.h0().getSettings().setLoadWithOverviewMode(((Boolean) o7.a(Q7.v7)).booleanValue());
                        break;
                    } catch (NullPointerException unused) {
                    }
                    final WindowManager.LayoutParams layoutParamsY = S3.e.y();
                    layoutParamsY.x = iB3;
                    layoutParamsY.y = iB4;
                    windowManager.updateViewLayout(interfaceC0715Ef2.j(), layoutParamsY);
                    final String str3 = (String) map.get("orientation");
                    Rect rect = new Rect();
                    if (view.getGlobalVisibleRect(rect)) {
                        final int i9 = (("1".equals(str3) || "2".equals(str3)) ? rect.bottom : rect.top) - iB4;
                        c1117bm.f18084c = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.am
                            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                            public final void onScrollChanged() {
                                Rect rect2 = new Rect();
                                if (view.getGlobalVisibleRect(rect2)) {
                                    InterfaceC0715Ef interfaceC0715Ef3 = interfaceC0715Ef2;
                                    if (interfaceC0715Ef3.j().getWindowToken() == null) {
                                        return;
                                    }
                                    String str4 = str3;
                                    boolean zEquals = "1".equals(str4);
                                    int i10 = i9;
                                    WindowManager.LayoutParams layoutParams = layoutParamsY;
                                    if (zEquals || "2".equals(str4)) {
                                        layoutParams.y = rect2.bottom - i10;
                                    } else {
                                        layoutParams.y = rect2.top - i10;
                                    }
                                    windowManager.updateViewLayout(interfaceC0715Ef3.j(), layoutParams);
                                }
                            }
                        };
                        ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
                        if (viewTreeObserver2 != null && viewTreeObserver2.isAlive()) {
                            viewTreeObserver2.addOnScrollChangedListener(c1117bm.f18084c);
                        }
                    }
                    String str4 = (String) map.get("overlay_url");
                    if (!TextUtils.isEmpty(str4)) {
                        interfaceC0715Ef2.loadUrl(str4);
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ C1024Zl(C1117bm c1117bm, FrameLayout frameLayout, WindowManager windowManager) {
        this.f17795H = c1117bm;
        this.f17796I = frameLayout;
        this.f17797J = windowManager;
    }
}
