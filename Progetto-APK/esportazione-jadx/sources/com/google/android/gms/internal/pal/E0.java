package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class E0 extends D {
    private static final E0 zzb;
    private int zze;
    private long zzf;
    private int zzg;
    private boolean zzh;
    private H zzi = F.f23506J;
    private long zzj;

    static {
        E0 e8 = new E0();
        zzb = e8;
        D.f(E0.class, e8);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new C2741j0(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i10 == 3) {
            return new E0();
        }
        if (i10 == 4) {
            return new C2860y0(i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
