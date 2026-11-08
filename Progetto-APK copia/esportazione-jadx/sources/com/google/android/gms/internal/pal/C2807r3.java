package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.r3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2807r3 extends D {
    private static final C2807r3 zzb;
    private int zze;
    private int zzf = 2;

    static {
        C2807r3 c2807r3 = new C2807r3();
        zzb = c2807r3;
        D.f(C2807r3.class, c2807r3);
    }

    public static C2807r3 n() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new C2741j0(zzb, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001bဌ\u0000", new Object[]{"zze", "zzf", O3.f23619a});
        }
        if (i10 == 3) {
            return new C2807r3();
        }
        int i11 = 4;
        if (i10 == 4) {
            return new C2860y0(i11, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }

    public final int o() {
        int i8 = this.zzf;
        int i9 = 1;
        if (i8 != 0) {
            if (i8 == 1) {
                i9 = 2;
            } else if (i8 != 2) {
                i9 = 4;
                if (i8 != 3) {
                    i9 = i8 != 4 ? 0 : 5;
                }
            } else {
                i9 = 3;
            }
        }
        if (i9 == 0) {
            return 3;
        }
        return i9;
    }
}
