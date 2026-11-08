package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class M0 extends AbstractC2457i2 {
    private static final M0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private InterfaceC2477n2 zzh = K2.f22483J;

    static {
        M0 m7 = new M0();
        zzb = m7;
        AbstractC2457i2.e(M0.class, m7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", L0.class});
        }
        if (i10 == 3) {
            return new M0();
        }
        if (i10 == 4) {
            return new U(13, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
