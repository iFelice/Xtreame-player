package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class Z0 extends AbstractC2631s2 {
    private static final Z0 zzb;
    private int zzd;
    private int zze;
    private long zzf;

    static {
        Z0 z7 = new Z0();
        zzb = z7;
        AbstractC2631s2.l(Z0.class, z7);
    }

    public static Y0 s() {
        return (Y0) zzb.f();
    }

    public static /* synthetic */ void t(Z0 z7, long j8) {
        z7.zzd |= 2;
        z7.zzf = j8;
    }

    public static /* synthetic */ void u(Z0 z7, int i8) {
        z7.zzd |= 1;
        z7.zze = i8;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new Z0();
        }
        if (i9 == 4) {
            return new Y0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zze;
    }

    public final long r() {
        return this.zzf;
    }

    public final boolean v() {
        return (this.zzd & 2) != 0;
    }

    public final boolean w() {
        return (this.zzd & 1) != 0;
    }
}
