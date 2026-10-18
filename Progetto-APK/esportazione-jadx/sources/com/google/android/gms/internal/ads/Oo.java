package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Executor;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Oo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC1317fg f15201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f15202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p120p3.a f15203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Yv f15204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f15205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f15206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Tw f15207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0693Cn f15208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f15209i = new Object();

    public Oo(AbstractC1317fg abstractC1317fg, Context context, p120p3.a aVar, Yv yv, C1936re c1936re, String str, Tw tw, C0693Cn c0693Cn) {
        this.f15201a = abstractC1317fg;
        this.f15202b = context;
        this.f15203c = aVar;
        this.f15204d = yv;
        this.f15205e = c1936re;
        this.f15206f = str;
        this.f15207g = tw;
        this.f15208h = c0693Cn;
    }

    public static final String c(String str) {
        try {
            return new JSONObject(str).optString("request_id", HttpUrl.FRAGMENT_ENCODE_SET);
        } catch (JSONException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public static final String d(String str, String str2, String str3, C0693Cn c0693Cn) {
        Boolean bool;
        if (!TextUtils.isEmpty(str3)) {
            try {
                bool = new JSONObject(str3).optString("is_gbid").equals("true") ? Boolean.TRUE : Boolean.FALSE;
            } catch (JSONException unused) {
            }
            if (bool.booleanValue()) {
                int iLastIndexOf = str.lastIndexOf("&");
                String string = null;
                String strSubstring = iLastIndexOf != -1 ? str.substring(0, iLastIndexOf) : null;
                if (!TextUtils.isEmpty(strSubstring)) {
                    try {
                        byte[] bArrDecode = Base64.decode(strSubstring, 11);
                        byte[] bytes = str2.getBytes("UTF-8");
                        try {
                            string = new JSONObject(str3).getString("arek");
                        } catch (JSONException e8) {
                            p113o3.I.k("Failed to get key from QueryJSONMap".concat(e8.toString()));
                            p083k3.l.f25980A.f25987g.i("CryptoUtils.getKeyFromQueryJsonMap", e8);
                        }
                        return C1178cw.a(bArrDecode, bytes, string, c0693Cn);
                    } catch (UnsupportedEncodingException e9) {
                        p113o3.I.k("Failed to decode the adResponse. ".concat(e9.toString()));
                        p083k3.l.f25980A.f25987g.i("PreloadedLoader.decryptAdResponseIfNecessary", e9);
                    }
                }
            }
        }
        return str;
    }

    public final JB a(String str, String str2) {
        Context context = this.f15202b;
        Ow owH = U4.a.h(context, 11);
        owH.zzi();
        C0887Qa c0887QaB = p083k3.l.f25980A.f25996p.b(context, this.f15203c, this.f15201a.d());
        C0650Aa c0650Aa = AbstractC0873Pa.f15389b;
        C0915Sa c0915SaA = c0887QaB.a("google.afma.response.normalize", c0650Aa, c0650Aa);
        C1298fC c1298fCN1 = Cw.N1(HttpUrl.FRAGMENT_ENCODE_SET);
        C0957Va c0957Va = new C0957Va(str, str2, 7);
        Executor executor = this.f15205e;
        JB jbD2 = Cw.d2(Cw.d2(Cw.d2(c1298fCN1, c0957Va, executor), new No(c0915SaA, 0), executor), new No(this, 10), executor);
        com.google.android.gms.internal.measurement.H1.N(jbD2, this.f15207g, owH, false);
        return jbD2;
    }

    public final String b(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && zzbz.UNKNOWN_CONTENT_TYPE.equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.f15206f));
            }
            return jSONObject.toString();
        } catch (JSONException e8) {
            p120p3.h.g("Failed to update the ad types for rendering. ".concat(e8.toString()));
            return str;
        }
    }
}
