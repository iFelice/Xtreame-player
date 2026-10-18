package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class A6 extends D {
    private static final A6 zzb;
    private int zze;

    static {
        A6 a8 = new A6();
        zzb = a8;
        D.f(A6.class, a8);
    }

    public static A6 m() {
        return zzb;
    }

    public static A6 n(r rVar, C2851x c2851x) {
        return (A6) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
        }
        if (i9 == 3) {
            return new A6();
        }
        if (i9 == 4) {
            return new C2860y0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
