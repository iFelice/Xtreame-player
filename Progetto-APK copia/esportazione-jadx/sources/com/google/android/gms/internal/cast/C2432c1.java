package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.c1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2432c1 extends AbstractC2457i2 {
    private static final C2432c1 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        C2432c1 c2432c1 = new C2432c1();
        zzb = c2432c1;
        AbstractC2457i2.e(C2432c1.class, c2432c1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i10 == 3) {
            return new C2432c1();
        }
        if (i10 == 4) {
            return new U(29, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
