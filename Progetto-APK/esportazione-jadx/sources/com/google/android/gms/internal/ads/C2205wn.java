package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2205wn implements Lw {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Map f21745G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C2173w6 f21746H;

    public C2205wn(C2173w6 c2173w6, Map map) {
        this.f21745G = map;
        this.f21746H = c2173w6;
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void c(Iw iw, String str, Throwable th) {
        Map map = this.f21745G;
        if (map.containsKey(iw)) {
            this.f21746H.b(((C2153vn) map.get(iw)).f21596c);
        }
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void d(Iw iw, String str) {
        Map map = this.f21745G;
        if (map.containsKey(iw)) {
            this.f21746H.b(((C2153vn) map.get(iw)).f21595b);
        }
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void e(String str) {
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void i(Iw iw, String str) {
        Map map = this.f21745G;
        if (map.containsKey(iw)) {
            this.f21746H.b(((C2153vn) map.get(iw)).f21594a);
        }
    }
}
