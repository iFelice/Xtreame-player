package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2668a extends D {
    private static final C2668a zzb;
    private int zze;
    private long zzf = -1;
    private int zzg = 1000;

    static {
        C2668a c2668a = new C2668a();
        zzb = c2668a;
        D.f(C2668a.class, c2668a);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဌ\u0001", new Object[]{"zze", "zzf", "zzg", K0.f23575a});
        }
        if (i9 == 3) {
            return new C2668a();
        }
        if (i9 == 4) {
            return new C2860y0(14);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
