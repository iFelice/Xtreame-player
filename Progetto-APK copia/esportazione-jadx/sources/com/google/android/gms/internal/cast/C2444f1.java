package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2444f1 extends AbstractC2457i2 {
    private static final C2444f1 zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;
    private int zzi;
    private int zzj;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzk = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2444f1 c2444f1 = new C2444f1();
        zzb = c2444f1;
        AbstractC2457i2.e(C2444f1.class, c2444f1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 1;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003င\u0002\u0004ဈ\u0003\u0005င\u0004\u0006င\u0005\u0007ဈ\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i10 == 3) {
            return new C2444f1();
        }
        if (i10 == 4) {
            return new C2436d1(i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
