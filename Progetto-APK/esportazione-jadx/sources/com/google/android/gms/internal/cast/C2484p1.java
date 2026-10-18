package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.p1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2484p1 extends AbstractC2457i2 {
    private static final C2484p1 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2484p1 c2484p1 = new C2484p1();
        zzb = c2484p1;
        AbstractC2457i2.e(C2484p1.class, c2484p1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i9 == 3) {
            return new C2484p1();
        }
        if (i9 == 4) {
            return new C2436d1(10);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
