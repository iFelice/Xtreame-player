package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.d1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2545d1 extends AbstractC2631s2 {
    private static final C2545d1 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzf;

    static {
        C2545d1 c2545d1 = new C2545d1();
        zzb = c2545d1;
        AbstractC2631s2.l(C2545d1.class, c2545d1);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2545d1();
        }
        if (i9 == 4) {
            return new C2539c1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }
}
