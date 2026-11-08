package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.t1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2499t1 extends AbstractC2457i2 {
    private static final C2499t1 zzb;
    private int zzd;
    private int zze;
    private long zzf;
    private long zzg;

    static {
        C2499t1 c2499t1 = new C2499t1();
        zzb = c2499t1;
        AbstractC2457i2.e(C2499t1.class, c2499t1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003ဂ\u0002", new Object[]{"zzd", "zze", Z.f22566B, "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new C2499t1();
        }
        if (i9 == 4) {
            return new C2436d1(14);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
