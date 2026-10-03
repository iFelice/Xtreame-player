package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Rv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JSONObject f16374c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JSONObject f16375d;

    public Rv(JsonReader jsonReader) throws JSONException, IOException {
        JSONObject jSONObjectA0 = Q3.b.a0(jsonReader);
        this.f16375d = jSONObjectA0;
        this.f16372a = jSONObjectA0.optString("ad_html", null);
        this.f16373b = jSONObjectA0.optString("ad_base_url", null);
        this.f16374c = jSONObjectA0.optJSONObject("ad_json");
    }
}
