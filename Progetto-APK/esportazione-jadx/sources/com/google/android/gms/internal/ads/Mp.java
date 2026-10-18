package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Mp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Cw f14805a;

    public Mp(C0931Tc c0931Tc) {
        this.f14805a = c0931Tc;
    }

    public static void a(Map map, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("pii");
        if (jSONObjectOptJSONObject == null) {
            p113o3.I.k("DSID signal does not exist.");
            return;
        }
        if (!TextUtils.isEmpty(jSONObjectOptJSONObject.optString("doritos", HttpUrl.FRAGMENT_ENCODE_SET))) {
            map.put("x-afma-drt-cookie", jSONObjectOptJSONObject.optString("doritos", HttpUrl.FRAGMENT_ENCODE_SET));
        }
        if (TextUtils.isEmpty(jSONObjectOptJSONObject.optString("doritos_v2", HttpUrl.FRAGMENT_ENCODE_SET))) {
            return;
        }
        map.put("x-afma-drt-v2-cookie", jSONObjectOptJSONObject.optString("doritos_v2", HttpUrl.FRAGMENT_ENCODE_SET));
    }

    public final void b() {
        D4.b bVarY = this.f14805a.y();
        String str = "persistFlags";
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15794b7)).booleanValue()) {
            Cw.h2(bVarY, new J(str, 2, 0), AbstractC1988se.f20911f);
        } else {
            AbstractC2987b.d0(bVarY, "persistFlags");
        }
    }
}
