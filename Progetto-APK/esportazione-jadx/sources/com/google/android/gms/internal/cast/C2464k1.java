package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2464k1 extends AbstractC2457i2 {
    private static final C2464k1 zzb;
    private int zzd;
    private K0 zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private long zzj;
    private InterfaceC2477n2 zzk = K2.f22483J;

    static {
        C2464k1 c2464k1 = new C2464k1();
        zzb = c2464k1;
        AbstractC2457i2.e(C2464k1.class, c2464k1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 5;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006ဂ\u0005\u0007\u001b", new Object[]{"zzd", "zze", "zzf", Z.f22581m, "zzg", Z.f22580l, "zzh", C2517y.f22846e0, "zzi", C2517y.f22836U, "zzj", "zzk", K0.class});
        }
        if (i10 == 3) {
            return new C2464k1();
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
