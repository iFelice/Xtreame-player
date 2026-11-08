package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2476n1 extends AbstractC2457i2 {
    private static final C2476n1 zzb;
    private int zzd;
    private C2455i0 zze;

    static {
        C2476n1 c2476n1 = new C2476n1();
        zzb = c2476n1;
        AbstractC2457i2.e(C2476n1.class, c2476n1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i9 == 3) {
            return new C2476n1();
        }
        if (i9 == 4) {
            return new C2436d1(8);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
