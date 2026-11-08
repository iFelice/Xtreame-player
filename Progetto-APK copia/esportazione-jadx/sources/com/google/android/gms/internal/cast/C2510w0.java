package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2510w0 extends AbstractC2457i2 {
    private static final C2510w0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private boolean zzh;

    static {
        C2510w0 c2510w0 = new C2510w0();
        zzb = c2510w0;
        AbstractC2457i2.e(C2510w0.class, c2510w0);
    }

    public static C2506v0 l() {
        return (C2506v0) zzb.j();
    }

    public static /* synthetic */ void m(C2510w0 c2510w0, int i8) {
        c2510w0.zzd |= 2;
        c2510w0.zzf = i8;
    }

    public static /* synthetic */ void n(C2510w0 c2510w0, int i8) {
        c2510w0.zzd |= 4;
        c2510w0.zzg = i8;
    }

    public static /* synthetic */ void o(C2510w0 c2510w0, boolean z7) {
        c2510w0.zzd |= 8;
        c2510w0.zzh = z7;
    }

    public static /* synthetic */ void p(C2510w0 c2510w0, int i8) {
        c2510w0.zze = i8 - 1;
        c2510w0.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004ဇ\u0003", new Object[]{"zzd", "zze", Z.f22587s, "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new C2510w0();
        }
        if (i9 == 4) {
            return new C2506v0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
