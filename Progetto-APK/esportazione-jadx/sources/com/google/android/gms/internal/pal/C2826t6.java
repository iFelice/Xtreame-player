package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.t6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2826t6 extends D {
    private static final C2826t6 zzb;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2826t6 c2826t6 = new C2826t6();
        zzb = c2826t6;
        D.f(C2826t6.class, c2826t6);
    }

    public static C2826t6 m() {
        return zzb;
    }

    public static C2826t6 n(r rVar, C2851x c2851x) {
        return (C2826t6) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zze"});
        }
        if (i9 == 3) {
            return new C2826t6();
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
}
