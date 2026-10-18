package com.google.android.gms.internal.ads;

import android.os.Bundle;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1844pp implements InterfaceC2165vz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20491a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0973Wc f20492b;

    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
    public final Object apply(Object obj) {
        int i8 = this.f20491a;
        C0973Wc c0973Wc = this.f20492b;
        switch (i8) {
            case 0:
                String string = c0973Wc.f17250G.getString("ms");
                if (string == null) {
                    string = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                boolean z7 = c0973Wc.f17260Q;
                boolean z8 = c0973Wc.f17261R;
                return new C0757Hc(c0973Wc.f17252I, c0973Wc.f17253J, c0973Wc.f17255L, string, -1, c0973Wc.f17257N, c0973Wc.f17254K, z7, z8);
            default:
                JSONObject jSONObject = (JSONObject) obj;
                Bundle bundle = c0973Wc.f17250G;
                if (bundle == null) {
                    return jSONObject;
                }
                try {
                    C3097p c3097p = C3097p.f26618f;
                    JSONObject jSONObjectH = c3097p.f26619a.h(bundle);
                    try {
                        c3097p.f26619a.getClass();
                        p120p3.d.j(jSONObject, jSONObjectH);
                        return jSONObject;
                    } catch (JSONException unused) {
                        return jSONObjectH;
                    }
                } catch (JSONException unused2) {
                    return jSONObject;
                }
        }
    }
}
