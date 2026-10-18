package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ta, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0929Ta implements InterfaceC2165vz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f16660c;

    public /* synthetic */ C0929Ta(int i8, Object obj, Object obj2) {
        this.f16658a = i8;
        this.f16659b = obj;
        this.f16660c = obj2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
    public final Object apply(Object obj) {
        int i8 = this.f16658a;
        Object obj2 = this.f16660c;
        Object obj3 = this.f16659b;
        switch (i8) {
            case 0:
                InterfaceC0815La interfaceC0815La = (InterfaceC0815La) obj;
                interfaceC0815La.z((String) obj3, (N9) obj2);
                return interfaceC0815La;
            case 1:
                C2100um c2100um = (C2100um) obj3;
                JSONObject jSONObject = (JSONObject) obj2;
                List list = (List) obj;
                c2100um.getClass();
                if (list == null || list.isEmpty()) {
                    return null;
                }
                String strOptString = jSONObject.optString("text");
                Integer numD = C2100um.d(jSONObject, "bg_color");
                Integer numD2 = C2100um.d(jSONObject, "text_color");
                int iOptInt = jSONObject.optInt("text_size", -1);
                jSONObject.optBoolean("allow_pub_rendering");
                int iOptInt2 = jSONObject.optInt("animation_ms", 1000);
                return new H8(strOptString, list, numD, numD2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject.optInt("presentation_ms", 4000) + iOptInt2, c2100um.f21375h.f14647K);
            default:
                C1999sp c1999sp = (C1999sp) obj3;
                C0973Wc c0973Wc = (C0973Wc) obj2;
                Ip ip = (Ip) obj;
                c1999sp.getClass();
                ip.f14052c.put("Content-Type", ip.f14054e);
                String strW = p083k3.l.f25980A.f25983c.w(c1999sp.f20991h, c0973Wc.f17251H.f28196G);
                Map map = ip.f14052c;
                map.put("User-Agent", strW);
                Bundle bundle = new Bundle();
                for (Map.Entry entry : map.entrySet()) {
                    bundle.putString((String) entry.getKey(), (String) entry.getValue());
                }
                return new C0787Jc(ip.f14050a, ip.f14051b, bundle, ip.f14053d, ip.f14055f, c0973Wc.f17253J, c0973Wc.f17257N);
        }
    }
}
