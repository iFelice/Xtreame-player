package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2605n1 extends AbstractC2631s2 {
    private static final C2605n1 zzb;
    private int zzd;
    private int zze = 1;
    private InterfaceC2661y2 zzf = W2.f23030K;

    static {
        C2605n1 c2605n1 = new C2605n1();
        zzb = c2605n1;
        AbstractC2631s2.l(C2605n1.class, c2605n1);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zzd", "zze", C2599m1.f23207a, "zzf", C2545d1.class});
        }
        if (i9 == 3) {
            return new C2605n1();
        }
        if (i9 == 4) {
            return new C2539c1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }
}
