package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class Y5 extends D {
    private static final Y5 zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        Y5 y7 = new Y5();
        zzb = y7;
        D.f(Y5.class, y7);
    }

    public static X5 m() {
        return (X5) zzb.h();
    }

    public static Y5 n() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\f", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new Y5();
        }
        if (i9 == 4) {
            return new X5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int o() {
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

    public final int p() {
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

    public final int q() {
        int i8 = this.zze;
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
