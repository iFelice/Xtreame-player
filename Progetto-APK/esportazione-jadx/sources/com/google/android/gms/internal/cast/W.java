package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class W extends AbstractC2457i2 {
    private static final W zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private V zzi;
    private int zzj;

    static {
        W w7 = new W();
        zzb = w7;
        AbstractC2457i2.e(W.class, w7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 1;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003င\u0002\u0004င\u0003\u0005ဉ\u0004\u0006᠌\u0005", new Object[]{"zzd", "zze", "zzf", C2517y.f22831P, "zzg", "zzh", "zzi", "zzj", C2517y.f22830O});
        }
        if (i10 == 3) {
            return new W();
        }
        if (i10 == 4) {
            return new U(i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
