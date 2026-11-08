package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class M0 extends D {
    private static final M0 zzb;
    private int zze;
    private long zzf;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private r zzh = r.f23990H;

    static {
        M0 m7 = new M0();
        zzb = m7;
        D.f(M0.class, m7);
    }

    public static M0 o() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = 1;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new C2741j0(zzb, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i10 == 3) {
            return new M0();
        }
        if (i10 == 4) {
            return new C2860y0(i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }

    public final long m() {
        return this.zzf;
    }

    public final boolean p() {
        return (this.zze & 1) != 0;
    }
}
