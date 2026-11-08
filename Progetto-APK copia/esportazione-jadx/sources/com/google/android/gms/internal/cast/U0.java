package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class U0 extends AbstractC2457i2 {
    private static final U0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private R0 zzg;

    static {
        U0 u7 = new U0();
        zzb = u7;
        AbstractC2457i2.e(U0.class, u7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i10 == 3) {
            return new U0();
        }
        if (i10 == 4) {
            return new U(21, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
