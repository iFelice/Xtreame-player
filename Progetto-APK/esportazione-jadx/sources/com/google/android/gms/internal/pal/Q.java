package com.google.android.gms.internal.pal;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends S {
    @Override // com.google.android.gms.internal.pal.S
    public final List a(Object obj, long j8) {
        I i8 = (I) AbstractC2836v0.f24034c.f(obj, j8);
        if (((AbstractC2748k) i8).f23887G) {
            return i8;
        }
        int size = i8.size();
        I iZzd = i8.zzd(size == 0 ? 10 : size + size);
        AbstractC2836v0.q(obj, j8, iZzd);
        return iZzd;
    }

    @Override // com.google.android.gms.internal.pal.S
    public final void b(Object obj, long j8) {
        ((AbstractC2748k) ((I) AbstractC2836v0.f24034c.f(obj, j8))).f23887G = false;
    }

    @Override // com.google.android.gms.internal.pal.S
    public final void c(Object obj, long j8, Object obj2) {
        C2820t0 c2820t0 = AbstractC2836v0.f24034c;
        I iZzd = (I) c2820t0.f(obj, j8);
        I i8 = (I) c2820t0.f(obj2, j8);
        int size = iZzd.size();
        int size2 = i8.size();
        if (size > 0 && size2 > 0) {
            if (!((AbstractC2748k) iZzd).f23887G) {
                iZzd = iZzd.zzd(size2 + size);
            }
            iZzd.addAll(i8);
        }
        if (size > 0) {
            i8 = iZzd;
        }
        AbstractC2836v0.q(obj, j8, i8);
    }
}
