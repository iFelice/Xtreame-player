package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class V0 extends AbstractC2457i2 {
    private static final V0 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        V0 v5 = new V0();
        zzb = v5;
        AbstractC2457i2.e(V0.class, v5);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzd", "zze", C2517y.f22845d0, "zzf"});
        }
        if (i10 == 3) {
            return new V0();
        }
        if (i10 == 4) {
            return new U(22, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
