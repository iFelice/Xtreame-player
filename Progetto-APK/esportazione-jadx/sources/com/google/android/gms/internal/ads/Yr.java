package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Yr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f17655a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f17656b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f17657c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f17658d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f17659e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f17660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public JSONObject f17661g;

    public Yr(C1936re c1936re) {
        this.f17660f = c1936re;
    }

    public static final Bundle k(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle.putString(next, jSONObject.optString(next, HttpUrl.FRAGMENT_ENCODE_SET));
            }
        }
        return bundle;
    }

    public final synchronized HashMap a(String str, String str2) {
        HashMap map;
        try {
            UA uaB = b(str, str2);
            UA uaE = e(str2);
            map = new HashMap();
            for (Map.Entry entry : (RA) uaB.entrySet()) {
                String str3 = (String) entry.getKey();
                if (uaE.containsKey(str3)) {
                    C1123bs c1123bs = (C1123bs) uaE.get(str3);
                    List list = (List) entry.getValue();
                    map.put(str3, new C1123bs(str3, c1123bs.f18113b, c1123bs.f18114c, c1123bs.f18115d, (list == null || list.isEmpty()) ? new Bundle() : (Bundle) list.get(0)));
                }
            }
            AbstractC1349gB abstractC1349gBN = uaE.entrySet().n();
            while (abstractC1349gBN.hasNext()) {
                Map.Entry entry2 = (Map.Entry) abstractC1349gBN.next();
                String str4 = (String) entry2.getKey();
                if (!map.containsKey(str4) && ((C1123bs) entry2.getValue()).f18115d) {
                    map.put(str4, (C1123bs) entry2.getValue());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return map;
    }

    public final synchronized UA b(String str, String str2) {
        Map map;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(p083k3.l.f25980A.f25987g.d().y().f18944e) && (map = (Map) this.f17657c.get(str)) != null) {
                List<Zr> list = (List) map.get(str2);
                if (list == null) {
                    String strN = p113o3.r.n(this.f17661g, str2, str);
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.ia)).booleanValue()) {
                        strN = strN.toLowerCase(Locale.ROOT);
                    }
                    list = (List) map.get(strN);
                }
                if (list != null) {
                    HashMap map2 = new HashMap();
                    for (Zr zr : list) {
                        String str3 = zr.f17806a;
                        if (!map2.containsKey(str3)) {
                            map2.put(str3, new ArrayList());
                        }
                        ((List) map2.get(str3)).add(zr.f17807b);
                    }
                    return AbstractC2229xA.a(map2);
                }
            }
            return UA.f16803M;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized UA c() {
        if (TextUtils.isEmpty(p083k3.l.f25980A.f25987g.d().y().f18944e)) {
            return UA.f16803M;
        }
        return AbstractC2229xA.a(this.f17656b);
    }

    public final synchronized void d(String str) {
        if (!TextUtils.isEmpty(str) && !this.f17655a.containsKey(str)) {
            this.f17655a.put(str, new Zr(str, new Bundle()));
        }
    }

    public final synchronized UA e(String str) {
        HashMap map;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(p083k3.l.f25980A.f25987g.d().y().f18944e)) {
                J7 j8 = Q7.f15742V2;
                C3099q c3099q = C3099q.f26624d;
                boolean zMatches = Pattern.matches((String) c3099q.f26627c.a(j8), str);
                boolean zMatches2 = Pattern.matches((String) c3099q.f26627c.a(Q7.f15750W2), str);
                if (zMatches) {
                    map = new HashMap(this.f17659e);
                } else if (zMatches2) {
                    map = new HashMap(this.f17658d);
                }
                return AbstractC2229xA.a(map);
            }
            return UA.f16803M;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized ArrayList f(JSONObject jSONObject) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            if (jSONObject != null) {
                Bundle bundleK = k(jSONObject.optJSONObject("data"));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rtb_adapters");
                if (jSONArrayOptJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i8, HttpUrl.FRAGMENT_ENCODE_SET);
                        if (!TextUtils.isEmpty(strOptString)) {
                            arrayList2.add(strOptString);
                        }
                    }
                    int size = arrayList2.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        String str = (String) arrayList2.get(i9);
                        d(str);
                        if (((Zr) this.f17655a.get(str)) != null) {
                            arrayList.add(new Zr(str, bundleK));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized void g() {
        JSONObject jSONObject;
        try {
            if (!((Boolean) AbstractC2227x8.f21842b.l()).booleanValue()) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15607E1)).booleanValue() && (jSONObject = p083k3.l.f25980A.f25987g.d().y().f18946g) != null) {
                    try {
                        JSONArray jSONArray = jSONObject.getJSONArray("adapter_settings");
                        for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i8);
                            String strOptString = jSONObject2.optString("adapter_class_name");
                            JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("permission_set");
                            if (!TextUtils.isEmpty(strOptString)) {
                                for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                                    JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i9);
                                    boolean zOptBoolean = jSONObject3.optBoolean("enable_rendering", false);
                                    boolean zOptBoolean2 = jSONObject3.optBoolean("collect_secure_signals", false);
                                    boolean zOptBoolean3 = jSONObject3.optBoolean("collect_secure_signals_on_full_app", false);
                                    String strOptString2 = jSONObject3.optString("platform");
                                    C1123bs c1123bs = new C1123bs(strOptString, zOptBoolean2, zOptBoolean, zOptBoolean3, new Bundle());
                                    if (strOptString2.equals("ADMOB")) {
                                        this.f17658d.put(strOptString, c1123bs);
                                    } else if (strOptString2.equals("AD_MANAGER")) {
                                        this.f17659e.put(strOptString, c1123bs);
                                    }
                                }
                            }
                        }
                    } catch (JSONException e8) {
                        p113o3.I.l("Malformed config loading JSON.", e8);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void h(String str, String str2, ArrayList arrayList) {
        try {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                return;
            }
            Map map = (Map) this.f17657c.get(str);
            if (map == null) {
                map = new HashMap();
            }
            this.f17657c.put(str, map);
            List arrayList2 = (List) map.get(str2);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            arrayList2.addAll(arrayList);
            map.put(str2, arrayList2);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void i() {
        JSONArray jSONArrayOptJSONArray;
        try {
            JSONObject jSONObject = p083k3.l.f25980A.f25987g.d().y().f18946g;
            if (jSONObject != null) {
                try {
                    JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("ad_unit_id_settings");
                    this.f17661g = jSONObject.optJSONObject("ad_unit_patterns");
                    if (jSONArrayOptJSONArray2 != null) {
                        for (int i8 = 0; i8 < jSONArrayOptJSONArray2.length(); i8++) {
                            JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i8);
                            String lowerCase = ((Boolean) C3099q.f26624d.f26627c.a(Q7.ia)).booleanValue() ? jSONObject2.optString("ad_unit_id", HttpUrl.FRAGMENT_ENCODE_SET).toLowerCase(Locale.ROOT) : jSONObject2.optString("ad_unit_id", HttpUrl.FRAGMENT_ENCODE_SET);
                            String strOptString = jSONObject2.optString("format", HttpUrl.FRAGMENT_ENCODE_SET);
                            ArrayList arrayList = new ArrayList();
                            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("mediation_config");
                            if (jSONObjectOptJSONObject != null && (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("ad_networks")) != null) {
                                for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                                    arrayList.addAll(f(jSONArrayOptJSONArray.getJSONObject(i9)));
                                }
                            }
                            h(strOptString, lowerCase, arrayList);
                        }
                    }
                } catch (JSONException e8) {
                    p113o3.I.l("Malformed config loading JSON.", e8);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void j() {
        JSONObject jSONObject;
        if (!((Boolean) AbstractC2227x8.f21846f.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15599D1)).booleanValue() && (jSONObject = p083k3.l.f25980A.f25987g.d().y().f18946g) != null) {
                try {
                    JSONArray jSONArray = jSONObject.getJSONArray("signal_adapters");
                    for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i8);
                        Bundle bundleK = k(jSONObject2.optJSONObject("data"));
                        String strOptString = jSONObject2.optString("adapter_class_name");
                        boolean zOptBoolean = jSONObject2.optBoolean("render", false);
                        boolean zOptBoolean2 = jSONObject2.optBoolean("collect_signals", false);
                        if (!TextUtils.isEmpty(strOptString)) {
                            this.f17656b.put(strOptString, new C1123bs(strOptString, zOptBoolean2, zOptBoolean, true, bundleK));
                        }
                    }
                } catch (JSONException e8) {
                    p113o3.I.l("Malformed config loading JSON.", e8);
                }
            }
        }
    }
}
