package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class C5 extends D {
    private static final C5 zzb;
    private C2723g6 zze;

    static {
        C5 c8 = new C5();
        zzb = c8;
        D.f(C5.class, c8);
    }

    public static B5 m() {
        return (B5) zzb.h();
    }

    public static C5 n() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zze"});
        }
        if (i9 == 3) {
            return new C5();
        }
        if (i9 == 4) {
            return new B5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final C2723g6 o() {
        C2723g6 c2723g6 = this.zze;
        return c2723g6 == null ? C2723g6.n() : c2723g6;
    }
}
