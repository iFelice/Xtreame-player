package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import java.lang.reflect.Method;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1528jl implements InterfaceC1838pj, InterfaceC0735Fk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0862Od f19481G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f19482H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0890Qd f19483I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final View f19484J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f19485K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final EnumC2329z6 f19486L;

    public C1528jl(C0862Od c0862Od, Context context, C0890Qd c0890Qd, WebView webView, EnumC2329z6 enumC2329z6) {
        this.f19481G = c0862Od;
        this.f19482H = context;
        this.f19483I = c0890Qd;
        this.f19484J = webView;
        this.f19486L = enumC2329z6;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void g(InterfaceC1211dd interfaceC1211dd, String str, String str2) {
        C0890Qd c0890Qd = this.f19483I;
        if (c0890Qd.e(this.f19482H)) {
            try {
                Context context = this.f19482H;
                c0890Qd.d(context, c0890Qd.a(context), this.f19481G.f15177I, ((BinderC1108bd) interfaceC1211dd).f18055G, ((BinderC1108bd) interfaceC1211dd).f18056H);
            } catch (RemoteException e8) {
                p120p3.h.h("Remote Exception to get reward item.", e8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zza() {
        this.f19481G.a(false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzc() {
        View view = this.f19484J;
        if (view != null && this.f19485K != null) {
            Context context = view.getContext();
            String str = this.f19485K;
            C0890Qd c0890Qd = this.f19483I;
            if (c0890Qd.e(context) && (context instanceof Activity)) {
                AtomicReference atomicReference = c0890Qd.f16037g;
                if (c0890Qd.m(context, "com.google.firebase.analytics.FirebaseAnalytics", atomicReference, false)) {
                    ConcurrentHashMap concurrentHashMap = c0890Qd.f16038h;
                    Method declaredMethod = (Method) concurrentHashMap.get("setCurrentScreen");
                    if (declaredMethod == null) {
                        try {
                            declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                            concurrentHashMap.put("setCurrentScreen", declaredMethod);
                        } catch (Exception unused) {
                            c0890Qd.l("setCurrentScreen", false);
                            declaredMethod = null;
                        }
                    }
                    try {
                        declaredMethod.invoke(atomicReference.get(), (Activity) context, str, context.getPackageName());
                    } catch (Exception unused2) {
                        c0890Qd.l("setCurrentScreen", false);
                    }
                }
            }
        }
        this.f19481G.a(true);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0735Fk
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0735Fk
    public final void zzl() {
        EnumC2329z6 enumC2329z6 = EnumC2329z6.APP_OPEN;
        EnumC2329z6 enumC2329z7 = this.f19486L;
        if (enumC2329z7 == enumC2329z6) {
            return;
        }
        C0890Qd c0890Qd = this.f19483I;
        Context context = this.f19482H;
        boolean zE = c0890Qd.e(context);
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        if (zE) {
            AtomicReference atomicReference = c0890Qd.f16036f;
            if (c0890Qd.m(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
                try {
                    String str2 = (String) c0890Qd.i(context, "getCurrentScreenName").invoke(atomicReference.get(), new Object[0]);
                    if (str2 == null) {
                        str2 = (String) c0890Qd.i(context, "getCurrentScreenClass").invoke(atomicReference.get(), new Object[0]);
                    }
                    if (str2 != null) {
                        str = str2;
                    }
                } catch (Exception unused) {
                    c0890Qd.l("getCurrentScreenName", false);
                }
            }
        }
        this.f19485K = str;
        this.f19485K = String.valueOf(str).concat(enumC2329z7 == EnumC2329z6.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial");
    }
}
