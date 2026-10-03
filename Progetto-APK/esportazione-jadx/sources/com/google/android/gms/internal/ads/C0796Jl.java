package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0796Jl extends C0811Kl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f14189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f14190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f14191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f14193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f14194g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final JSONObject f14195h;

    public C0796Jl(Ov ov, JSONObject jSONObject) {
        super(ov);
        String[] strArr = {"tracking_urls_and_actions", "active_view"};
        JSONObject jSONObjectE0 = Q3.b.e0(jSONObject, strArr);
        this.f14189b = jSONObjectE0 == null ? null : jSONObjectE0.optJSONObject(strArr[1]);
        String[] strArr2 = {"allow_pub_owned_ad_view"};
        JSONObject jSONObjectE1 = Q3.b.e0(jSONObject, strArr2);
        this.f14190c = jSONObjectE1 == null ? false : jSONObjectE1.optBoolean(strArr2[0], false);
        String[] strArr3 = {"attribution", "allow_pub_rendering"};
        JSONObject jSONObjectE2 = Q3.b.e0(jSONObject, strArr3);
        this.f14191d = jSONObjectE2 == null ? false : jSONObjectE2.optBoolean(strArr3[1], false);
        String[] strArr4 = {"enable_omid"};
        JSONObject jSONObjectE3 = Q3.b.e0(jSONObject, strArr4);
        this.f14192e = jSONObjectE3 == null ? false : jSONObjectE3.optBoolean(strArr4[0], false);
        String[] strArr5 = {"watermark_overlay_png_base64"};
        JSONObject jSONObjectE4 = Q3.b.e0(jSONObject, strArr5);
        this.f14194g = jSONObjectE4 != null ? jSONObjectE4.optString(strArr5[0], HttpUrl.FRAGMENT_ENCODE_SET) : HttpUrl.FRAGMENT_ENCODE_SET;
        this.f14193f = jSONObject.optJSONObject("overlay") != null;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15681N4)).booleanValue()) {
            this.f14195h = jSONObject.optJSONObject("omid_settings");
        } else {
            this.f14195h = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.C0811Kl
    public final Xu a() {
        JSONObject jSONObject = this.f14195h;
        return jSONObject != null ? new Xu(jSONObject, 8) : this.f14398a.f15241V;
    }

    @Override // com.google.android.gms.internal.ads.C0811Kl
    public final String b() {
        return this.f14194g;
    }

    @Override // com.google.android.gms.internal.ads.C0811Kl
    public final boolean c() {
        return this.f14192e;
    }

    @Override // com.google.android.gms.internal.ads.C0811Kl
    public final boolean d() {
        return this.f14190c;
    }

    @Override // com.google.android.gms.internal.ads.C0811Kl
    public final boolean e() {
        return this.f14191d;
    }

    @Override // com.google.android.gms.internal.ads.C0811Kl
    public final boolean f() {
        return this.f14193f;
    }

    public final JSONObject g() {
        JSONObject jSONObject = this.f14189b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f14398a.f15294z);
        } catch (JSONException unused) {
            return null;
        }
    }
}
