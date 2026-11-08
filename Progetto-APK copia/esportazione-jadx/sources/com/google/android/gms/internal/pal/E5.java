package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class E5 extends D {
    private static final E5 zzb;
    private G5 zze;

    static {
        E5 e8 = new E5();
        zzb = e8;
        D.f(E5.class, e8);
    }

    public static D5 m() {
        return (D5) zzb.h();
    }

    public static E5 n(r rVar, C2851x c2851x) {
        return (E5) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zze"});
        }
        if (i9 == 3) {
            return new E5();
        }
        if (i9 == 4) {
            return new D5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final G5 o() {
        G5 g8 = this.zze;
        return g8 == null ? G5.o() : g8;
    }
}
