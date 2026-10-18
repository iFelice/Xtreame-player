package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.r5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2809r5 extends D {
    private static final C2809r5 zzb;
    private int zze;
    private r zzf = r.f23990H;

    static {
        C2809r5 c2809r5 = new C2809r5();
        zzb = c2809r5;
        D.f(C2809r5.class, c2809r5);
    }

    public static C2802q5 n() {
        return (C2802q5) zzb.h();
    }

    public static C2809r5 o(r rVar, C2851x c2851x) {
        return (C2809r5) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2809r5();
        }
        if (i9 == 4) {
            return new C2802q5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final r p() {
        return this.zzf;
    }
}
