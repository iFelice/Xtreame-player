package com.google.android.gms.internal.atv_ads_framework;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class M0 extends U {
    private static final M0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private boolean zzf;

    static {
        M0 m7 = new M0();
        zzb = m7;
        U.j(M0.class, m7);
    }

    public static L0 l() {
        return (L0) zzb.f();
    }

    public static /* synthetic */ void m(M0 m7, String str) {
        str.getClass();
        m7.zzd |= 1;
        m7.zze = str;
    }

    public static /* synthetic */ void n(M0 m7, boolean z7) {
        m7.zzd |= 2;
        m7.zzf = z7;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.U
    public final Object d(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2416v0(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new M0();
        }
        if (i9 == 4) {
            return new L0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
