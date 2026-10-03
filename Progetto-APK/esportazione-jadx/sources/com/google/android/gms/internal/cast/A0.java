package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class A0 extends AbstractC2457i2 {
    private static final A0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        A0 a8 = new A0();
        zzb = a8;
        AbstractC2457i2.e(A0.class, a8);
    }

    public static C2522z0 l() {
        return (C2522z0) zzb.j();
    }

    public static /* synthetic */ void m(A0 a8, int i8) {
        a8.zzd |= 2;
        a8.zzf = i8;
    }

    public static /* synthetic */ void n(A0 a8, int i8) {
        a8.zzd |= 4;
        a8.zzg = i8;
    }

    public static /* synthetic */ void o(A0 a8, int i8) {
        a8.zzd |= 8;
        a8.zzh = i8;
    }

    public static /* synthetic */ void p(A0 a8, int i8) {
        a8.zze = i8 - 1;
        a8.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"zzd", "zze", Z.f22588t, "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new A0();
        }
        if (i9 == 4) {
            return new C2522z0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
