package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1576kh implements InterfaceC1215dh {
    @Override // com.google.android.gms.internal.ads.InterfaceC1215dh
    public final void a(HashMap map) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.I9)).booleanValue() || map.isEmpty()) {
            return;
        }
        String str = (String) map.get("is_topics_ad_personalization_allowed");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        p083k3.l.f25980A.f25987g.d().i(Boolean.parseBoolean(str));
    }
}
