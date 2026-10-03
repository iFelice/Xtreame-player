package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.p6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2795p6 extends D {
    private static final C2795p6 zzb;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        C2795p6 c2795p6 = new C2795p6();
        zzb = c2795p6;
        D.f(C2795p6.class, c2795p6);
    }

    public static C2787o6 m() {
        return (C2787o6) zzb.h();
    }

    public static /* synthetic */ void n(C2795p6 c2795p6, String str) {
        str.getClass();
        c2795p6.zze = str;
    }

    public static void q(C2795p6 c2795p6, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        c2795p6.zzf = i8 - 2;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new C2795p6();
        }
        if (i9 == 4) {
            return new C2787o6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
