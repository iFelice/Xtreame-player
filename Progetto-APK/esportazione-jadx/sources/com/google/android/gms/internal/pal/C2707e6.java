package com.google.android.gms.internal.pal;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.e6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2707e6 extends D {
    private static final C2707e6 zzb;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private r zzf = r.f23990H;
    private int zzg;

    static {
        C2707e6 c2707e6 = new C2707e6();
        zzb = c2707e6;
        D.f(C2707e6.class, c2707e6);
    }

    public static C2699d6 m() {
        return (C2699d6) zzb.h();
    }

    public static C2707e6 o() {
        return zzb;
    }

    public static /* synthetic */ void r(C2707e6 c2707e6, String str) {
        str.getClass();
        c2707e6.zze = str;
    }

    public static void t(C2707e6 c2707e6, int i8) {
        if (i8 == 6) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        c2707e6.zzg = AbstractC2090uc.j(i8);
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
            return new C2707e6();
        }
        if (i9 == 4) {
            return new C2699d6(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int n() {
        int i8 = this.zzg;
        int i9 = 1;
        if (i8 != 0) {
            if (i8 != 1) {
                i9 = 3;
                if (i8 != 2) {
                    if (i8 != 3) {
                        i9 = i8 != 4 ? 0 : 5;
                    } else {
                        i9 = 4;
                    }
                }
            } else {
                i9 = 2;
            }
        }
        if (i9 == 0) {
            return 6;
        }
        return i9;
    }

    public final r p() {
        return this.zzf;
    }

    public final String q() {
        return this.zze;
    }
}
