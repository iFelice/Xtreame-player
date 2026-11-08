package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class T0 extends AbstractC2457i2 {
    private static final T0 zzb;
    private int zzd;
    private InterfaceC2477n2 zze = K2.f22483J;
    private boolean zzf;
    private boolean zzg;
    private long zzh;
    private long zzi;
    private long zzj;

    static {
        T0 t7 = new T0();
        zzb = t7;
        AbstractC2457i2.e(T0.class, t7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001b\u0002ဇ\u0000\u0003ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u0006ဂ\u0004", new Object[]{"zzd", "zze", O0.class, "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i10 == 3) {
            return new T0();
        }
        if (i10 == 4) {
            return new U(20, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
