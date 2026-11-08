package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class P0 extends AbstractC2457i2 {
    private static final P0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private InterfaceC2465k2 zzg;
    private InterfaceC2465k2 zzh;
    private InterfaceC2477n2 zzi;
    private InterfaceC2477n2 zzj;
    private int zzk;

    static {
        P0 p7 = new P0();
        zzb = p7;
        AbstractC2457i2.e(P0.class, p7);
    }

    public P0() {
        C2461j2 c2461j2 = C2461j2.f22748J;
        this.zzg = c2461j2;
        this.zzh = c2461j2;
        K2 k8 = K2.f22483J;
        this.zzi = k8;
        this.zzj = k8;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001င\u0000\u0002᠌\u0001\u0003\u0016\u0004\u0016\u0005\u001a\u0006\u001a\u0007᠌\u0002", new Object[]{"zzd", "zze", "zzf", C2517y.f22850i0, "zzg", "zzh", "zzi", "zzj", "zzk", C2517y.f22846e0});
        }
        if (i10 == 3) {
            return new P0();
        }
        if (i10 == 4) {
            return new U(17, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
