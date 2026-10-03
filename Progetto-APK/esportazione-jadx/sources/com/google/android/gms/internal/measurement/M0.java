package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class M0 extends AbstractC2631s2 {
    private static final M0 zzb;
    private int zzd;
    private int zze = 14;
    private int zzf = 11;
    private int zzg = 60;

    static {
        M0 m7 = new M0();
        zzb = m7;
        AbstractC2631s2.l(M0.class, m7);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new X2(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i10 == 3) {
            return new M0();
        }
        if (i10 == 4) {
            return new C2634t0(8, i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
