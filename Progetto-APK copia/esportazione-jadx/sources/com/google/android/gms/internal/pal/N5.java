package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class N5 extends D {
    private static final N5 zzb;
    private int zze;
    private int zzf;
    private r zzg = r.f23990H;

    static {
        N5 n7 = new N5();
        zzb = n7;
        D.f(N5.class, n7);
    }

    public static M5 m() {
        return (M5) zzb.h();
    }

    public static N5 n() {
        return zzb;
    }

    public static void s(N5 n7) {
        n7.zze = 2;
    }

    public static void t(N5 n7) {
        n7.zzf = 3;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new N5();
        }
        if (i9 == 4) {
            return new M5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final r o() {
        return this.zzg;
    }

    public final int q() {
        int i8 = this.zze;
        int i9 = 2;
        if (i8 != 0) {
            if (i8 == 2) {
                i9 = 4;
            } else if (i8 == 3) {
                i9 = 5;
            } else if (i8 != 4) {
                i9 = i8 != 5 ? 0 : 7;
            } else {
                i9 = 6;
            }
        }
        if (i9 == 0) {
            return 1;
        }
        return i9;
    }

    public final int r() {
        int iC = AbstractC2864y4.C(this.zzf);
        if (iC == 0) {
            return 1;
        }
        return iC;
    }
}
