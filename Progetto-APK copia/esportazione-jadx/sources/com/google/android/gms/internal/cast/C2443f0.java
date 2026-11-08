package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2443f0 extends AbstractC2457i2 {
    private static final InterfaceC2469l2 zzb = new C2439e0();
    private static final C2443f0 zzd;
    private int zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2465k2 zzh = C2461j2.f22748J;

    static {
        C2443f0 c2443f0 = new C2443f0();
        zzd = c2443f0;
        AbstractC2457i2.e(C2443f0.class, c2443f0);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = 2;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new L2(zzd, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ࠞ", new Object[]{"zze", "zzf", "zzg", "zzh", Z.f22567C});
        }
        if (i11 == 3) {
            return new C2443f0();
        }
        if (i11 == 4) {
            return new U(i10, i9);
        }
        if (i11 != 5) {
            return null;
        }
        return zzd;
    }
}
