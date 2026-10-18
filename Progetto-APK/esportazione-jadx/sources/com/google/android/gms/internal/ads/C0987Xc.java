package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Xc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0987Xc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f17436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f17437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f17438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f17439g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final JSONObject f17440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f17441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f17442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f17443k;

    public C0987Xc(JSONObject jSONObject) {
        this.f17438f = jSONObject.optString("url");
        this.f17434b = jSONObject.optString("base_uri");
        this.f17435c = jSONObject.optString("post_parameters");
        String strOptString = jSONObject.optString("drt_include");
        this.f17436d = strOptString != null && (strOptString.equals("1") || strOptString.equals("true"));
        String strOptString2 = jSONObject.optString("cookies_include", "true");
        this.f17437e = strOptString2 != null && (strOptString2.equals("1") || strOptString2.equals("true"));
        jSONObject.optString("request_id");
        jSONObject.optString("type");
        String strOptString3 = jSONObject.optString("errors");
        this.f17433a = strOptString3 == null ? null : Arrays.asList(strOptString3.split(","));
        this.f17439g = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f17440h = jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f17441i = jSONObject.optString("pool_key");
        String strOptString4 = jSONObject.optString("start_time");
        Long lValueOf = -1L;
        if (!TextUtils.isEmpty(strOptString4)) {
            try {
                lValueOf = Long.valueOf(strOptString4);
            } catch (NumberFormatException unused) {
            }
        }
        this.f17442j = lValueOf.longValue();
        String strOptString5 = jSONObject.optString("end_time");
        Long lValueOf2 = -1L;
        if (!TextUtils.isEmpty(strOptString5)) {
            try {
                lValueOf2 = Long.valueOf(strOptString5);
            } catch (NumberFormatException unused2) {
            }
        }
        this.f17443k = lValueOf2.longValue();
    }
}
