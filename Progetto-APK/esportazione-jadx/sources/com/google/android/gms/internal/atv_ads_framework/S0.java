package com.google.android.gms.internal.atv_ads_framework;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class S0 extends U {
    private static final S0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        S0 s7 = new S0();
        zzb = s7;
        U.j(S0.class, s7);
    }

    public static R0 l() {
        return (R0) zzb.f();
    }

    public static /* synthetic */ void m(S0 s7) {
        s7.zzd |= 1;
        s7.zze = "1.0.0";
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.U
    public final Object d(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2416v0(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i9 == 3) {
            return new S0();
        }
        if (i9 == 4) {
            return new R0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
