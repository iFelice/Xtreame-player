package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class Zx extends Wx {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f17816f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Zx(C0871Om c0871Om, HashSet hashSet, JSONObject jSONObject, long j8, int i8) {
        super(c0871Om, hashSet, jSONObject, j8);
        this.f17816f = i8;
    }

    @Override // com.google.android.gms.internal.ads.Xx
    /* JADX INFO: renamed from: a */
    public final void onPostExecute(String str) {
        Hx hx;
        switch (this.f17816f) {
            case 0:
                b(str);
                super.onPostExecute(str);
                break;
            default:
                if (!TextUtils.isEmpty(str) && (hx = Hx.f13820c) != null) {
                    for (C2267xx c2267xx : Collections.unmodifiableCollection(hx.f13821a)) {
                        if (this.f17349c.contains(c2267xx.f21962g)) {
                            Px px = c2267xx.f21959d;
                            if (this.f17351e >= px.f15522c) {
                                px.f15523d = 2;
                                Cw.L0(px.a(), "setNativeViewHierarchy", str, px.f15520a);
                            }
                        }
                    }
                }
                super.onPostExecute(str);
                break;
        }
    }

    public final void b(String str) {
        Hx hx = Hx.f13820c;
        if (hx != null) {
            for (C2267xx c2267xx : Collections.unmodifiableCollection(hx.f13821a)) {
                if (this.f17349c.contains(c2267xx.f21962g)) {
                    Px px = c2267xx.f21959d;
                    if (this.f17351e >= px.f15522c && px.f15523d != 3) {
                        px.f15523d = 3;
                        Cw.L0(px.a(), "setNativeViewHierarchy", str, px.f15520a);
                    }
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        int i8 = this.f17816f;
        JSONObject jSONObject = this.f17350d;
        switch (i8) {
            case 0:
                return jSONObject.toString();
            default:
                C0871Om c0871Om = this.f17552b;
                if (Sx.e(jSONObject, (JSONObject) c0871Om.f15196H)) {
                    return null;
                }
                c0871Om.f15196H = jSONObject;
                return jSONObject.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.Xx, android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        switch (this.f17816f) {
            case 0:
                String str = (String) obj;
                b(str);
                super.onPostExecute(str);
                break;
            default:
                onPostExecute((String) obj);
                break;
        }
    }
}
