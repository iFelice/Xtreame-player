package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class Q0 extends AbstractC2457i2 {
    private static final Q0 zzb;
    private int zzd;
    private int zze;

    static {
        Q0 q7 = new Q0();
        zzb = q7;
        AbstractC2457i2.e(Q0.class, q7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", C2517y.f22850i0});
        }
        if (i10 == 3) {
            return new Q0();
        }
        if (i10 == 4) {
            return new U(18, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
