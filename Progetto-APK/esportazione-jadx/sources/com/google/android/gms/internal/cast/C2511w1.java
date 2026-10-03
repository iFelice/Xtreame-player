package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2511w1 extends AbstractC2457i2 {
    private static final C2511w1 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        C2511w1 c2511w1 = new C2511w1();
        zzb = c2511w1;
        AbstractC2457i2.e(C2511w1.class, c2511w1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003ဂ\u0002", new Object[]{"zzd", "zze", Z.f22568D, "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new C2511w1();
        }
        if (i9 == 4) {
            return new C2436d1(17);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
