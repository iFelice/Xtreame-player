package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.g6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2723g6 extends D {
    private static final C2723g6 zzb;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private r zzf = r.f23990H;
    private int zzg;

    static {
        C2723g6 c2723g6 = new C2723g6();
        zzb = c2723g6;
        D.f(C2723g6.class, c2723g6);
    }

    public static C2715f6 m() {
        return (C2715f6) zzb.h();
    }

    public static C2723g6 n() {
        return zzb;
    }

    public static /* synthetic */ void q(C2723g6 c2723g6, String str) {
        str.getClass();
        c2723g6.zze = str;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new C2723g6();
        }
        if (i9 == 4) {
            return new C2715f6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final r o() {
        return this.zzf;
    }

    public final String p() {
        return this.zze;
    }

    public final int s() {
        int i8 = this.zzg;
        int i9 = 2;
        if (i8 != 0) {
            if (i8 == 1) {
                i9 = 3;
            } else if (i8 == 2) {
                i9 = 4;
            } else if (i8 != 3) {
                i9 = i8 != 4 ? 0 : 6;
            } else {
                i9 = 5;
            }
        }
        if (i9 == 0) {
            return 1;
        }
        return i9;
    }
}
