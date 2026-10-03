package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.b5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2682b5 extends D {
    private static final C2682b5 zzb;
    private int zze;
    private C2714f5 zzf;
    private r zzg = r.f23990H;

    static {
        C2682b5 c2682b5 = new C2682b5();
        zzb = c2682b5;
        D.f(C2682b5.class, c2682b5);
    }

    public static C2674a5 n() {
        return (C2674a5) zzb.h();
    }

    public static C2682b5 o() {
        return zzb;
    }

    public static C2682b5 p(r rVar, C2851x c2851x) {
        return (C2682b5) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void t(C2682b5 c2682b5, C2714f5 c2714f5) {
        c2714f5.getClass();
        c2682b5.zzf = c2714f5;
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
            return new C2682b5();
        }
        if (i9 == 4) {
            return new C2674a5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C2714f5 q() {
        C2714f5 c2714f5 = this.zzf;
        return c2714f5 == null ? C2714f5.o() : c2714f5;
    }

    public final r r() {
        return this.zzg;
    }
}
