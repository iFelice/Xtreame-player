package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.l5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2762l5 extends D {
    private static final C2762l5 zzb;
    private int zze;

    static {
        C2762l5 c2762l5 = new C2762l5();
        zzb = c2762l5;
        D.f(C2762l5.class, c2762l5);
    }

    public static C2754k5 n() {
        return (C2754k5) zzb.h();
    }

    public static C2762l5 o() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
        }
        if (i9 == 3) {
            return new C2762l5();
        }
        if (i9 == 4) {
            return new C2754k5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }
}
