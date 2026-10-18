package com.google.android.gms.internal.ads;

import Y.AbstractComponentCallbacksC0406s;
import Y5.AbstractC0417d;
import Z5.AbstractC0463u;
import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
import p090l3.C3081h;
import p090l3.C3093n;
import p090l3.C3097p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1448i6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f19236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f19237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f19238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f19239g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f19240h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f19241i;

    public C1448i6(Context context, String str, p090l3.G0 g8, int i8, C2050to c2050to) {
        this.f19233a = 0;
        this.f19240h = new BinderC1054ab();
        this.f19237e = context;
        this.f19235c = str;
        this.f19238f = g8;
        this.f19234b = i8;
        this.f19239g = c2050to;
        this.f19241i = p090l3.c1.f26545a;
    }

    public final /* synthetic */ void a(p135r2.o oVar) {
        switch (this.f19233a) {
            case 2:
                Log.e("XCIPTV_TAG", "----------VolleyError------------" + oVar);
                try {
                    p135r2.i iVar = oVar.f29837G;
                    if (iVar != null) {
                        int i8 = iVar.f29804a;
                        Log.d("XCIPTV_TAG", "VolleyFastoGTGetRequest -- errorMsg".concat(new String(iVar.f29805b)));
                        ((g7.c) this.f19237e).e(i8, "failed", this.f19235c);
                    } else {
                        Log.d("XCIPTV_TAG", "VolleyFastoGTGetRequest -- success");
                        ((g7.c) this.f19237e).e(0, oVar.getMessage(), this.f19235c);
                    }
                } catch (Exception unused) {
                    Log.d("XCIPTV_TAG", "VolleyFastoGTGetRequest -- Error");
                    return;
                }
                break;
            default:
                Log.e("XCIPTV_TAG", "----------VolleyError------------" + oVar);
                try {
                    p135r2.i iVar2 = oVar.f29837G;
                    if (iVar2 != null) {
                        int i9 = iVar2.f29804a;
                        Log.d("XCIPTV_TAG", "VolleyFastoGTGetRequest -- errorMsg".concat(new String(iVar2.f29805b)));
                        ((g7.c) this.f19237e).e(i9, "failed", this.f19235c);
                    } else {
                        Log.d("XCIPTV_TAG", "VolleyFastoGTGetRequest -- success");
                        ((g7.c) this.f19237e).e(0, oVar.getMessage(), this.f19235c);
                    }
                } catch (Exception unused2) {
                    Log.d("XCIPTV_TAG", "VolleyFastoGTGetRequest -- Error");
                    return;
                }
                break;
        }
    }

    public final void b() {
        switch (this.f19233a) {
            case 2:
                g7.b bVar = new g7.b(this, this.f19234b, (String) this.f19238f, (JSONObject) this.f19239g, new g7.a(this), new g7.a(this), 0);
                bVar.f29823Q = new A2.i(50000, 0);
                com.google.android.gms.internal.measurement.Q1.c((Activity) this.f19236d).a(bVar);
                break;
            default:
                g7.b bVar2 = new g7.b(this, this.f19234b, (String) this.f19238f, (JSONObject) this.f19239g, new g7.a(this), new g7.a(this), 1);
                bVar2.f29823Q = new A2.i(50000, 0);
                com.google.android.gms.internal.measurement.Q1.c(((AbstractComponentCallbacksC0406s) this.f19236d).l()).a(bVar2);
                break;
        }
    }

    public final void c() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            p090l3.d1 d1VarI = p090l3.d1.i();
            C3093n c3093n = C3097p.f26618f.f26620b;
            Context context = (Context) this.f19237e;
            String str = this.f19235c;
            BinderC1054ab binderC1054ab = (BinderC1054ab) this.f19240h;
            c3093n.getClass();
            p090l3.J j8 = (p090l3.J) new C3081h(c3093n, context, d1VarI, str, binderC1054ab).d(context, false);
            this.f19236d = j8;
            if (j8 != null) {
                int i8 = this.f19234b;
                if (i8 != 3) {
                    j8.E0(new p090l3.h1(i8));
                }
                ((p090l3.G0) this.f19238f).f26469k = jCurrentTimeMillis;
                ((p090l3.J) this.f19236d).k2(new Y5((C2050to) this.f19239g, this.f19235c));
                p090l3.J j9 = (p090l3.J) this.f19236d;
                p090l3.c1 c1Var = (p090l3.c1) this.f19241i;
                Context context2 = (Context) this.f19237e;
                p090l3.G0 g8 = (p090l3.G0) this.f19238f;
                c1Var.getClass();
                j9.h3(p090l3.c1.a(context2, g8));
            }
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    public final String toString() {
        switch (this.f19233a) {
            case 1:
                p113o3.G gN = Cw.n(this);
                gN.b(String.valueOf(this.f19234b), "defaultPort");
                gN.a((Y5.w) this.f19236d, "proxyDetector");
                gN.a((Y5.E) this.f19237e, "syncContext");
                gN.a((AbstractC0463u) this.f19238f, "serviceConfigParser");
                gN.a((ScheduledExecutorService) this.f19239g, "scheduledExecutorService");
                gN.a((AbstractC0417d) this.f19240h, "channelLogger");
                gN.a((Executor) this.f19241i, "executor");
                gN.a(this.f19235c, "overrideAuthority");
                return gN.toString();
            default:
                return super.toString();
        }
    }

    public C1448i6(int i8, Activity activity, g7.c cVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        this.f19233a = 2;
        this.f19236d = activity;
        this.f19237e = cVar;
        this.f19235c = str;
        this.f19238f = str2;
        this.f19239g = jSONObject;
        this.f19234b = i8;
        this.f19240h = str3;
        this.f19241i = str4;
        b();
    }

    public C1448i6(int i8, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, g7.c cVar, String str, String str2, JSONObject jSONObject, String str3, String str4) {
        this.f19233a = 3;
        this.f19236d = abstractComponentCallbacksC0406s;
        this.f19237e = cVar;
        this.f19235c = str;
        this.f19238f = str2;
        this.f19239g = jSONObject;
        this.f19234b = i8;
        this.f19240h = str3;
        this.f19241i = str4;
        b();
    }
}
