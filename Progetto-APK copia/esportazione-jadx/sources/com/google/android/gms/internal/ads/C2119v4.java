package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.v4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2119v4 extends AbstractC2067u4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f21441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f21442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f21443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f21444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f21445e;

    public C2119v4(String str) {
        this.f21441a = "E";
        this.f21442b = -1L;
        this.f21443c = "E";
        this.f21444d = "E";
        this.f21445e = "E";
        HashMap mapA = AbstractC2067u4.a(str);
        if (mapA != null) {
            this.f21441a = mapA.get(0) == null ? "E" : (String) mapA.get(0);
            this.f21442b = mapA.get(1) != null ? ((Long) mapA.get(1)).longValue() : -1L;
            this.f21443c = mapA.get(2) == null ? "E" : (String) mapA.get(2);
            this.f21444d = mapA.get(3) == null ? "E" : (String) mapA.get(3);
            this.f21445e = mapA.get(4) != null ? (String) mapA.get(4) : "E";
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2067u4
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f21441a);
        map.put(4, this.f21445e);
        map.put(3, this.f21444d);
        map.put(2, this.f21443c);
        map.put(1, Long.valueOf(this.f21442b));
        return map;
    }
}
