package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class J5 extends D {
    private static final J5 zzb;
    private int zze;
    private L5 zzf;
    private r zzg = r.f23990H;

    static {
        J5 j8 = new J5();
        zzb = j8;
        D.f(J5.class, j8);
    }

    public static I5 n() {
        return (I5) zzb.h();
    }

    public static J5 o(r rVar, C2851x c2851x) {
        return (J5) D.j(zzb, rVar, c2851x);
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
            return new J5();
        }
        if (i9 == 4) {
            return new I5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final L5 p() {
        L5 l8 = this.zzf;
        return l8 == null ? L5.p() : l8;
    }

    public final r q() {
        return this.zzg;
    }
}
