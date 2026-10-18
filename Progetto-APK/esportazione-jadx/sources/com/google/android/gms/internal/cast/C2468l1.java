package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2468l1 extends AbstractC2457i2 {
    private static final C2468l1 zzb;
    private int zzd;
    private long zze;
    private long zzf;
    private InterfaceC2477n2 zzg = K2.f22483J;

    static {
        C2468l1 c2468l1 = new C2468l1();
        zzb = c2468l1;
        AbstractC2457i2.e(C2468l1.class, c2468l1);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", C2472m1.class});
        }
        if (i9 == 3) {
            return new C2468l1();
        }
        if (i9 == 4) {
            return new C2436d1(6);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
