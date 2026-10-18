package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class G5 extends D {
    private static final G5 zzb;
    private N5 zze;
    private C5 zzf;
    private int zzg;

    static {
        G5 g8 = new G5();
        zzb = g8;
        D.f(G5.class, g8);
    }

    public static F5 n() {
        return (F5) zzb.h();
    }

    public static G5 o() {
        return zzb;
    }

    public static void t(G5 g8, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        g8.zzg = i8 - 2;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new G5();
        }
        if (i9 == 4) {
            return new F5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final C5 m() {
        C5 c8 = this.zzf;
        return c8 == null ? C5.n() : c8;
    }

    public final N5 p() {
        N5 n7 = this.zze;
        return n7 == null ? N5.n() : n7;
    }

    public final int s() {
        int i8 = this.zzg;
        int i9 = 2;
        if (i8 != 0) {
            if (i8 == 1) {
                i9 = 3;
            } else if (i8 != 2) {
                i9 = i8 != 3 ? 0 : 5;
            } else {
                i9 = 4;
            }
        }
        if (i9 == 0) {
            return 1;
        }
        return i9;
    }
}
