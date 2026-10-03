package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;

/* JADX INFO: loaded from: classes.dex */
public final class Bt implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f12510b;

    public /* synthetic */ Bt(int i8, Bundle bundle) {
        this.f12509a = i8;
        this.f12510b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        int i8 = this.f12509a;
        Bundle bundle = this.f12510b;
        switch (i8) {
            case 0:
                ((Bundle) obj).putBundle("content_info", bundle);
                break;
            case 1:
                Bundle bundle2 = (Bundle) obj;
                Bundle bundleZ = com.bumptech.glide.c.z("device", bundle2);
                bundleZ.putBundle("android_mem_info", bundle);
                bundle2.putBundle("device", bundleZ);
                break;
            case 2:
                Bundle bundle3 = (Bundle) obj;
                if (bundle != null) {
                    bundle3.putAll(bundle);
                }
                break;
            case 3:
                ((Bundle) obj).putBundle("shared_pref", bundle);
                break;
            default:
                JSONObject jSONObject = (JSONObject) obj;
                if (bundle != null) {
                    try {
                        Q3.b.Y(Q3.b.Y(jSONObject, "device"), "play_store").put("parental_controls", C3097p.f26618f.f26619a.h(bundle));
                    } catch (JSONException unused) {
                        p113o3.I.k("Failed putting parental controls bundle.");
                    }
                }
                break;
        }
    }
}
