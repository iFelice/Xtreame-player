package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p090l3.C3097p;
import p090l3.C3099q;
import p090l3.InterfaceC3067a;

/* JADX INFO: loaded from: classes.dex */
public final class U9 implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p083k3.b f16795G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0738Fn f16796H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0930Tb f16798J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C1172cq f16799K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1784oh f16800L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public p105n3.a f16801M = null;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C1936re f16802N = AbstractC1988se.f20911f;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p120p3.k f16797I = new p120p3.k(null);

    public U9(p083k3.b bVar, C0930Tb c0930Tb, C1172cq c1172cq, C0738Fn c0738Fn, C1784oh c1784oh) {
        this.f16795G = bVar;
        this.f16798J = c0930Tb;
        this.f16799K = c1172cq;
        this.f16796H = c0738Fn;
        this.f16800L = c1784oh;
    }

    public static int a(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if ("l".equalsIgnoreCase(str)) {
            return 6;
        }
        return "c".equalsIgnoreCase(str) ? 14 : -1;
    }

    public static Uri b(Context context, H4 h8, Uri uri, View view, Activity activity, Zv zv) {
        if (h8 == null) {
            return uri;
        }
        try {
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.lb)).booleanValue() || zv == null) {
                if (h8.b(uri)) {
                    uri = h8.a(uri, context, view, activity);
                }
            } else if (h8.b(uri)) {
                uri = zv.a(uri, context, view, activity);
            }
        } catch (I4 unused) {
        } catch (Exception e8) {
            p083k3.l.f25980A.f25987g.i("OpenGmsgHandler.maybeAddClickSignalsToUri", e8);
        }
        return uri;
    }

    public static Uri c(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e8) {
            p120p3.h.e("Error adding click uptime parameter to url: ".concat(String.valueOf(uri.toString())), e8);
        }
        return uri;
    }

    public final void d(Context context, String str, String str2) {
        this.f16799K.k(str);
        C0738Fn c0738Fn = this.f16796H;
        if (c0738Fn != null) {
            p113o3.r.y("dialog_not_shown_reason", str2);
            BinderC1431hq.z3(context, c0738Fn, this.f16799K, str, "dialog_not_shown", UA.c(1, new Object[]{"dialog_not_shown_reason", str2}, null));
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x010f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0116  */
    /* JADX WARN: Code duplicated, block: B:48:0x0152 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0154  */
    /* JADX WARN: Code duplicated, block: B:50:0x015f  */
    public final void e(InterfaceC3067a interfaceC3067a, Map map, boolean z7, String str, boolean z8, boolean z9) {
        Uri uriBuild;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ResolveInfo resolveInfoK;
        boolean z10 = true;
        g(true);
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) interfaceC3067a;
        Context context = interfaceC0715Ef.getContext();
        H4 h4T = interfaceC0715Ef.T();
        View viewJ = interfaceC0715Ef.j();
        Zv zvA0 = interfaceC0715Ef.A0();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        String str2 = (String) map.get("u");
        Intent intentF = null;
        if (!TextUtils.isEmpty(str2)) {
            Uri uriC = c(b(context, h4T, Uri.parse(str2), viewJ, null, zvA0));
            boolean z11 = Boolean.parseBoolean((String) map.get("use_first_package"));
            boolean z12 = Boolean.parseBoolean((String) map.get("use_running_process"));
            if (!Boolean.parseBoolean((String) map.get("use_custom_tabs"))) {
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15835g4)).booleanValue()) {
                    z10 = false;
                }
            }
            if ("http".equalsIgnoreCase(uriC.getScheme())) {
                uriBuild = uriC.buildUpon().scheme("https").build();
            } else {
                uriBuild = "https".equalsIgnoreCase(uriC.getScheme()) ? uriC.buildUpon().scheme("http").build() : null;
            }
            ArrayList arrayList = new ArrayList();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(uriC);
            intent.setAction("android.intent.action.VIEW");
            if (uriBuild != null) {
                intentF = new Intent("android.intent.action.VIEW");
                intentF.addFlags(268435456);
                intentF.setData(uriBuild);
                intentF.setAction("android.intent.action.VIEW");
            }
            if (z10) {
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                p113o3.O.D(context, intent);
                p113o3.O.D(context, intentF);
            }
            ResolveInfo resolveInfoK2 = com.google.android.gms.internal.measurement.H1.K(intent, arrayList, context);
            if (resolveInfoK2 != null) {
                intentF = com.google.android.gms.internal.measurement.H1.F(intent, resolveInfoK2);
            } else if (intentF != null && (resolveInfoK = com.google.android.gms.internal.measurement.H1.K(intentF, new ArrayList(), context)) != null) {
                intentF = com.google.android.gms.internal.measurement.H1.F(intent, resolveInfoK);
                if (com.google.android.gms.internal.measurement.H1.K(intentF, new ArrayList(), context) == null) {
                    if (!arrayList.isEmpty()) {
                        intentF = intent;
                    } else if (!z12) {
                        if (z11) {
                            intentF = com.google.android.gms.internal.measurement.H1.F(intent, (ResolveInfo) arrayList.get(0));
                        } else {
                            intentF = intent;
                        }
                    } else if (z11) {
                        intentF = com.google.android.gms.internal.measurement.H1.F(intent, (ResolveInfo) arrayList.get(0));
                    } else {
                        intentF = intent;
                    }
                }
            } else if (!arrayList.isEmpty()) {
                intentF = intent;
            } else if (!z12 && activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                int size = arrayList.size();
                int i8 = 0;
                while (true) {
                    if (i8 < size) {
                        ResolveInfo resolveInfo = (ResolveInfo) arrayList.get(i8);
                        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                        while (true) {
                            int i9 = i8 + 1;
                            if (!it.hasNext()) {
                                i8 = i9;
                            } else if (it.next().processName.equals(resolveInfo.activityInfo.packageName)) {
                                intentF = com.google.android.gms.internal.measurement.H1.F(intent, resolveInfo);
                            }
                        }
                    } else if (z11) {
                        intentF = com.google.android.gms.internal.measurement.H1.F(intent, (ResolveInfo) arrayList.get(0));
                    } else {
                        intentF = intent;
                    }
                }
            } else if (z11) {
                intentF = com.google.android.gms.internal.measurement.H1.F(intent, (ResolveInfo) arrayList.get(0));
            } else {
                intentF = intent;
            }
        }
        if (!z7 || this.f16799K == null || intentF == null || !h(interfaceC3067a, interfaceC0715Ef.getContext(), intentF.getData().toString(), str)) {
            try {
                ((InterfaceC0715Ef) interfaceC3067a).b0(new p105n3.f(intentF, this.f16801M), z8, z9);
            } catch (ActivityNotFoundException e8) {
                p120p3.h.g(e8.getMessage());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        C1784oh c1784oh;
        InterfaceC3067a interfaceC3067a = (InterfaceC3067a) obj;
        String str = (String) map.get("u");
        HashMap map2 = new HashMap();
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) interfaceC3067a;
        if (interfaceC0715Ef.f() != null) {
            map2 = interfaceC0715Ef.f().f15291w0;
        }
        String strD = com.bumptech.glide.c.D(str, interfaceC0715Ef.getContext(), true, map2);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            p120p3.h.g("Action missing from an open GMSG.");
            return;
        }
        p083k3.b bVar = this.f16795G;
        if (bVar == null || bVar.b()) {
            Cw.h2((((Boolean) C3099q.f26624d.f26627c.a(Q7.p9)).booleanValue() && (c1784oh = this.f16800L) != null && C1784oh.b(strD)) ? c1784oh.a(strD, C3097p.f26618f.f26623e) : Cw.N1(strD), new C2246xc(this, map, interfaceC3067a, str2), this.f16802N);
        } else {
            bVar.a(strD);
        }
    }

    public final void g(boolean z7) {
        C0930Tb c0930Tb = this.f16798J;
        if (c0930Tb != null) {
            c0930Tb.q(z7);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ca, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 33 ? ((java.lang.Boolean) r5.a(com.google.android.gms.internal.ads.Q7.L7)).booleanValue() : ((java.lang.Boolean) r5.a(com.google.android.gms.internal.ads.Q7.K7)).booleanValue()) != false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean h(p090l3.InterfaceC3067a r11, android.content.Context r12, java.lang.String r13, java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.U9.h(l3.a, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    public final void i(int i8) {
        String str;
        C0738Fn c0738Fn = this.f16796H;
        if (c0738Fn == null) {
            return;
        }
        C0871Om c0871OmA = c0738Fn.a();
        c0871OmA.n("action", "cct_action");
        switch (i8) {
            case 2:
                str = "CONTEXT_NOT_AN_ACTIVITY";
                break;
            case 3:
                str = "CONTEXT_NULL";
                break;
            case 4:
                str = "CCT_NOT_SUPPORTED";
                break;
            case 5:
                str = "CCT_READY_TO_OPEN";
                break;
            case 6:
                str = "ACTIVITY_NOT_FOUND";
                break;
            case 7:
                str = "EMPTY_URL";
                break;
            case 8:
                str = "UNKNOWN";
                break;
            default:
                str = "WRONG_EXP_SETUP";
                break;
        }
        c0871OmA.n("cct_open_status", str);
        c0871OmA.u();
    }
}
