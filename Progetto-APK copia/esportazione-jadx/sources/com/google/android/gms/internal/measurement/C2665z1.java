package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.z1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2665z1 extends AbstractC2631s2 {
    private static final C2665z1 zzb;
    private InterfaceC2661y2 zzd = W2.f23030K;

    static {
        C2665z1 c2665z1 = new C2665z1();
        zzb = c2665z1;
        AbstractC2631s2.l(C2665z1.class, c2665z1);
    }

    public static C2665z1 s() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", A1.class});
        }
        if (i9 == 3) {
            return new C2665z1();
        }
        AbstractC2090uc abstractC2090uc = null;
        if (i9 == 4) {
            return new C2634t0(14, abstractC2090uc);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzd.size();
    }

    public final InterfaceC2661y2 t() {
        return this.zzd;
    }
}
