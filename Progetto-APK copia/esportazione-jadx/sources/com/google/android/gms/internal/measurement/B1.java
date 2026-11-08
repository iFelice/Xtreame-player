package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;

/* JADX INFO: loaded from: classes.dex */
public final class B1 extends AbstractC2631s2 {
    private static final B1 zzb;
    private int zzd;
    private InterfaceC2661y2 zze = W2.f23030K;
    private C2665z1 zzf;

    static {
        B1 b8 = new B1();
        zzb = b8;
        AbstractC2631s2.l(B1.class, b8);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zzd", "zze", D1.class, "zzf"});
        }
        if (i9 == 3) {
            return new B1();
        }
        AbstractC2090uc abstractC2090uc = null;
        if (i9 == 4) {
            return new C2634t0(16, abstractC2090uc);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final C2665z1 q() {
        C2665z1 c2665z1 = this.zzf;
        return c2665z1 == null ? C2665z1.s() : c2665z1;
    }

    public final InterfaceC2661y2 s() {
        return this.zze;
    }
}
