package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.o4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2785o4 extends D {
    private static final C2785o4 zzb;
    private int zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzj = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzk = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2785o4 c2785o4 = new C2785o4();
        zzb = c2785o4;
        D.f(C2785o4.class, c2785o4);
    }

    public static C2785o4 n() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = 0;
        int i10 = 5;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new C2741j0(zzb, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i11 == 3) {
            return new C2785o4();
        }
        if (i11 == 4) {
            return new C2860y0(i10, i9);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final String o() {
        return this.zzf;
    }

    public final String p() {
        return this.zzk;
    }
}
