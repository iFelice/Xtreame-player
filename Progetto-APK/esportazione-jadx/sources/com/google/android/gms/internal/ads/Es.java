package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Es implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13233a;

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        switch (this.f13233a) {
            case 0:
                ((Bundle) obj).putString("ms", Integer.toString(17));
                break;
            case 1:
                ((Bundle) obj).putString("ms", null);
                break;
            case 2:
                break;
            case 3:
                ((Bundle) obj).putBoolean("sdk_prefetch", true);
                break;
            case 4:
                break;
            default:
                try {
                    ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451000);
                } catch (JSONException unused) {
                    return;
                }
                break;
        }
    }
}
