package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class O0 extends AbstractC2631s2 {
    private static final O0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        O0 o4 = new O0();
        zzb = o4;
        AbstractC2631s2.l(O0.class, o4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i10 == 3) {
            return new O0();
        }
        if (i10 == 4) {
            return new C2634t0(10, i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }

    public final String r() {
        return this.zze;
    }

    public final String s() {
        return this.zzf;
    }
}
