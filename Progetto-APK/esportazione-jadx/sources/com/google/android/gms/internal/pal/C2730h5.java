package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.h5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2730h5 extends D {
    private static final C2730h5 zzb;
    private int zze;
    private C2762l5 zzf;
    private r zzg = r.f23990H;

    static {
        C2730h5 c2730h5 = new C2730h5();
        zzb = c2730h5;
        D.f(C2730h5.class, c2730h5);
    }

    public static C2722g5 n() {
        return (C2722g5) zzb.h();
    }

    public static C2730h5 o(r rVar, C2851x c2851x) {
        return (C2730h5) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void s(C2730h5 c2730h5, C2762l5 c2762l5) {
        c2762l5.getClass();
        c2730h5.zzf = c2762l5;
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
            return new C2730h5();
        }
        if (i9 == 4) {
            return new C2722g5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C2762l5 p() {
        C2762l5 c2762l5 = this.zzf;
        return c2762l5 == null ? C2762l5.o() : c2762l5;
    }

    public final r q() {
        return this.zzg;
    }
}
