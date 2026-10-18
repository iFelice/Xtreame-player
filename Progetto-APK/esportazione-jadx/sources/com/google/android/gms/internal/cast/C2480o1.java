package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2480o1 extends AbstractC2457i2 {
    private static final C2480o1 zzb;
    private int zzd;
    private long zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;

    static {
        C2480o1 c2480o1 = new C2480o1();
        zzb = c2480o1;
        AbstractC2457i2.e(C2480o1.class, c2480o1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new C2480o1();
        }
        if (i9 == 4) {
            return new C2436d1(9);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
