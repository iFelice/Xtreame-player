package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Za, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1013Za {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17765a;

    public C1013Za(JSONObject jSONObject) throws JSONException {
        if (p120p3.h.j(2)) {
            p113o3.I.k("Mediation Response JSON: ".concat(String.valueOf(jSONObject.toString(2))));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i8 = -1;
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            try {
                C0999Ya c0999Ya = new C0999Ya(jSONArray.getJSONObject(i9));
                "banner".equalsIgnoreCase(c0999Ya.f17608c);
                arrayList.add(c0999Ya);
                if (i8 < 0) {
                    Iterator it = c0999Ya.f17606a.iterator();
                    while (it.hasNext()) {
                        if (((String) it.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                            i8 = i9;
                            break;
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        }
        jSONArray.length();
        this.f17765a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("settings");
        if (jSONObjectOptJSONObject != null) {
            jSONObjectOptJSONObject.optLong("ad_network_timeout_millis", -1L);
            C0650Aa c0650Aa = p083k3.l.f25980A.f26000t;
            C0650Aa.e(jSONObjectOptJSONObject, "click_urls");
            C0650Aa.e(jSONObjectOptJSONObject, "imp_urls");
            C0650Aa.e(jSONObjectOptJSONObject, "downloaded_imp_urls");
            C0650Aa.e(jSONObjectOptJSONObject, "nofill_urls");
            C0650Aa.e(jSONObjectOptJSONObject, "remote_ping_urls");
            jSONObjectOptJSONObject.optBoolean("render_in_browser", false);
            jSONObjectOptJSONObject.optLong("refresh", -1L);
            C1624ld.i(jSONObjectOptJSONObject.optJSONArray("rewards"));
            jSONObjectOptJSONObject.optBoolean("use_displayed_impression", false);
            jSONObjectOptJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            jSONObjectOptJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            jSONObjectOptJSONObject.optBoolean("allow_custom_click_gesture", false);
        }
    }
}
