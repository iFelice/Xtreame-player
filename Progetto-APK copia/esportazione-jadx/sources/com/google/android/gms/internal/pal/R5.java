package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class R5 extends D {
    private static final R5 zzb;
    private T5 zze;
    private int zzf;
    private int zzg;

    static {
        R5 r7 = new R5();
        zzb = r7;
        D.f(R5.class, r7);
    }

    public static Q5 n() {
        return (Q5) zzb.h();
    }

    public static R5 o() {
        return zzb;
    }

    public static R5 p(r rVar, C2851x c2851x) {
        return (R5) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new R5();
        }
        if (i9 == 4) {
            return new Q5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf;
    }

    public final T5 q() {
        T5 t7 = this.zze;
        return t7 == null ? T5.o() : t7;
    }
}
