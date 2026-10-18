package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.d5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2698d5 extends D {
    private static final C2698d5 zzb;
    private C2714f5 zze;
    private int zzf;

    static {
        C2698d5 c2698d5 = new C2698d5();
        zzb = c2698d5;
        D.f(C2698d5.class, c2698d5);
    }

    public static C2690c5 n() {
        return (C2690c5) zzb.h();
    }

    public static C2698d5 o() {
        return zzb;
    }

    public static C2698d5 p(r rVar, C2851x c2851x) {
        return (C2698d5) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2698d5();
        }
        if (i9 == 4) {
            return new C2690c5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf;
    }

    public final C2714f5 q() {
        C2714f5 c2714f5 = this.zze;
        return c2714f5 == null ? C2714f5.o() : c2714f5;
    }
}
