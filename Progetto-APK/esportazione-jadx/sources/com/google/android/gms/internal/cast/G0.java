package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class G0 extends AbstractC2457i2 {
    private static final G0 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        G0 g8 = new G0();
        zzb = g8;
        AbstractC2457i2.e(G0.class, g8);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzd", "zze", C2517y.f22842a0, "zzf", C2517y.f22841Z});
        }
        if (i10 == 3) {
            return new G0();
        }
        if (i10 == 4) {
            return new U(10, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
