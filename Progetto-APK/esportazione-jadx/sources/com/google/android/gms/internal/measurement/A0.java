package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class A0 extends AbstractC2631s2 {
    private static final A0 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        A0 a8 = new A0();
        zzb = a8;
        AbstractC2631s2.l(A0.class, a8);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = 3;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzd", "zze", D0.f22897a, "zzf", C0.f22872a});
        }
        if (i11 == 3) {
            return new A0();
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
        int i8;
        int i9 = this.zzf;
        if (i9 != 0) {
            i8 = 2;
            if (i9 != 1) {
                i8 = i9 != 2 ? 0 : 3;
            }
        } else {
            i8 = 1;
        }
        if (i8 == 0) {
            return 1;
        }
        return i8;
    }

    public final int s() {
        int iT0 = Cw.t0(this.zze);
        if (iT0 == 0) {
            return 1;
        }
        return iT0;
    }
}
