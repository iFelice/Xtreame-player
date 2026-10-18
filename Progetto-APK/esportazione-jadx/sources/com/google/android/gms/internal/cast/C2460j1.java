package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2460j1 extends AbstractC2457i2 {
    private static final C2460j1 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        C2460j1 c2460j1 = new C2460j1();
        zzb = c2460j1;
        AbstractC2457i2.e(C2460j1.class, c2460j1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 4;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            Z z7 = Z.f22579k;
            return new L2(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzd", "zze", z7, "zzf", z7});
        }
        if (i10 == 3) {
            return new C2460j1();
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
