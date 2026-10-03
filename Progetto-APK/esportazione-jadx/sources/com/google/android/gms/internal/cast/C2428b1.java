package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2428b1 extends AbstractC2457i2 {
    private static final C2428b1 zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;

    static {
        C2428b1 c2428b1 = new C2428b1();
        zzb = c2428b1;
        AbstractC2457i2.e(C2428b1.class, c2428b1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            Z z7 = Z.f22574f;
            return new L2(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007ဇ\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", z7, "zzj", z7, "zzk"});
        }
        if (i10 == 3) {
            return new C2428b1();
        }
        if (i10 == 4) {
            return new U(28, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
