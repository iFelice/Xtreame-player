package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class H0 extends AbstractC2457i2 {
    private static final H0 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private long zzg;

    static {
        H0 h8 = new H0();
        zzb = h8;
        AbstractC2457i2.e(H0.class, h8);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001စ\u0000\u0002:\u0000\u00035\u0000\u00048\u0000", new Object[]{"zzf", "zze", "zzd", "zzg"});
        }
        if (i10 == 3) {
            return new H0();
        }
        if (i10 == 4) {
            return new U(11, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
