package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class O0 extends AbstractC2457i2 {
    private static final InterfaceC2469l2 zzb = new C2439e0();
    private static final O0 zzd;
    private int zze;
    private boolean zzg;
    private boolean zzh;
    private C2503u1 zzi;
    private boolean zzj;
    private long zzl;
    private long zzm;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2465k2 zzk = C2461j2.f22748J;

    static {
        O0 o4 = new O0();
        zzd = o4;
        AbstractC2457i2.e(O0.class, o4);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzd, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဉ\u0003\u0004ဇ\u0004\u0005ࠬ\u0006ဇ\u0002\u0007ဂ\u0005\bဂ\u0006", new Object[]{"zze", "zzf", "zzg", "zzi", "zzj", "zzk", Z.f22565A, "zzh", "zzl", "zzm"});
        }
        if (i10 == 3) {
            return new O0();
        }
        if (i10 == 4) {
            return new U(16, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzd;
    }
}
