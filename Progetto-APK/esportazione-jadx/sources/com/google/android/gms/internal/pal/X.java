package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class X extends D {
    private static final X zzb;
    private int zze;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private long zzl = -1;
    private long zzm = -1;

    static {
        X x7 = new X();
        zzb = x7;
        D.f(X.class, x7);
    }

    public static E m() {
        return (E) zzb.h();
    }

    public static /* synthetic */ void n(X x7, long j8) {
        x7.zze |= 1;
        x7.zzf = j8;
    }

    public static /* synthetic */ void o(X x7, long j8) {
        x7.zze |= 4;
        x7.zzh = j8;
    }

    public static /* synthetic */ void p(X x7, long j8) {
        x7.zze |= 8;
        x7.zzi = j8;
    }

    public static /* synthetic */ void q(X x7, long j8) {
        x7.zze |= 16;
        x7.zzj = j8;
    }

    public static /* synthetic */ void r(X x7, long j8) {
        x7.zze |= 32;
        x7.zzk = j8;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i9 == 3) {
            return new X();
        }
        if (i9 == 4) {
            return new E(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
