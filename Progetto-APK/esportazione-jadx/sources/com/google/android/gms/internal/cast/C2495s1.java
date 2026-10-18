package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.s1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2495s1 extends AbstractC2457i2 {
    private static final C2495s1 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private InterfaceC2477n2 zzg;
    private InterfaceC2477n2 zzh;
    private int zzi;

    static {
        C2495s1 c2495s1 = new C2495s1();
        zzb = c2495s1;
        AbstractC2457i2.e(C2495s1.class, c2495s1);
    }

    public C2495s1() {
        K2 k8 = K2.f22483J;
        this.zzg = k8;
        this.zzh = k8;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003\u001b\u0004\u001b\u0005᠌\u0002", new Object[]{"zzd", "zze", Z.f22593y, "zzf", Z.f22594z, "zzg", K0.class, "zzh", K0.class, "zzi", C2517y.f22846e0});
        }
        if (i9 == 3) {
            return new C2495s1();
        }
        if (i9 == 4) {
            return new C2436d1(13);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
