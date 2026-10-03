package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class T5 extends D {
    private static final T5 zzb;
    private int zze;
    private int zzf;

    static {
        T5 t7 = new T5();
        zzb = t7;
        D.f(T5.class, t7);
    }

    public static S5 n() {
        return (S5) zzb.h();
    }

    public static T5 o() {
        return zzb;
    }

    public static void r(T5 t7, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        t7.zze = i8 - 2;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new T5();
        }
        if (i9 == 4) {
            return new S5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf;
    }

    public final int q() {
        int iC = AbstractC2864y4.C(this.zze);
        if (iC == 0) {
            return 1;
        }
        return iC;
    }
}
