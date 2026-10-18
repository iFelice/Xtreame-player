package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Cs implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f12712b;

    public /* synthetic */ Cs(String str, int i8) {
        this.f12711a = i8;
        this.f12712b = str;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        int i8 = this.f12711a;
        String str = this.f12712b;
        switch (i8) {
            case 0:
                Bundle bundle = (Bundle) obj;
                if (str != null) {
                    bundle.putString("arek", str);
                }
                break;
            case 1:
                ((Bundle) obj).putString("ms", str);
                break;
            case 2:
                com.bumptech.glide.c.E("omid_v", str, (Bundle) obj);
                break;
            case 3:
                Bundle bundle2 = (Bundle) obj;
                if (!TextUtils.isEmpty(str)) {
                    bundle2.putString("query_info", str);
                    break;
                }
                break;
            case 4:
                try {
                    ((JSONObject) obj).put("ms", str);
                } catch (JSONException e8) {
                    p113o3.I.l("Failed putting Ad ID.", e8);
                    return;
                }
                break;
            case 5:
                try {
                    JSONObject jSONObjectY = Q3.b.Y((JSONObject) obj, "pii");
                    if (!TextUtils.isEmpty(str)) {
                        jSONObjectY.put("attok", str);
                    }
                } catch (JSONException e9) {
                    p113o3.I.l("Failed putting attestation token.", e9);
                    return;
                }
                break;
            default:
                JSONObject jSONObject = (JSONObject) obj;
                try {
                    if (!TextUtils.isEmpty(str)) {
                        Q3.b.Y(jSONObject, "pii").put("adsid", str);
                    }
                } catch (JSONException e10) {
                    p120p3.h.h("Failed putting trustless token.", e10);
                }
                break;
        }
    }
}
