package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class H5 extends D {
    private static final H5 zzb;
    private int zze;
    private int zzf;

    static {
        H5 h8 = new H5();
        zzb = h8;
        D.f(H5.class, h8);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"zze", "zzf", C2755k6.f23916a});
        }
        if (i9 == 3) {
            return new H5();
        }
        if (i9 == 4) {
            return new C2860y0(6);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
