package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2479o0 extends AbstractC2457i2 {
    private static final C2479o0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        C2479o0 c2479o0 = new C2479o0();
        zzb = c2479o0;
        AbstractC2457i2.e(C2479o0.class, c2479o0);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = 5;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဋ\u0001\u0003᠌\u0002\u0004င\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", Z.f22570b, "zzh"});
        }
        if (i11 == 3) {
            return new C2479o0();
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
