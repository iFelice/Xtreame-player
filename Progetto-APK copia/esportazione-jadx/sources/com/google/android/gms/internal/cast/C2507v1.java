package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.v1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2507v1 extends AbstractC2457i2 {
    private static final C2507v1 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzf;
    private long zzg;
    private C2511w1 zzh;

    static {
        C2507v1 c2507v1 = new C2507v1();
        zzb = c2507v1;
        AbstractC2457i2.e(C2507v1.class, c2507v1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဉ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new C2507v1();
        }
        if (i9 == 4) {
            return new C2436d1(16);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
