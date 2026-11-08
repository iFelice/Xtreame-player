package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.nativead.NativeAd;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p090l3.AbstractBinderC3103s0;
import p090l3.C3099q;
import p090l3.InterfaceC3113x0;
import pe.hf.black20.R;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC2258xo extends AbstractBinderC3103s0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final HashMap f21927G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f21928H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final WeakReference f21929I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1998so f21930J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f21931K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C1895qo f21932L;

    public BinderC2258xo(Context context, WeakReference weakReference, C1998so c1998so, C1936re c1936re) {
        super("com.google.android.gms.ads.internal.client.IOutOfContextTester");
        this.f21927G = new HashMap();
        this.f21928H = context;
        this.f21929I = weakReference;
        this.f21930J = c1998so;
        this.f21931K = c1936re;
    }

    public static p043f3.f C3() {
        Bundle bundle = new Bundle();
        bundle.putString("request_origin", "inspector_ooct");
        return new p043f3.f((p043f3.e) new p043f3.e(3).e(bundle));
    }

    public static String D3(Object obj) {
        p043f3.p pVarC;
        InterfaceC3113x0 interfaceC3113x0;
        if (obj instanceof p043f3.j) {
            pVarC = ((p043f3.j) obj).f25184L;
        } else {
            InterfaceC3113x0 interfaceC3113x0Zzc = null;
            if (obj instanceof Z5) {
                Z5 z7 = (Z5) obj;
                z7.getClass();
                try {
                    interfaceC3113x0Zzc = z7.f17728a.zzf();
                } catch (RemoteException e8) {
                    p120p3.h.i("#007 Could not call remote method.", e8);
                }
                pVarC = new p043f3.p(interfaceC3113x0Zzc);
            } else if (obj instanceof p128q3.a) {
                C1932ra c1932ra = (C1932ra) ((p128q3.a) obj);
                c1932ra.getClass();
                try {
                    p090l3.J j8 = c1932ra.f20740c;
                    if (j8 != null) {
                        interfaceC3113x0Zzc = j8.zzk();
                    }
                } catch (RemoteException e9) {
                    p120p3.h.i("#007 Could not call remote method.", e9);
                }
                pVarC = new p043f3.p(interfaceC3113x0Zzc);
            } else if (obj instanceof C2351zd) {
                C2351zd c2351zd = (C2351zd) obj;
                c2351zd.getClass();
                try {
                    InterfaceC1884qd interfaceC1884qd = c2351zd.f22168a;
                    if (interfaceC1884qd != null) {
                        interfaceC3113x0Zzc = interfaceC1884qd.zzc();
                    }
                } catch (RemoteException e10) {
                    p120p3.h.i("#007 Could not call remote method.", e10);
                }
                pVarC = new p043f3.p(interfaceC3113x0Zzc);
            } else if (obj instanceof C0713Ed) {
                C0713Ed c0713Ed = (C0713Ed) obj;
                c0713Ed.getClass();
                try {
                    InterfaceC1884qd interfaceC1884qd2 = c0713Ed.f13055a;
                    if (interfaceC1884qd2 != null) {
                        interfaceC3113x0Zzc = interfaceC1884qd2.zzc();
                    }
                } catch (RemoteException e11) {
                    p120p3.h.i("#007 Could not call remote method.", e11);
                }
                pVarC = new p043f3.p(interfaceC3113x0Zzc);
            } else if (obj instanceof AdView) {
                pVarC = ((AdView) obj).getResponseInfo();
            } else {
                if (!(obj instanceof NativeAd)) {
                    return HttpUrl.FRAGMENT_ENCODE_SET;
                }
                pVarC = ((NativeAd) obj).c();
            }
        }
        if (pVarC == null || (interfaceC3113x0 = pVarC.f25195a) == null) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        try {
            return interfaceC3113x0.zzh();
        } catch (RemoteException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public final synchronized void A3(String str, String str2) {
        Object obj;
        try {
            C1998so c1998so = this.f21930J;
            InterfaceC0715Ef interfaceC0715Ef = c1998so.f20978J;
            Activity activityZzi = (interfaceC0715Ef == null || interfaceC0715Ef.a0()) ? null : c1998so.f20978J.zzi();
            if (activityZzi != null && (obj = this.f21927G.get(str)) != null) {
                J7 j8 = Q7.G8;
                C3099q c3099q = C3099q.f26624d;
                if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() || (obj instanceof Z5) || (obj instanceof p128q3.a) || (obj instanceof C2351zd) || (obj instanceof C0713Ed)) {
                    this.f21927G.remove(str);
                }
                zzn(D3(obj), str2);
                if (obj instanceof Z5) {
                    Z5 z7 = (Z5) obj;
                    try {
                        z7.f17728a.X(new R3.b(activityZzi), z7.f17729b);
                    } catch (RemoteException e8) {
                        p120p3.h.i("#007 Could not call remote method.", e8);
                    }
                    return;
                }
                if (obj instanceof p128q3.a) {
                    ((p128q3.a) obj).b(activityZzi);
                    return;
                }
                if (obj instanceof C2351zd) {
                    C2351zd c2351zd = (C2351zd) obj;
                    BinderC0698Dd binderC0698Dd = c2351zd.f22170c;
                    binderC0698Dd.getClass();
                    InterfaceC1884qd interfaceC1884qd = c2351zd.f22168a;
                    if (interfaceC1884qd != null) {
                        try {
                            interfaceC1884qd.f0(binderC0698Dd);
                            interfaceC1884qd.zzm(new R3.b(activityZzi));
                        } catch (RemoteException e9) {
                            p120p3.h.i("#007 Could not call remote method.", e9);
                        }
                    }
                    return;
                }
                if (obj instanceof C0713Ed) {
                    C0713Ed c0713Ed = (C0713Ed) obj;
                    BinderC0698Dd binderC0698Dd2 = c0713Ed.f13057c;
                    binderC0698Dd2.getClass();
                    InterfaceC1884qd interfaceC1884qd2 = c0713Ed.f13055a;
                    if (interfaceC1884qd2 != null) {
                        try {
                            interfaceC1884qd2.f0(binderC0698Dd2);
                            interfaceC1884qd2.zzm(new R3.b(activityZzi));
                        } catch (RemoteException e10) {
                            p120p3.h.i("#007 Could not call remote method.", e10);
                        }
                    }
                    return;
                }
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && ((obj instanceof AdView) || (obj instanceof NativeAd))) {
                    Intent intent = new Intent();
                    Context contextB3 = B3();
                    intent.setClassName(contextB3, "com.google.android.gms.ads.OutOfContextTestingActivity");
                    intent.putExtra("adUnit", str);
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    p113o3.O.p(contextB3, intent);
                    return;
                }
                throw th;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Context B3() {
        Context context = (Context) this.f21929I.get();
        return context == null ? this.f21928H : context;
    }

    public final synchronized void E3(String str, String str2) {
        try {
            Cw.h2(this.f21932L.a(str), new C2206wo(this, str2, 0), this.f21931K);
        } catch (NullPointerException e8) {
            p083k3.l.f25980A.f25987g.i("OutOfContextTester.setAdAsOutOfContext", e8);
            this.f21930J.b(str2);
        }
    }

    @Override // p090l3.InterfaceC3105t0
    public final void h1(String str, R3.a aVar, R3.a aVar2) {
        Context context = (Context) R3.b.v0(aVar);
        ViewGroup viewGroup = (ViewGroup) R3.b.v0(aVar2);
        if (context == null || viewGroup == null) {
            return;
        }
        HashMap map = this.f21927G;
        Object obj = map.get(str);
        if (obj != null) {
            map.remove(str);
        }
        if (obj instanceof AdView) {
            AdView adView = (AdView) obj;
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setTag("layout");
            C2272y1.j(linearLayout, -1, -1);
            linearLayout.setGravity(17);
            linearLayout.addView(adView);
            adView.setTag("ad_view");
            viewGroup.addView(linearLayout);
            return;
        }
        if (obj instanceof NativeAd) {
            NativeAd nativeAd = (NativeAd) obj;
            u3.d dVar = new u3.d(context);
            dVar.setTag("ad_view_tag");
            C2272y1.j(dVar, -1, -1);
            viewGroup.addView(dVar);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setTag("layout_tag");
            linearLayout2.setOrientation(1);
            C2272y1.j(linearLayout2, -1, -1);
            linearLayout2.setBackgroundColor(-1);
            dVar.addView(linearLayout2);
            Resources resourcesB = p083k3.l.f25980A.f25987g.b();
            linearLayout2.addView(C2272y1.i(context, resourcesB == null ? "Headline" : resourcesB.getString(R.string.native_headline), android.R.style.TextAppearance.Small, -9210245, 0.0f, "headline_header_tag"));
            String strB = nativeAd.b();
            View viewI = C2272y1.i(context, strB == null ? HttpUrl.FRAGMENT_ENCODE_SET : strB, android.R.style.TextAppearance.Medium, -16777216, 12.0f, "headline_tag");
            dVar.setHeadlineView(viewI);
            linearLayout2.addView(viewI);
            linearLayout2.addView(C2272y1.i(context, resourcesB == null ? "Body" : resourcesB.getString(R.string.native_body), android.R.style.TextAppearance.Small, -9210245, 0.0f, "body_header_tag"));
            String strA = nativeAd.a();
            View viewI2 = C2272y1.i(context, strA == null ? HttpUrl.FRAGMENT_ENCODE_SET : strA, android.R.style.TextAppearance.Medium, -16777216, 12.0f, "body_tag");
            dVar.setBodyView(viewI2);
            linearLayout2.addView(viewI2);
            linearLayout2.addView(C2272y1.i(context, resourcesB == null ? "Media View" : resourcesB.getString(R.string.native_media_view), android.R.style.TextAppearance.Small, -9210245, 0.0f, "media_view_header_tag"));
            u3.b bVar = new u3.b(context);
            bVar.setTag("media_view_tag");
            dVar.setMediaView(bVar);
            linearLayout2.addView(bVar);
            dVar.setNativeAd(nativeAd);
        }
    }

    public final synchronized void z3(Object obj, String str, String str2) {
        this.f21927G.put(str, obj);
        E3(D3(obj), str2);
    }

    public final synchronized void zzn(String str, String str2) {
        try {
            Cw.h2(this.f21932L.a(str), new C2206wo(this, str2, 1), this.f21931K);
        } catch (NullPointerException e8) {
            p083k3.l.f25980A.f25987g.i("OutOfContextTester.setAdAsShown", e8);
            this.f21930J.b(str2);
        }
    }
}
