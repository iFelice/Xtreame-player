package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class B0 extends AbstractC2631s2 {
    private static final B0 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        B0 b8 = new B0();
        zzb = b8;
        AbstractC2631s2.l(B0.class, b8);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = 4;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            D0 d6 = D0.f22897a;
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzd", "zze", d6, "zzf", d6});
        }
        if (i11 == 3) {
            return new B0();
        }
        if (i11 == 4) {
            return new C2634t0(i10, i9);
        }
        if (i11 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int r() {
        int iT0 = Cw.t0(this.zzf);
        if (iT0 == 0) {
            return 1;
        }
        return iT0;
    }

    public final int s() {
        int iT0 = Cw.t0(this.zze);
        if (iT0 == 0) {
            return 1;
        }
        return iT0;
    }
}
