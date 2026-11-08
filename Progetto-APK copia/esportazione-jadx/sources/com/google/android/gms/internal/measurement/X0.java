package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class X0 extends AbstractC2631s2 {
    private static final X0 zzb;
    private int zzd;
    private int zze;
    private C2616p1 zzf;
    private C2616p1 zzg;
    private boolean zzh;

    static {
        X0 x7 = new X0();
        zzb = x7;
        AbstractC2631s2.l(X0.class, x7);
    }

    public static W0 r() {
        return (W0) zzb.f();
    }

    public static /* synthetic */ void u(X0 x7, int i8) {
        x7.zzd |= 1;
        x7.zze = i8;
    }

    public static /* synthetic */ void v(X0 x7, C2616p1 c2616p1) {
        x7.zzf = c2616p1;
        x7.zzd |= 2;
    }

    public static /* synthetic */ void w(X0 x7, boolean z7) {
        x7.zzd |= 8;
        x7.zzh = z7;
    }

    public static /* synthetic */ void x(X0 x7, C2616p1 c2616p1) {
        x7.zzg = c2616p1;
        x7.zzd |= 4;
    }

    public final boolean A() {
        return (this.zzd & 8) != 0;
    }

    public final boolean B() {
        return (this.zzd & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new X0();
        }
        if (i9 == 4) {
            return new W0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zze;
    }

    public final C2616p1 s() {
        C2616p1 c2616p1 = this.zzf;
        return c2616p1 == null ? C2616p1.v() : c2616p1;
    }

    public final C2616p1 t() {
        C2616p1 c2616p1 = this.zzg;
        return c2616p1 == null ? C2616p1.v() : c2616p1;
    }

    public final boolean y() {
        return this.zzh;
    }

    public final boolean z() {
        return (this.zzd & 1) != 0;
    }
}
