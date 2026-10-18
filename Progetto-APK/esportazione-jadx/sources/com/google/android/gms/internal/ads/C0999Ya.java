package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ya, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0999Ya {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17608c;

    public C0999Ya(JSONObject jSONObject) throws JSONException {
        jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i8 = 0; i8 < jSONArray.length(); i8++) {
            arrayList.add(jSONArray.getString(i8));
        }
        this.f17606a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("allocation_id", null);
        C0650Aa c0650Aa = p083k3.l.f25980A.f26000t;
        C0650Aa.e(jSONObject, "clickurl");
        C0650Aa.e(jSONObject, "imp_urls");
        C0650Aa.e(jSONObject, "downloaded_imp_urls");
        C0650Aa.e(jSONObject, "fill_urls");
        C0650Aa.e(jSONObject, "video_start_urls");
        C0650Aa.e(jSONObject, "video_complete_urls");
        C0650Aa.e(jSONObject, "video_reward_urls");
        jSONObject.optString("transaction_id");
        jSONObject.optString("valid_from_timestamp");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("ad");
        if (jSONObjectOptJSONObject != null) {
            C0650Aa.e(jSONObjectOptJSONObject, "manual_impression_urls");
        }
        if (jSONObjectOptJSONObject != null) {
            jSONObjectOptJSONObject.toString();
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("data");
        this.f17607b = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.toString() : null;
        if (jSONObjectOptJSONObject2 != null) {
            jSONObjectOptJSONObject2.optString("class_name");
        }
        jSONObject.optString("html_template", null);
        jSONObject.optString("ad_base_url", null);
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("assets");
        if (jSONObjectOptJSONObject3 != null) {
            jSONObjectOptJSONObject3.toString();
        }
        C0650Aa.e(jSONObject, "template_ids");
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        if (jSONObjectOptJSONObject4 != null) {
            jSONObjectOptJSONObject4.toString();
        }
        this.f17608c = jSONObject.optString("response_type", null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
