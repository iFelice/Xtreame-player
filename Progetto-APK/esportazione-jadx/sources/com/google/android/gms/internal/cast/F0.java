package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class F0 extends AbstractC2457i2 {
    private static final F0 zzb;
    private int zzd;
    private long zzf;
    private long zzg;
    private int zzi;
    private boolean zzj;
    private long zzl;
    private long zzm;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2477n2 zzh = K2.f22483J;
    private String zzk = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        F0 f8 = new F0();
        zzb = f8;
        AbstractC2457i2.e(F0.class, f8);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = 9;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new L2(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004\u001b\u0005င\u0003\u0006ဇ\u0004\u0007ဈ\u0005\bဂ\u0006\tဂ\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", E0.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i11 == 3) {
            return new F0();
        }
        if (i11 == 4) {
            return new U(i10, i9);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
