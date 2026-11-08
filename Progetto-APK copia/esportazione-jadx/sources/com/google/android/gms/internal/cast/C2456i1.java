package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2456i1 extends AbstractC2457i2 {
    private static final C2456i1 zzb;
    private int zzd;
    private InterfaceC2477n2 zze;
    private InterfaceC2477n2 zzf;
    private C2476n1 zzg;

    static {
        C2456i1 c2456i1 = new C2456i1();
        zzb = c2456i1;
        AbstractC2457i2.e(C2456i1.class, c2456i1);
    }

    public C2456i1() {
        K2 k8 = K2.f22483J;
        this.zze = k8;
        this.zzf = k8;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 3;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"zzd", "zze", C2488q1.class, "zzf", I0.class, "zzg"});
        }
        if (i10 == 3) {
            return new C2456i1();
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
