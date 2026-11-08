package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.l6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2763l6 extends D {
    private static final C2763l6 zzb;
    private C2707e6 zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        C2763l6 c2763l6 = new C2763l6();
        zzb = c2763l6;
        D.f(C2763l6.class, c2763l6);
    }

    public static C2747j6 o() {
        return (C2747j6) zzb.h();
    }

    public static void v(C2763l6 c2763l6, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        c2763l6.zzf = i8 - 2;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new C2763l6();
        }
        if (i9 == 4) {
            return new C2747j6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzg;
    }

    public final C2707e6 n() {
        C2707e6 c2707e6 = this.zze;
        return c2707e6 == null ? C2707e6.o() : c2707e6;
    }

    public final boolean r() {
        return this.zze != null;
    }

    public final int s() {
        int i8 = this.zzf;
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

    public final int t() {
        int i8 = this.zzh;
        int i9 = 2;
        if (i8 != 0) {
            if (i8 == 1) {
                i9 = 3;
            } else if (i8 == 2) {
                i9 = 4;
            } else if (i8 != 3) {
                i9 = i8 != 4 ? 0 : 6;
            } else {
                i9 = 5;
            }
        }
        if (i9 == 0) {
            return 1;
        }
        return i9;
    }
}
