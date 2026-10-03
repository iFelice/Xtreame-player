package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ko, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1583ko {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f19639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f19640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f19641f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f19642g;

    public C1583ko(String str, String str2, String str3, int i8, String str4, int i9, boolean z7) {
        this.f19636a = str;
        this.f19637b = str2;
        this.f19638c = str3;
        this.f19639d = i8;
        this.f19640e = str4;
        this.f19641f = i9;
        this.f19642g = z7;
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.f19636a);
        jSONObject.put("version", this.f19638c);
        J7 j8 = Q7.D8;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            jSONObject.put("sdkVersion", this.f19637b);
        }
        jSONObject.put("status", this.f19639d);
        jSONObject.put("description", this.f19640e);
        jSONObject.put("initializationLatencyMillis", this.f19641f);
        if (((Boolean) c3099q.f26627c.a(Q7.E8)).booleanValue()) {
            jSONObject.put("supportsInitialization", this.f19642g);
        }
        return jSONObject;
    }
}
