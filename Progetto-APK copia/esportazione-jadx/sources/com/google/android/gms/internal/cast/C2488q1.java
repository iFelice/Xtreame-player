package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.q1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2488q1 extends AbstractC2457i2 {
    private static final C2488q1 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private C2455i0 zzg;

    static {
        C2488q1 c2488q1 = new C2488q1();
        zzb = c2488q1;
        AbstractC2457i2.e(C2488q1.class, c2488q1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဋ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", Z.f22585q, "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new C2488q1();
        }
        if (i9 == 4) {
            return new C2436d1(11);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
