package com.google.android.gms.internal.pal;

import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2694d1 extends AbstractC2686c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f23770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f23771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f23772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f23773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f23774e;

    public C2694d1(String str) {
        this.f23770a = "E";
        this.f23771b = -1L;
        this.f23772c = "E";
        this.f23773d = "E";
        this.f23774e = "E";
        HashMap mapA = AbstractC2686c1.a(str);
        if (mapA != null) {
            this.f23770a = mapA.get(0) == null ? "E" : (String) mapA.get(0);
            this.f23771b = mapA.get(1) != null ? ((Long) mapA.get(1)).longValue() : -1L;
            this.f23772c = mapA.get(2) == null ? "E" : (String) mapA.get(2);
            this.f23773d = mapA.get(3) == null ? "E" : (String) mapA.get(3);
            this.f23774e = mapA.get(4) != null ? (String) mapA.get(4) : "E";
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2686c1
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f23770a);
        map.put(4, this.f23774e);
        map.put(3, this.f23773d);
        map.put(2, this.f23772c);
        map.put(1, Long.valueOf(this.f23771b));
        return map;
    }
}
