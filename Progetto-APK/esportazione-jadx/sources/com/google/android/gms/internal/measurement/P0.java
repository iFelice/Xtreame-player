package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class P0 extends AbstractC2631s2 {
    private static final P0 zzb;
    private int zzd;
    private int zzh;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        P0 p7 = new P0();
        zzb = p7;
        AbstractC2631s2.l(P0.class, p7);
    }

    public static P0 s() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new X2(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005ဈ\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i10 == 3) {
            return new P0();
        }
        if (i10 == 4) {
            return new C2634t0(11, i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzh;
    }

    public final String t() {
        return this.zzf;
    }

    public final String u() {
        return this.zzi;
    }

    public final String v() {
        return this.zze;
    }
}
