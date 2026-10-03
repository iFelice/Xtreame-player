package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Xs implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17525c;

    public /* synthetic */ Xs(String str, int i8) {
        this.f17523a = 1;
        this.f17524b = str;
        this.f17525c = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        int i8 = this.f17523a;
        int i9 = this.f17525c;
        String str = this.f17524b;
        switch (i8) {
            case 0:
                Bundle bundle = (Bundle) obj;
                if (!TextUtils.isEmpty(str) && i9 != -1) {
                    Bundle bundleZ = com.bumptech.glide.c.z("pii", bundle);
                    bundle.putBundle("pii", bundleZ);
                    bundleZ.putString("pvid", str);
                    bundleZ.putInt("pvid_s", i9);
                    break;
                }
                break;
            case 1:
                Bundle bundle2 = (Bundle) obj;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.I9)).booleanValue()) {
                    if (!TextUtils.isEmpty(str)) {
                        bundle2.putString("topics", str);
                    }
                    if (i9 != -1) {
                        bundle2.putInt("atps", i9);
                    }
                }
                break;
            default:
                JSONObject jSONObject = (JSONObject) obj;
                if (!TextUtils.isEmpty(str) && i9 != -1) {
                    try {
                        JSONObject jSONObjectY = Q3.b.Y(jSONObject, "pii");
                        jSONObjectY.put("pvid", str);
                        jSONObjectY.put("pvid_s", i9);
                    } catch (JSONException e8) {
                        p113o3.I.l("Failed putting gms core app set ID info.", e8);
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ Xs(String str, int i8, int i9) {
        this.f17523a = i9;
        this.f17524b = str;
        this.f17525c = i8;
    }
}
