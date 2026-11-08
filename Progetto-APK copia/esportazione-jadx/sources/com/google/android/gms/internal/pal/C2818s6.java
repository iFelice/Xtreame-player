package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.s6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2818s6 extends D {
    private static final C2818s6 zzb;
    private int zze;
    private C2826t6 zzf;

    static {
        C2818s6 c2818s6 = new C2818s6();
        zzb = c2818s6;
        D.f(C2818s6.class, c2818s6);
    }

    public static C2810r6 n() {
        return (C2810r6) zzb.h();
    }

    public static C2818s6 o(r rVar, C2851x c2851x) {
        return (C2818s6) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void r(C2818s6 c2818s6, C2826t6 c2826t6) {
        c2826t6.getClass();
        c2818s6.zzf = c2826t6;
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
            return new C2818s6();
        }
        if (i9 == 4) {
            return new C2810r6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C2826t6 p() {
        C2826t6 c2826t6 = this.zzf;
        return c2826t6 == null ? C2826t6.m() : c2826t6;
    }
}
