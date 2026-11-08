package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.v5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2841v5 extends D {
    private static final C2841v5 zzb;
    private int zze;
    private r zzf = r.f23990H;

    static {
        C2841v5 c2841v5 = new C2841v5();
        zzb = c2841v5;
        D.f(C2841v5.class, c2841v5);
    }

    public static C2833u5 n() {
        return (C2833u5) zzb.h();
    }

    public static C2841v5 o(r rVar, C2851x c2851x) {
        return (C2841v5) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2841v5();
        }
        if (i9 == 4) {
            return new C2833u5(zzb);
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
