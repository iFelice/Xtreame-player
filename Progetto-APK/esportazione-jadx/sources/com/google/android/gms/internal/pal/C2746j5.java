package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.j5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2746j5 extends D {
    private static final C2746j5 zzb;
    private C2762l5 zze;
    private int zzf;

    static {
        C2746j5 c2746j5 = new C2746j5();
        zzb = c2746j5;
        D.f(C2746j5.class, c2746j5);
    }

    public static C2738i5 n() {
        return (C2738i5) zzb.h();
    }

    public static C2746j5 o(r rVar, C2851x c2851x) {
        return (C2746j5) D.j(zzb, rVar, c2851x);
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
            return new C2746j5();
        }
        if (i9 == 4) {
            return new C2738i5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf;
    }

    public final C2762l5 p() {
        C2762l5 c2762l5 = this.zze;
        return c2762l5 == null ? C2762l5.o() : c2762l5;
    }
}
