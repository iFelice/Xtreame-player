package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class Y0 extends AbstractC2457i2 {
    private static final Y0 zzb;
    private int zzd;
    private int zze;
    private long zzf;
    private int zzg;

    static {
        Y0 y7 = new Y0();
        zzb = y7;
        AbstractC2457i2.e(Y0.class, y7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", Z.f22572d, "zzf", "zzg", C2517y.f22836U});
        }
        if (i10 == 3) {
            return new Y0();
        }
        if (i10 == 4) {
            return new U(25, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
