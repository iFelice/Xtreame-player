package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.u0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2502u0 extends AbstractC2457i2 {
    private static final C2502u0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        C2502u0 c2502u0 = new C2502u0();
        zzb = c2502u0;
        AbstractC2457i2.e(C2502u0.class, c2502u0);
    }

    public static C2498t0 l() {
        return (C2498t0) zzb.j();
    }

    public static /* synthetic */ void m(C2502u0 c2502u0, int i8) {
        c2502u0.zzd |= 2;
        c2502u0.zzf = i8;
    }

    public static /* synthetic */ void n(C2502u0 c2502u0, int i8) {
        c2502u0.zzd |= 4;
        c2502u0.zzg = i8;
    }

    public static /* synthetic */ void o(C2502u0 c2502u0, int i8) {
        c2502u0.zzd |= 8;
        c2502u0.zzh = i8;
    }

    public static /* synthetic */ void p(C2502u0 c2502u0, int i8) {
        c2502u0.zzd |= 16;
        c2502u0.zzi = i8;
    }

    public static /* synthetic */ void q(C2502u0 c2502u0, int i8) {
        c2502u0.zze = i8 - 1;
        c2502u0.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzd", "zze", Z.f22586r, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i9 == 3) {
            return new C2502u0();
        }
        if (i9 == 4) {
            return new C2498t0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
