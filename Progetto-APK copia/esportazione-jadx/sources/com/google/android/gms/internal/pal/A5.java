package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class A5 extends D {
    private static final A5 zzb;

    static {
        A5 a8 = new A5();
        zzb = a8;
        D.f(A5.class, a8);
    }

    public static A5 m() {
        return zzb;
    }

    public static A5 n(r rVar, C2851x c2851x) {
        return (A5) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0000", null);
        }
        if (i9 == 3) {
            return new A5();
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
