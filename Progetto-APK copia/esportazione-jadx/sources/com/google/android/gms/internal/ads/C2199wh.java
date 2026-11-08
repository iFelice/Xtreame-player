package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2199wh implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21725G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2251xh f21726H;

    public /* synthetic */ C2199wh(C2251xh c2251xh, int i8) {
        this.f21725G = i8;
        this.f21726H = c2251xh;
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        int i8 = this.f21725G;
        C2251xh c2251xh = this.f21726H;
        switch (i8) {
            case 0:
                if (map != null) {
                    String str = (String) map.get("hashCode");
                    if (!TextUtils.isEmpty(str) && str.equals(c2251xh.f21906a)) {
                        c2251xh.f21908c.execute(new RunnableC0878Pf(this, 19));
                        break;
                    }
                }
                break;
            default:
                if (map != null) {
                    String str2 = (String) map.get("hashCode");
                    if (!TextUtils.isEmpty(str2) && str2.equals(c2251xh.f21906a)) {
                        c2251xh.f21908c.execute(new RunnableC0878Pf(this, 20));
                        break;
                    }
                }
                break;
        }
    }
}
