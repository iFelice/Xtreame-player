package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1744nt implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f20203b;

    public /* synthetic */ C1744nt(Object obj, int i8) {
        this.f20202a = i8;
        this.f20203b = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        boolean z7;
        switch (this.f20202a) {
            case 0:
                ((Bundle) obj).putString("key_schema", ((C1796ot) this.f20203b).f20340a.f19671a);
                return;
            case 1:
                Bundle bundle = (Bundle) obj;
                if (((Nv) this.f20203b) != null) {
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.hb)).booleanValue()) {
                        return;
                    }
                    Nv nv = (Nv) this.f20203b;
                    synchronized (nv.f15100b) {
                        nv.b();
                        z7 = nv.f15102d == 2;
                        break;
                    }
                    bundle.putBoolean("render_in_browser", z7);
                    bundle.putBoolean("disable_ml", ((Nv) this.f20203b).a());
                    return;
                }
                return;
            case 2:
                try {
                    ((JSONObject) obj).put("cache_state", (JSONObject) this.f20203b);
                    return;
                } catch (JSONException unused) {
                    p113o3.I.k("Unable to get cache_state");
                    return;
                }
            case 3:
                Nu nu = (Nu) this.f20203b;
                JSONObject jSONObject = (JSONObject) obj;
                nu.getClass();
                try {
                    jSONObject.put("gms_sdk_env", nu.f15098a);
                    return;
                } catch (JSONException unused2) {
                    p113o3.I.k("Failed putting version constants.");
                    return;
                }
            case 4:
                try {
                    ((JSONObject) obj).put("eid", TextUtils.join(",", (List) this.f20203b));
                    return;
                } catch (JSONException unused3) {
                    p113o3.I.k("Failed putting experiment ids.");
                    return;
                }
            default:
                try {
                    ((JSONObject) obj).put("video_decoders", C3097p.f26618f.f26619a.i((Map) this.f20203b));
                    return;
                } catch (JSONException e8) {
                    p113o3.I.k("Could not encode video decoder properties: ".concat(String.valueOf(e8.getMessage())));
                    return;
                }
        }
    }
}
