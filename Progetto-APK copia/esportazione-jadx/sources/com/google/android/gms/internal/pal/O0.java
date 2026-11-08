package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class O0 extends D {
    private static final O0 zzb;
    private int zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        O0 o4 = new O0();
        zzb = o4;
        D.f(O0.class, o4);
    }

    public static N0 m() {
        return (N0) zzb.h();
    }

    public static /* synthetic */ void n(O0 o4, String str) {
        str.getClass();
        o4.zze |= 1;
        o4.zzf = str;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new O0();
        }
        if (i9 == 4) {
            return new N0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
