package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2448g1 extends AbstractC2457i2 {
    private static final C2448g1 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        C2448g1 c2448g1 = new C2448g1();
        zzb = c2448g1;
        AbstractC2457i2.e(C2448g1.class, c2448g1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 2;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002᠌\u0001\u0003င\u0002", new Object[]{"zzd", "zze", "zzf", Z.f22576h, "zzg"});
        }
        if (i10 == 3) {
            return new C2448g1();
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
