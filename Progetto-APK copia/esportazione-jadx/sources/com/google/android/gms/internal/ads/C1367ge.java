package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ge, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1367ge {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f18943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f18944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f18945f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public JSONObject f18946g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f18947h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f18949j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f18940a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f18941b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f18942c = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f18948i = new ArrayList();

    public C1367ge(long j8, String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectOptJSONObject3;
        this.f18943d = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f18947h = false;
        this.f18949j = false;
        this.f18944e = str;
        this.f18945f = j8;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f18946g = new JSONObject(str);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Xa)).booleanValue() && a()) {
                return;
            }
            if (this.f18946g.optInt("status", -1) != 1) {
                this.f18947h = false;
                p120p3.h.g("App settings could not be fetched successfully.");
                return;
            }
            this.f18947h = true;
            this.f18943d = this.f18946g.optString("app_id");
            JSONArray jSONArrayOptJSONArray2 = this.f18946g.optJSONArray("ad_unit_id_settings");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i8 = 0; i8 < jSONArrayOptJSONArray2.length(); i8++) {
                    JSONObject jSONObject = jSONArrayOptJSONArray2.getJSONObject(i8);
                    String strOptString = jSONObject.optString("format");
                    String strOptString2 = jSONObject.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                        if ("interstitial".equalsIgnoreCase(strOptString)) {
                            this.f18941b.add(strOptString2);
                        } else if (("rewarded".equalsIgnoreCase(strOptString) || "rewarded_interstitial".equals(strOptString)) && (jSONObjectOptJSONObject3 = jSONObject.optJSONObject("mediation_config")) != null) {
                            this.f18942c.put(strOptString2, new C1013Za(jSONObjectOptJSONObject3));
                        }
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray3 = this.f18946g.optJSONArray("persistable_banner_ad_unit_ids");
            if (jSONArrayOptJSONArray3 != null) {
                for (int i9 = 0; i9 < jSONArrayOptJSONArray3.length(); i9++) {
                    this.f18940a.add(jSONArrayOptJSONArray3.optString(i9));
                }
            }
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15929r6)).booleanValue() && (jSONObjectOptJSONObject2 = this.f18946g.optJSONObject("common_settings")) != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject2.optJSONArray("loeid")) != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    this.f18948i.add(jSONArrayOptJSONArray.get(i10).toString());
                }
            }
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15674M5)).booleanValue() || (jSONObjectOptJSONObject = this.f18946g.optJSONObject("common_settings")) == null) {
                return;
            }
            this.f18949j = jSONObjectOptJSONObject.optBoolean("is_prefetching_enabled", false);
        } catch (JSONException e8) {
            p120p3.h.h("Exception occurred while processing app setting json", e8);
            p083k3.l.f25980A.f25987g.i("AppSettings.parseAppSettingsJson", e8);
        }
    }

    public final boolean a() {
        if (!TextUtils.isEmpty(this.f18944e) && this.f18946g != null) {
            J7 j8 = Q7.ab;
            C3099q c3099q = C3099q.f26624d;
            long jLongValue = ((Long) c3099q.f26627c.a(j8)).longValue();
            J7 j9 = Q7.Za;
            O7 o7 = c3099q.f26627c;
            if (((Boolean) o7.a(j9)).booleanValue() && !TextUtils.isEmpty(this.f18944e)) {
                jLongValue = this.f18946g.optLong("cache_ttl_sec", ((Long) o7.a(j8)).longValue());
            }
            p083k3.l.f25980A.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jLongValue >= 0) {
                long j10 = this.f18945f;
                if (j10 > jCurrentTimeMillis || TimeUnit.MILLISECONDS.toSeconds(jCurrentTimeMillis - j10) > jLongValue) {
                    this.f18940a.clear();
                    this.f18941b.clear();
                    this.f18942c.clear();
                    this.f18943d = HttpUrl.FRAGMENT_ENCODE_SET;
                    this.f18944e = HttpUrl.FRAGMENT_ENCODE_SET;
                    this.f18946g = null;
                    this.f18947h = false;
                    this.f18948i.clear();
                    this.f18949j = false;
                    return true;
                }
            }
        }
        return false;
    }
}
