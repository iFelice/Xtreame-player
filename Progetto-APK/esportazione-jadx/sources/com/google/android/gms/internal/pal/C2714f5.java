package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.f5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2714f5 extends D {
    private static final C2714f5 zzb;
    private int zze;

    static {
        C2714f5 c2714f5 = new C2714f5();
        zzb = c2714f5;
        D.f(C2714f5.class, c2714f5);
    }

    public static C2706e5 n() {
        return (C2706e5) zzb.h();
    }

    public static C2714f5 o() {
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
            return new C2714f5();
        }
        if (i9 == 4) {
            return new C2706e5(zzb);
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
