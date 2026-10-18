package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class N0 extends AbstractC2457i2 {
    private static final N0 zzb;
    private int zzd;
    private boolean zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private Z0 zzi;
    private int zzj;
    private boolean zzk;

    static {
        N0 n7 = new N0();
        zzb = n7;
        AbstractC2457i2.e(N0.class, n7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005ဉ\u0004\u0006᠌\u0005\u0007ဇ\u0006", new Object[]{"zzd", "zze", "zzf", C2517y.f22846e0, "zzg", C2517y.f22848g0, "zzh", C2517y.f22835T, "zzi", "zzj", C2517y.f22847f0, "zzk"});
        }
        if (i10 == 3) {
            return new N0();
        }
        if (i10 == 4) {
            return new U(15, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
