package com.google.android.gms.internal.atv_ads_framework;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class U0 extends U {
    private static final U0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        U0 u7 = new U0();
        zzb = u7;
        U.j(U0.class, u7);
    }

    public static T0 l() {
        return (T0) zzb.f();
    }

    public static /* synthetic */ void m(U0 u7, String str) {
        str.getClass();
        u7.zzd |= 1;
        u7.zze = str;
    }

    public static /* synthetic */ void n(U0 u7, String str) {
        u7.zzd |= 2;
        u7.zzf = str;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.U
    public final Object d(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2416v0(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new U0();
        }
        if (i9 == 4) {
            return new T0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
