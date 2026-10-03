package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Cn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0693Cn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f12691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1781oe f12692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f12693c = new Bundle();

    public C0693Cn(Context context, C0783In c0783In, C1781oe c1781oe, Yv yv, String str, String str2, p083k3.f fVar) {
        String str3;
        c0783In.getClass();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(c0783In.f14203a);
        this.f12691a = concurrentHashMap;
        this.f12692b = c1781oe;
        concurrentHashMap.put("ad_format", str2.toUpperCase(Locale.ROOT));
        J7 j8 = Q7.M8;
        C3099q c3099q = C3099q.f26624d;
        ActivityManager.MemoryInfo memoryInfo = null;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            int i8 = fVar.f25957U;
            int i9 = i8 - 1;
            if (i8 == 0) {
                throw null;
            }
            if (i9 != 0) {
                str3 = i9 != 1 ? "na" : "2";
            } else {
                str3 = "1";
            }
            concurrentHashMap.put("asv", str3);
        }
        J7 j9 = Q7.f15734U1;
        O7 o7 = c3099q.f26627c;
        if (((Boolean) o7.a(j9)).booleanValue()) {
            Runtime runtime = Runtime.getRuntime();
            a("rt_f", String.valueOf(runtime.freeMemory()));
            a("rt_m", String.valueOf(runtime.maxMemory()));
            a("rt_t", String.valueOf(runtime.totalMemory()));
            a("wv_c", String.valueOf(p083k3.l.f25980A.f25987g.f19814j.get()));
            if (((Boolean) o7.a(Q7.f15772Z1)).booleanValue()) {
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                if (activityManager != null) {
                    memoryInfo = new ActivityManager.MemoryInfo();
                    try {
                        activityManager.getMemoryInfo(memoryInfo);
                    } catch (NullPointerException unused) {
                        p120p3.h.g("Error retrieving the memory information.");
                    }
                }
                if (memoryInfo != null) {
                    a("mem_avl", String.valueOf(memoryInfo.availMem));
                    a("mem_tt", String.valueOf(memoryInfo.totalMem));
                    a("low_m", true != memoryInfo.lowMemory ? "0" : "1");
                }
            }
        }
        if (((Boolean) o7.a(Q7.f15968w6)).booleanValue()) {
            int iP = U2.m.p(yv) - 1;
            if (iP == 0) {
                concurrentHashMap.put("request_id", str);
                concurrentHashMap.put("scar", "false");
                return;
            }
            if (iP == 1) {
                concurrentHashMap.put("request_id", str);
                concurrentHashMap.put("se", "query_g");
            } else if (iP == 2) {
                concurrentHashMap.put("se", "r_adinfo");
            } else if (iP != 3) {
                concurrentHashMap.put("se", "r_both");
            } else {
                concurrentHashMap.put("se", "r_adstring");
            }
            concurrentHashMap.put("scar", "true");
            p090l3.b1 b1Var = yv.f17677d;
            a("ragent", b1Var.f26532V);
            a("rtype", U2.m.j(U2.m.k(b1Var)));
        }
    }

    public final void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f12691a.put(str, str2);
    }

    public final void b(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("cnt")) {
            a("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            a("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }
}
