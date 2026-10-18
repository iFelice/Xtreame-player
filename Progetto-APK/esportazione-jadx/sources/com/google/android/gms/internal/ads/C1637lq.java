package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1637lq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f19853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p120p3.a f19854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Ov f19855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC0715Ef f19856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0738Fn f19857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bx f19858f;

    public C1637lq(Context context, p120p3.a aVar, Ov ov, InterfaceC0715Ef interfaceC0715Ef, C0738Fn c0738Fn) {
        this.f19853a = context;
        this.f19854b = aVar;
        this.f19855c = ov;
        this.f19856d = interfaceC0715Ef;
        this.f19857e = c0738Fn;
    }

    public final synchronized void a() {
        InterfaceC0715Ef interfaceC0715Ef;
        if (this.f19858f == null || (interfaceC0715Ef = this.f19856d) == null) {
            return;
        }
        interfaceC0715Ef.w("onSdkImpression", UA.f16803M);
    }

    public final synchronized void b() {
        InterfaceC0715Ef interfaceC0715Ef;
        try {
            Bx bx = this.f19858f;
            if (bx == null || (interfaceC0715Ef = this.f19856d) == null) {
                return;
            }
            for (View view : interfaceC0715Ef.t0()) {
                p083k3.l.f25980A.f26002v.getClass();
                C0621y.k(new RunnableC1170co(3, bx, view));
            }
            this.f19856d.w("onSdkLoaded", UA.f16803M);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean c() {
        if (this.f19855c.f15239T) {
            J7 j8 = Q7.f15626G4;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                if (((Boolean) c3099q.f26627c.a(Q7.f15650J4)).booleanValue() && this.f19856d != null) {
                    if (this.f19858f != null) {
                        p120p3.h.g("Omid javascript session service already started for ad.");
                        return false;
                    }
                    Context context = this.f19853a;
                    p083k3.l lVar = p083k3.l.f25980A;
                    lVar.f26002v.getClass();
                    if (!C0621y.g(context)) {
                        p120p3.h.g("Unable to initialize omid.");
                        return false;
                    }
                    Xu xu = this.f19855c.f15241V;
                    xu.getClass();
                    if (((JSONObject) xu.f17529H).optBoolean((String) c3099q.f26627c.a(Q7.f15665L4), true)) {
                        p120p3.a aVar = this.f19854b;
                        InterfaceC0715Ef interfaceC0715Ef = this.f19856d;
                        C0621y c0621y = lVar.f26002v;
                        WebView webViewH0 = interfaceC0715Ef.h0();
                        c0621y.getClass();
                        Bx bxB = C0621y.b(aVar, webViewH0);
                        if (((Boolean) c3099q.f26627c.a(Q7.K4)).booleanValue()) {
                            C0738Fn c0738Fn = this.f19857e;
                            String str = bxB != null ? "1" : "0";
                            C0871Om c0871OmA = c0738Fn.a();
                            c0871OmA.n("omid_js_session_success", str);
                            c0871OmA.u();
                        }
                        if (bxB == null) {
                            p120p3.h.g("Unable to create javascript session service.");
                            return false;
                        }
                        p120p3.h.f("Created omid javascript session service.");
                        this.f19858f = bxB;
                        this.f19856d.H0(this);
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
