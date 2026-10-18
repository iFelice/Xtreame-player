package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.c6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2691c6 extends D {
    private static final C2691c6 zzb;
    private int zze;
    private Y5 zzf;
    private r zzg = r.f23990H;

    static {
        C2691c6 c2691c6 = new C2691c6();
        zzb = c2691c6;
        D.f(C2691c6.class, c2691c6);
    }

    public static C2683b6 o() {
        return (C2683b6) zzb.h();
    }

    public static C2691c6 p() {
        return zzb;
    }

    public static C2691c6 q(r rVar, C2851x c2851x) {
        return (C2691c6) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void t(C2691c6 c2691c6, Y5 y7) {
        y7.getClass();
        c2691c6.zzf = y7;
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
            return new C2691c6();
        }
        if (i9 == 4) {
            return new C2683b6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final Y5 n() {
        Y5 y7 = this.zzf;
        return y7 == null ? Y5.n() : y7;
    }

    public final r r() {
        return this.zzg;
    }

    public final boolean v() {
        return this.zzf != null;
    }
}
