package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.os.Build;
import android.webkit.WebView;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class Px {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15520a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f15522c = System.nanoTime();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15523d = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C1077ay f15521b = new C1077ay(null);

    public Px(String str) {
        this.f15520a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WebView a() {
        return (WebView) this.f15521b.get();
    }

    public void b() {
        this.f15521b.clear();
    }

    public final void c(Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        Sx.c(jSONObject, "timestamp", Long.valueOf(date.getTime()));
        Cw.L0(a(), "setLastActivity", jSONObject);
    }

    public void d(C2267xx c2267xx, p086l.s1 s1Var) {
        e(c2267xx, s1Var, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0060  */
    public final void e(C2267xx c2267xx, p086l.s1 s1Var, JSONObject jSONObject) {
        int i8;
        String str;
        String str2 = c2267xx.f21962g;
        JSONObject jSONObject2 = new JSONObject();
        Sx.c(jSONObject2, "environment", "app");
        Sx.c(jSONObject2, "adSessionType", (EnumC2215wx) s1Var.f26380g);
        JSONObject jSONObject3 = new JSONObject();
        Sx.c(jSONObject3, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        Sx.c(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        Sx.c(jSONObject3, "os", "Android");
        Sx.c(jSONObject2, "deviceInfo", jSONObject3);
        UiModeManager uiModeManager = Cw.f12723g;
        if (uiModeManager == null) {
            i8 = 3;
        } else {
            int currentModeType = uiModeManager.getCurrentModeType();
            if (currentModeType == 1) {
                i8 = 2;
            } else if (currentModeType != 4) {
                i8 = 3;
            } else {
                i8 = 1;
            }
        }
        Sx.c(jSONObject2, "deviceCategory", AbstractC2090uc.f(i8));
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        Sx.c(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        V7 v7 = (V7) s1Var.f26374a;
        switch (v7.f16959G) {
            case 0:
                str = v7.f16960H;
                break;
            default:
                str = v7.f16960H;
                break;
        }
        Sx.c(jSONObject4, "partnerName", str);
        Sx.c(jSONObject4, "partnerVersion", ((V7) s1Var.f26374a).f16961I);
        Sx.c(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        Sx.c(jSONObject5, "libraryVersion", "1.4.10-google_20240110");
        Sx.c(jSONObject5, "appId", Mx.f14832H.f14833G.getApplicationContext().getPackageName());
        Sx.c(jSONObject2, "app", jSONObject5);
        String str3 = (String) s1Var.f26379f;
        if (str3 != null) {
            Sx.c(jSONObject2, "contentUrl", str3);
        }
        String str4 = (String) s1Var.f26378e;
        if (str4 != null) {
            Sx.c(jSONObject2, "customReferenceData", str4);
        }
        JSONObject jSONObject6 = new JSONObject();
        Iterator it = Collections.unmodifiableList((List) s1Var.f26376c).iterator();
        if (it.hasNext()) {
            A0.O.I(it.next());
            throw null;
        }
        Cw.L0(a(), "startSession", str2, jSONObject2, jSONObject6, jSONObject);
    }

    public void f() {
    }
}
