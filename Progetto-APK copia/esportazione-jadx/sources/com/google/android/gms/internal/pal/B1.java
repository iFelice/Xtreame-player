package com.google.android.gms.internal.pal;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class B1 extends AbstractC2686c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Long f23454a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Long f23455b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Long f23456c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Long f23457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f23458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Long f23459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Long f23460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Long f23461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Long f23462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Long f23463j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Long f23464k;

    public B1(String str) {
        HashMap mapA = AbstractC2686c1.a(str);
        if (mapA != null) {
            this.f23454a = (Long) mapA.get(0);
            this.f23455b = (Long) mapA.get(1);
            this.f23456c = (Long) mapA.get(2);
            this.f23457d = (Long) mapA.get(3);
            this.f23458e = (Long) mapA.get(4);
            this.f23459f = (Long) mapA.get(5);
            this.f23460g = (Long) mapA.get(6);
            this.f23461h = (Long) mapA.get(7);
            this.f23462i = (Long) mapA.get(8);
            this.f23463j = (Long) mapA.get(9);
            this.f23464k = (Long) mapA.get(10);
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2686c1
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, this.f23454a);
        map.put(1, this.f23455b);
        map.put(2, this.f23456c);
        map.put(3, this.f23457d);
        map.put(4, this.f23458e);
        map.put(5, this.f23459f);
        map.put(6, this.f23460g);
        map.put(7, this.f23461h);
        map.put(8, this.f23462i);
        map.put(9, this.f23463j);
        map.put(10, this.f23464k);
        return map;
    }
}
