package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.v6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2842v6 extends D {
    private static final C2842v6 zzb;
    private int zze;
    private C2850w6 zzf;

    static {
        C2842v6 c2842v6 = new C2842v6();
        zzb = c2842v6;
        D.f(C2842v6.class, c2842v6);
    }

    public static C2834u6 n() {
        return (C2834u6) zzb.h();
    }

    public static C2842v6 o(r rVar, C2851x c2851x) {
        return (C2842v6) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void r(C2842v6 c2842v6, C2850w6 c2850w6) {
        c2850w6.getClass();
        c2842v6.zzf = c2850w6;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2842v6();
        }
        if (i9 == 4) {
            return new C2834u6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C2850w6 p() {
        C2850w6 c2850w6 = this.zzf;
        return c2850w6 == null ? C2850w6.m() : c2850w6;
    }
}
