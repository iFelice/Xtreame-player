package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2563g1 extends AbstractC2631s2 {
    private static final C2563g1 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private T0 zzg;

    static {
        C2563g1 c2563g1 = new C2563g1();
        zzb = c2563g1;
        AbstractC2631s2.l(C2563g1.class, c2563g1);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new C2563g1();
        }
        Object obj = null;
        if (i9 == 4) {
            return new C2634t0(13, obj);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }
}
