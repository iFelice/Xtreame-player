package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2487q0 extends AbstractC2457i2 {
    private static final C2487q0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private int zzi;

    static {
        C2487q0 c2487q0 = new C2487q0();
        zzb = c2487q0;
        AbstractC2457i2.e(C2487q0.class, c2487q0);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = 7;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new L2(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004ဇ\u0003\u0005င\u0004", new Object[]{"zzd", "zze", Z.f22579k, "zzf", Z.f22577i, "zzg", Z.f22578j, "zzh", "zzi"});
        }
        if (i11 == 3) {
            return new C2487q0();
        }
        if (i11 == 4) {
            return new U(i10, i9);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
