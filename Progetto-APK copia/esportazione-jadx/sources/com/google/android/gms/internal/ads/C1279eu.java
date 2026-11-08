package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1279eu implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f18619c;

    public /* synthetic */ C1279eu(String str, String str2, int i8) {
        this.f18617a = i8;
        this.f18618b = str;
        this.f18619c = str2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        int i8 = this.f18617a;
        String str = this.f18619c;
        String str2 = this.f18618b;
        switch (i8) {
            case 0:
                Bundle bundle = (Bundle) obj;
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15945t6)).booleanValue()) {
                    bundle.putString("request_id", str2);
                } else {
                    bundle.putString("request_id", str);
                }
                break;
            default:
                try {
                    JSONObject jSONObjectY = Q3.b.Y((JSONObject) obj, "pii");
                    jSONObjectY.put("doritos", str2);
                    jSONObjectY.put("doritos_v2", str);
                } catch (JSONException unused) {
                    p113o3.I.k("Failed putting doritos string.");
                }
                break;
        }
    }
}
