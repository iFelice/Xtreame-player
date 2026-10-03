package com.google.android.gms.internal.pal;

import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.q1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2798q1 extends AbstractC2686c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f23984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Long f23985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f23986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f23987d;

    public C2798q1(String str, int i8) {
        this.f23984a = i8;
        if (i8 != 1) {
            HashMap mapA = AbstractC2686c1.a(str);
            if (mapA != null) {
                this.f23985b = (Long) mapA.get(0);
                this.f23986c = (Long) mapA.get(1);
                this.f23987d = (Long) mapA.get(2);
                return;
            }
            return;
        }
        HashMap mapA2 = AbstractC2686c1.a(str);
        if (mapA2 != null) {
            this.f23985b = (Long) mapA2.get(0);
            this.f23986c = (Boolean) mapA2.get(1);
            this.f23987d = (Boolean) mapA2.get(2);
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2686c1
    public final HashMap b() {
        switch (this.f23984a) {
            case 0:
                HashMap map = new HashMap();
                map.put(0, this.f23985b);
                map.put(1, (Long) this.f23986c);
                map.put(2, (Long) this.f23987d);
                return map;
            default:
                HashMap map2 = new HashMap();
                map2.put(0, this.f23985b);
                map2.put(1, (Boolean) this.f23986c);
                map2.put(2, (Boolean) this.f23987d);
                return map2;
        }
    }
}
