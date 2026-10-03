package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.a6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2675a6 extends D {
    private static final C2675a6 zzb;
    private int zze;
    private C2691c6 zzf;
    private r zzg = r.f23990H;

    static {
        C2675a6 c2675a6 = new C2675a6();
        zzb = c2675a6;
        D.f(C2675a6.class, c2675a6);
    }

    public static Z5 n() {
        return (Z5) zzb.h();
    }

    public static C2675a6 o(r rVar, C2851x c2851x) {
        return (C2675a6) D.j(zzb, rVar, c2851x);
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
            return new C2675a6();
        }
        if (i9 == 4) {
            return new Z5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C2691c6 p() {
        C2691c6 c2691c6 = this.zzf;
        return c2691c6 == null ? C2691c6.p() : c2691c6;
    }

    public final r q() {
        return this.zzg;
    }

    public final boolean u() {
        return this.zzf != null;
    }
}
