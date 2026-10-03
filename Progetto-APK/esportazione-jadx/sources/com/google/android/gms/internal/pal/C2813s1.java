package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.s1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2813s1 extends D {
    private static final C2813s1 zzb;
    private int zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2813s1 c2813s1 = new C2813s1();
        zzb = c2813s1;
        D.f(C2813s1.class, c2813s1);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new C2813s1();
        }
        if (i9 == 4) {
            return new C2860y0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
