package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.AdView;
import java.util.Map;
import java.util.function.Consumer;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3087k;
import p090l3.C3093n;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class E9 implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12943G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f12944H;

    public /* synthetic */ E9(Object obj, int i8) {
        this.f12943G = i8;
        this.f12944H = obj;
    }

    private final void a(Object obj, Map map) {
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
        boolean zEquals = "1".equals(map.get("transparentBackground"));
        boolean zEquals2 = "1".equals(map.get("blur"));
        float f8 = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f8 = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e8) {
            p120p3.h.e("Fail to parse float", e8);
        }
        P9 p9 = (P9) this.f12944H;
        synchronized (p9) {
            p9.f15336a = zEquals;
            p9.f15339d.set(true);
        }
        ((P9) this.f12944H).b(f8, zEquals2);
        interfaceC0715Ef.x0(zEquals);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a8  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void b(Map map) {
        byte b8;
        p043f3.d dVar;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.F8)).booleanValue()) {
            String str = (String) map.get("action");
            String str2 = (String) map.get("adUnitId");
            String str3 = (String) map.get("redirectUrl");
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                return;
            }
            String str4 = (String) map.get("format");
            if (!str.equals("load") || TextUtils.isEmpty(str4)) {
                if (str.equals("show")) {
                    ((BinderC2258xo) this.f12944H).A3(str2, str3);
                    return;
                }
                return;
            }
            BinderC2258xo binderC2258xo = (BinderC2258xo) this.f12944H;
            synchronized (binderC2258xo) {
                try {
                    switch (str4.hashCode()) {
                        case -1999289321:
                            if (!str4.equals("NATIVE")) {
                                b8 = -1;
                            } else {
                                b8 = 3;
                            }
                            break;
                        case -1372958932:
                            if (!str4.equals("INTERSTITIAL")) {
                                b8 = -1;
                            } else {
                                b8 = 2;
                            }
                            break;
                        case -428325382:
                            if (!str4.equals("APP_OPEN_AD")) {
                                b8 = -1;
                            } else {
                                b8 = 0;
                            }
                            break;
                        case 543046670:
                            if (!str4.equals("REWARDED")) {
                                b8 = -1;
                            } else {
                                b8 = 4;
                            }
                            break;
                        case 1854800829:
                            if (!str4.equals("REWARDED_INTERSTITIAL")) {
                                b8 = -1;
                            } else {
                                b8 = 5;
                            }
                            break;
                        case 1951953708:
                            if (!str4.equals("BANNER")) {
                                b8 = -1;
                            } else {
                                b8 = 1;
                            }
                            break;
                        default:
                            b8 = -1;
                            break;
                    }
                    if (b8 == 0) {
                        Z5.a(binderC2258xo.B3(), str2, BinderC2258xo.C3(), new C2050to(binderC2258xo, str2, str3, 0));
                        return;
                    }
                    if (b8 == 1) {
                        AdView adView = new AdView(binderC2258xo.B3());
                        adView.setAdSize(p043f3.g.f25164h);
                        adView.setAdUnitId(str2);
                        adView.setAdListener(new C2102uo(binderC2258xo, str2, adView, str3));
                        adView.b(BinderC2258xo.C3());
                        return;
                    }
                    if (b8 == 2) {
                        p128q3.a.a(binderC2258xo.B3(), str2, BinderC2258xo.C3(), new C2154vo(binderC2258xo, str2, str3));
                        return;
                    }
                    if (b8 != 3) {
                        if (b8 == 4) {
                            C2351zd.a(binderC2258xo.B3(), str2, BinderC2258xo.C3(), new C2050to(binderC2258xo, str2, str3, 1));
                            return;
                        } else {
                            if (b8 != 5) {
                                return;
                            }
                            C0713Ed.a(binderC2258xo.B3(), str2, BinderC2258xo.C3(), new C2050to(binderC2258xo, str2, str3, 2));
                            return;
                        }
                    }
                    Context contextB3 = binderC2258xo.B3();
                    com.bumptech.glide.c.i(contextB3, "context cannot be null");
                    C3093n c3093n = C3097p.f26618f.f26620b;
                    BinderC1054ab binderC1054ab = new BinderC1054ab();
                    c3093n.getClass();
                    p090l3.F f8 = (p090l3.F) new C3087k(c3093n, contextB3, str2, binderC1054ab).d(contextB3, false);
                    try {
                        f8.e1(new BinderC1107bc(new p004a3.b(binderC2258xo, str2, str3, 22), 0));
                    } catch (RemoteException e8) {
                        p120p3.h.h("Failed to add google native ad listener", e8);
                    }
                    try {
                        f8.J1(new p090l3.W0(new com.google.ads.mediation.d(binderC2258xo, str3)));
                    } catch (RemoteException e9) {
                        p120p3.h.h("Failed to set AdListener.", e9);
                    }
                    try {
                        dVar = new p043f3.d(contextB3, f8.zze());
                    } catch (RemoteException e10) {
                        p120p3.h.e("Failed to build AdLoader.", e10);
                        dVar = new p043f3.d(contextB3, new p090l3.N0(new p090l3.O0()));
                    }
                    dVar.a(BinderC2258xo.C3());
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        Bundle bundleA = null;
        bundleA = null;
        c1624ld = null;
        C1624ld c1624ld = null;
        switch (this.f12943G) {
            case 0:
                F9 f9 = (F9) this.f12944H;
                if (f9 == null) {
                    return;
                }
                String str = (String) map.get("name");
                if (str == null) {
                    p120p3.h.f("Ad metadata with no name parameter.");
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                if (map.containsKey("info")) {
                    try {
                        bundleA = Q3.b.A(new JSONObject((String) map.get("info")));
                    } catch (JSONException e8) {
                        p120p3.h.e("Failed to convert ad metadata to JSON.", e8);
                    }
                }
                if (bundleA == null) {
                    p120p3.h.d("Failed to convert ad metadata to Bundle.");
                    return;
                } else {
                    f9.o(str, bundleA);
                    return;
                }
            case 1:
                String str2 = (String) map.get("name");
                if (str2 == null) {
                    p120p3.h.g("App event with no name parameter.");
                    return;
                } else {
                    ((G9) this.f12944H).d(str2, (String) map.get("info"));
                    return;
                }
            case 2:
                a(obj, map);
                return;
            case 3:
                b(map);
                return;
            case 4:
                String str3 = (String) map.get("action");
                boolean zEquals = "grant".equals(str3);
                Object obj2 = this.f12944H;
                if (!zEquals) {
                    if ("video_start".equals(str3)) {
                        ((X9) obj2).zzc();
                        return;
                    } else {
                        if ("video_complete".equals(str3)) {
                            ((X9) obj2).zzb();
                            return;
                        }
                        return;
                    }
                }
                try {
                    int i8 = Integer.parseInt((String) map.get("amount"));
                    String str4 = (String) map.get("type");
                    if (!TextUtils.isEmpty(str4)) {
                        c1624ld = new C1624ld(str4, i8);
                    }
                } catch (NumberFormatException e9) {
                    p120p3.h.h("Unable to parse reward amount.", e9);
                }
                ((X9) obj2).G(c1624ld);
                return;
            case 5:
                if (!map.containsKey("text") || TextUtils.isEmpty((CharSequence) map.get("text"))) {
                    return;
                }
                p113o3.I.k("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get("text"))));
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", (String) map.get("text"));
                if (map.containsKey("title")) {
                    intent.putExtra("android.intent.extra.TITLE", (String) map.get("title"));
                }
                try {
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    p113o3.O.p((Context) this.f12944H, intent);
                    return;
                } catch (RuntimeException e10) {
                    p120p3.h.h("Failed to open Share Sheet", e10);
                    p083k3.l.f25980A.f25987g.i("ShareSheetGmsgHandler.onGmsg", e10);
                    return;
                }
            case 6:
                String str5 = (String) map.get("action");
                if (str5 == null) {
                    p120p3.h.g("Action missing from video GMSG.");
                    return;
                }
                if (str5.equals("src")) {
                    String str6 = (String) map.get("src");
                    if (str6 == null) {
                        p120p3.h.g("src missing from video GMSG.");
                        return;
                    } else {
                        ((Consumer) this.f12944H).accept(str6);
                        return;
                    }
                }
                return;
            case 7:
                if (map != null) {
                    String str7 = (String) map.get("height");
                    if (TextUtils.isEmpty(str7)) {
                        return;
                    }
                    try {
                        int i9 = Integer.parseInt(str7);
                        synchronized (((ViewTreeObserverOnGlobalLayoutListenerC0920Sf) this.f12944H)) {
                            try {
                                Object obj3 = this.f12944H;
                                ViewTreeObserverOnGlobalLayoutListenerC0920Sf viewTreeObserverOnGlobalLayoutListenerC0920Sf = (ViewTreeObserverOnGlobalLayoutListenerC0920Sf) obj3;
                                if (viewTreeObserverOnGlobalLayoutListenerC0920Sf.f16485q0 != i9) {
                                    viewTreeObserverOnGlobalLayoutListenerC0920Sf.f16485q0 = i9;
                                    ((ViewTreeObserverOnGlobalLayoutListenerC0920Sf) obj3).requestLayout();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                        return;
                    } catch (Exception e11) {
                        p120p3.h.h("Exception occurred while getting webview content height", e11);
                        return;
                    }
                }
                return;
            default:
                ((C1117bm) this.f12944H).f18083b.b(map);
                return;
        }
    }
}
