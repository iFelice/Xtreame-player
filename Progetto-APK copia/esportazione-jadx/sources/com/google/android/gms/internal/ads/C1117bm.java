package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import p090l3.C3097p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1117bm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1428hn f18082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0941Tm f18083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewTreeObserverOnScrollChangedListenerC1065am f18084c = null;

    public C1117bm(C1428hn c1428hn, C0941Tm c0941Tm) {
        this.f18082a = c1428hn;
        this.f18083b = c0941Tm;
    }

    public static final int b(int i8, Context context, String str) {
        try {
            i8 = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        p120p3.d dVar = C3097p.f26618f.f26619a;
        return p120p3.d.o(context, i8);
    }

    public final View a(FrameLayout frameLayout, WindowManager windowManager) {
        InterfaceC0715Ef interfaceC0715EfA = this.f18082a.a(p090l3.d1.l(), null, null);
        interfaceC0715EfA.j().setVisibility(4);
        interfaceC0715EfA.j().setContentDescription("policy_validator");
        interfaceC0715EfA.L0("/sendMessageToSdk", new E9(this, 8));
        interfaceC0715EfA.L0("/hideValidatorOverlay", new C1024Zl(this, windowManager, frameLayout));
        interfaceC0715EfA.L0("/open", new U9(null, null, null, null, null));
        WeakReference weakReference = new WeakReference(interfaceC0715EfA);
        C1024Zl c1024Zl = new C1024Zl(this, frameLayout, windowManager);
        C0941Tm c0941Tm = this.f18083b;
        c0941Tm.getClass();
        c0941Tm.c("/loadNativeAdPolicyViolations", new C0927Sm(c0941Tm, weakReference, "/loadNativeAdPolicyViolations", c1024Zl));
        c0941Tm.c("/showValidatorOverlay", new C0927Sm(c0941Tm, new WeakReference(interfaceC0715EfA), "/showValidatorOverlay", new H9(28)));
        return interfaceC0715EfA.j();
    }
}
