package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.q6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2803q6 extends D {
    private static final C2803q6 zzb;
    private int zze;
    private I zzf = C2733i0.f23843J;

    static {
        C2803q6 c2803q6 = new C2803q6();
        zzb = c2803q6;
        D.f(C2803q6.class, c2803q6);
    }

    public static C2779n6 m() {
        return (C2779n6) zzb.h();
    }

    public static void o(C2803q6 c2803q6, C2795p6 c2795p6) {
        I i8 = c2803q6.zzf;
        if (!((AbstractC2748k) i8).f23887G) {
            c2803q6.zzf = D.d(i8);
        }
        c2803q6.zzf.add(c2795p6);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", C2795p6.class});
        }
        if (i9 == 3) {
            return new C2803q6();
        }
        if (i9 == 4) {
            return new C2779n6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
