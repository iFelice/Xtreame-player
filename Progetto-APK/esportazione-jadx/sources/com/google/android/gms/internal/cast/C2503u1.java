package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2503u1 extends AbstractC2457i2 {
    private static final InterfaceC2469l2 zzb = new C2439e0();
    private static final C2503u1 zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzi;
    private long zzk;
    private InterfaceC2465k2 zzh = C2461j2.f22748J;
    private InterfaceC2477n2 zzj = K2.f22483J;

    static {
        C2503u1 c2503u1 = new C2503u1();
        zzd = c2503u1;
        AbstractC2457i2.e(C2503u1.class, c2503u1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzd, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003ࠞ\u0005᠌\u0002\u0006\u001b\u0007ဂ\u0003", new Object[]{"zze", "zzf", Z.f22566B, "zzg", C2517y.f22846e0, "zzh", Z.f22565A, "zzi", C2517y.f22840Y, "zzj", C2499t1.class, "zzk"});
        }
        if (i9 == 3) {
            return new C2503u1();
        }
        if (i9 == 4) {
            return new C2436d1(15);
        }
        if (i9 != 5) {
            return null;
        }
        return zzd;
    }
}
