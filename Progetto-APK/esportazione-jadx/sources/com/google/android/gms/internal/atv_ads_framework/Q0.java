package com.google.android.gms.internal.atv_ads_framework;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class Q0 extends U {
    private static final Q0 zzb;
    private int zzd;
    private int zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        Q0 q7 = new Q0();
        zzb = q7;
        U.j(Q0.class, q7);
    }

    public static P0 l() {
        return (P0) zzb.f();
    }

    public static /* synthetic */ void m(Q0 q7, String str) {
        q7.zzd |= 2;
        q7.zzf = str;
    }

    public static /* synthetic */ void n(Q0 q7, String str) {
        q7.zzd |= 4;
        q7.zzg = str;
    }

    public static /* synthetic */ void o(Q0 q7, int i8) {
        q7.zze = i8 - 1;
        q7.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.U
    public final Object d(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2416v0(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0002", new Object[]{"zzd", "zze", C2383e0.f22321K, "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new Q0();
        }
        if (i9 == 4) {
            return new P0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
