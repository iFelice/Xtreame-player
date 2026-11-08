package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class K0 extends AbstractC2457i2 {
    private static final K0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        K0 k8 = new K0();
        zzb = k8;
        AbstractC2457i2.e(K0.class, k8);
    }

    public static J0 l() {
        return (J0) zzb.j();
    }

    public static /* synthetic */ void m(K0 k8, String str) {
        str.getClass();
        k8.zzd |= 1;
        k8.zze = str;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new K0();
        }
        if (i9 == 4) {
            return new J0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
