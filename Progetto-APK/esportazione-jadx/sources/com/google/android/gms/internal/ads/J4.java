package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class J4 extends AbstractC2067u4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Long f14121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f14122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f14123d;

    public J4(String str, int i8) {
        this.f14120a = i8;
        if (i8 != 1) {
            HashMap mapA = AbstractC2067u4.a(str);
            if (mapA != null) {
                this.f14121b = (Long) mapA.get(0);
                this.f14122c = (Long) mapA.get(1);
                this.f14123d = (Long) mapA.get(2);
                return;
            }
            return;
        }
        HashMap mapA2 = AbstractC2067u4.a(str);
        if (mapA2 != null) {
            this.f14121b = (Long) mapA2.get(0);
            this.f14122c = (Boolean) mapA2.get(1);
            this.f14123d = (Boolean) mapA2.get(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2067u4
    public final HashMap b() {
        switch (this.f14120a) {
            case 0:
                HashMap map = new HashMap();
                map.put(0, this.f14121b);
                map.put(1, (Long) this.f14122c);
                map.put(2, (Long) this.f14123d);
                return map;
            default:
                HashMap map2 = new HashMap();
                map2.put(0, this.f14121b);
                map2.put(1, (Boolean) this.f14122c);
                map2.put(2, (Boolean) this.f14123d);
                return map2;
        }
    }
}
