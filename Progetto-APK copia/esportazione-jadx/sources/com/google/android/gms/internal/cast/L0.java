package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class L0 extends AbstractC2457i2 {
    private static final L0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        L0 l4 = new L0();
        zzb = l4;
        AbstractC2457i2.e(L0.class, l4);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i10 == 3) {
            return new L0();
        }
        if (i10 == 4) {
            return new U(14, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
