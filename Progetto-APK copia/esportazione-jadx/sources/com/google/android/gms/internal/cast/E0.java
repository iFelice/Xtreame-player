package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class E0 extends AbstractC2457i2 {
    private static final E0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzf;

    static {
        E0 e8 = new E0();
        zzb = e8;
        AbstractC2457i2.e(E0.class, e8);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i10 == 3) {
            return new E0();
        }
        if (i10 == 4) {
            return new U(8, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
