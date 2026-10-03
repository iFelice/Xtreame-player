package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1997sn {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public JSONObject f20970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f20971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f20972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public JSONObject f20973e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f20969a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f20974f = new AtomicBoolean(false);

    public C1997sn(C1936re c1936re) {
        this.f20971c = c1936re;
    }

    public final synchronized void a() {
        JSONObject jSONObject;
        Map map;
        try {
            this.f20972d = true;
            C1367ge c1367geY = p083k3.l.f25980A.f25987g.d().y();
            if (c1367geY != null && (jSONObject = c1367geY.f18946g) != null) {
                this.f20970b = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15672M3)).booleanValue() ? jSONObject.optJSONObject("common_settings") : null;
                this.f20973e = jSONObject.optJSONObject("ad_unit_patterns");
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
                if (jSONArrayOptJSONArray != null) {
                    for (int i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i8);
                        if (jSONObjectOptJSONObject != null) {
                            String strOptString = jSONObjectOptJSONObject.optString("ad_unit_id");
                            String strOptString2 = jSONObjectOptJSONObject.optString("format");
                            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("request_signals");
                            if (strOptString != null && jSONObjectOptJSONObject2 != null && strOptString2 != null) {
                                if (this.f20969a.containsKey(strOptString2)) {
                                    map = (Map) this.f20969a.get(strOptString2);
                                } else {
                                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                                    this.f20969a.put(strOptString2, concurrentHashMap);
                                    map = concurrentHashMap;
                                }
                                map.put(strOptString, jSONObjectOptJSONObject2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
