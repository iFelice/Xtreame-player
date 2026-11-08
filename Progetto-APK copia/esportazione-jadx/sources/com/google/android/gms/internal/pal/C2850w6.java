package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.w6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2850w6 extends D {
    private static final C2850w6 zzb;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private C2723g6 zzf;

    static {
        C2850w6 c2850w6 = new C2850w6();
        zzb = c2850w6;
        D.f(C2850w6.class, c2850w6);
    }

    public static C2850w6 m() {
        return zzb;
    }

    public static C2850w6 n(r rVar, C2851x c2851x) {
        return (C2850w6) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2850w6();
        }
        if (i9 == 4) {
            return new C2860y0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final String o() {
        return this.zze;
    }

    public final boolean p() {
        return this.zzf != null;
    }
}
