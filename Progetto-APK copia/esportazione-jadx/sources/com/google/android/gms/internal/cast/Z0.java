package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class Z0 extends AbstractC2457i2 {
    private static final Z0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;

    static {
        Z0 z7 = new Z0();
        zzb = z7;
        AbstractC2457i2.e(Z0.class, z7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005᠌\u0004\u0006ဆ\u0005", new Object[]{"zzd", "zze", "zzf", Z.f22573e, "zzg", "zzh", "zzi", C2517y.f22843b0, "zzj"});
        }
        if (i10 == 3) {
            return new Z0();
        }
        if (i10 == 4) {
            return new U(26, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
