package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class K6 extends D {
    private static final K6 zzb;
    private int zze;
    private int zzf;
    private long zzg = -1;

    static {
        K6 k8 = new K6();
        zzb = k8;
        D.f(K6.class, k8);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", V5.f23677a, "zzg"});
        }
        if (i9 == 3) {
            return new K6();
        }
        if (i9 == 4) {
            return new C2860y0(12);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
