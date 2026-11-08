package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class P5 extends D {
    private static final P5 zzb;
    private int zze;
    private T5 zzf;
    private r zzg = r.f23990H;

    static {
        P5 p7 = new P5();
        zzb = p7;
        D.f(P5.class, p7);
    }

    public static O5 n() {
        return (O5) zzb.h();
    }

    public static P5 o() {
        return zzb;
    }

    public static P5 p(r rVar, C2851x c2851x) {
        return (P5) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void t(P5 p7, T5 t7) {
        t7.getClass();
        p7.zzf = t7;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new P5();
        }
        if (i9 == 4) {
            return new O5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final T5 q() {
        T5 t7 = this.zzf;
        return t7 == null ? T5.o() : t7;
    }

    public final r r() {
        return this.zzg;
    }
}
