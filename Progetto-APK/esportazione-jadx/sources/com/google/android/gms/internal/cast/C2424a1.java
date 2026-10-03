package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.a1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2424a1 extends AbstractC2457i2 {
    private static final C2424a1 zzb;
    private int zzd;
    private long zze;
    private InterfaceC2473m2 zzf;
    private InterfaceC2473m2 zzg;

    static {
        C2424a1 c2424a1 = new C2424a1();
        zzb = c2424a1;
        AbstractC2457i2.e(C2424a1.class, c2424a1);
    }

    public C2424a1() {
        C2508v2 c2508v2 = C2508v2.f22803J;
        this.zzf = c2508v2;
        this.zzg = c2508v2;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001စ\u0000\u0002\u0017\u0003\u0017", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i10 == 3) {
            return new C2424a1();
        }
        if (i10 == 4) {
            return new U(27, i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
