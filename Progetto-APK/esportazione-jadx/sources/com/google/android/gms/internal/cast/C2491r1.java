package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2491r1 extends AbstractC2457i2 {
    private static final C2491r1 zzb;
    private int zzd;
    private int zze;
    private InterfaceC2477n2 zzf;
    private InterfaceC2477n2 zzg;
    private int zzh;

    static {
        C2491r1 c2491r1 = new C2491r1();
        zzb = c2491r1;
        AbstractC2457i2.e(C2491r1.class, c2491r1);
    }

    public C2491r1() {
        K2 k8 = K2.f22483J;
        this.zzf = k8;
        this.zzg = k8;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001᠌\u0000\u0002\u001b\u0003\u001b\u0004င\u0001", new Object[]{"zzd", "zze", Z.f22592x, "zzf", C2440e1.class, "zzg", C2440e1.class, "zzh"});
        }
        if (i9 == 3) {
            return new C2491r1();
        }
        if (i9 == 4) {
            return new C2436d1(12);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
