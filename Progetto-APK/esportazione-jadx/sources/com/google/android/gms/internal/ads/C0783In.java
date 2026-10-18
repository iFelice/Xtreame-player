package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.In, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0783In extends AbstractC0798Jn {
    public C0783In(C1936re c1936re, p120p3.k kVar, p174w3.a aVar, T1.a aVar2, Context context) {
        super(c1936re, kVar, aVar2, context);
        HashMap map = this.f14203a;
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        map.put("device", p113o3.O.G());
        map.put("app", aVar.f31004b);
        Context context2 = aVar.f31003a;
        map.put("is_lite_sdk", true != p113o3.O.d(context2) ? "0" : "1");
        J7 j8 = Q7.f15777a;
        C3099q c3099q = C3099q.f26624d;
        ArrayList arrayListD = c3099q.f26625a.d();
        J7 j9 = Q7.f15929r6;
        O7 o7 = c3099q.f26627c;
        boolean zBooleanValue = ((Boolean) o7.a(j9)).booleanValue();
        C1625le c1625le = lVar.f25987g;
        if (zBooleanValue) {
            arrayListD.addAll(c1625le.d().y().f18948i);
        }
        map.put("e", TextUtils.join(",", arrayListD));
        map.put("sdkVersion", aVar.f31005c);
        if (((Boolean) o7.a(Q7.Fa)).booleanValue()) {
            map.put("is_bstar", true != p113o3.O.b(context2) ? "0" : "1");
        }
        if (((Boolean) o7.a(Q7.H8)).booleanValue() && ((Boolean) o7.a(Q7.f15815e2)).booleanValue()) {
            String str = c1625le.f19811g;
            map.put("plugin", str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str);
        }
    }
}
