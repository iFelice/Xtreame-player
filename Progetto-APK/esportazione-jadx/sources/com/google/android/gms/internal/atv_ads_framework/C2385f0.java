package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2385f0 extends AbstractC2387g0 {
    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2387g0
    public final void a(Object obj, long j8) {
        F f8 = (F) ((Y) I0.i(obj, j8));
        if (f8.f22256G) {
            f8.f22256G = false;
        }
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2387g0
    public final void b(Object obj, long j8, Object obj2) {
        Y yZzg = (Y) I0.i(obj, j8);
        Y y7 = (Y) I0.i(obj2, j8);
        int size = yZzg.size();
        int size2 = y7.size();
        if (size > 0 && size2 > 0) {
            if (!((F) yZzg).f22256G) {
                yZzg = yZzg.zzg(size2 + size);
            }
            yZzg.addAll(y7);
        }
        if (size > 0) {
            y7 = yZzg;
        }
        I0.m(obj, j8, y7);
    }
}
