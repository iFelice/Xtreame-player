package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class V0 extends AbstractC2631s2 {
    private static final V0 zzb;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        V0 v5 = new V0();
        zzb = v5;
        AbstractC2631s2.l(V0.class, v5);
    }

    public static U0 q() {
        return (U0) zzb.f();
    }

    public static V0 r() {
        return zzb;
    }

    public static /* synthetic */ void s(V0 v5, boolean z7) {
        v5.zzd |= 32;
        v5.zzj = z7;
    }

    public static /* synthetic */ void t(V0 v5, boolean z7) {
        v5.zzd |= 16;
        v5.zzi = z7;
    }

    public static /* synthetic */ void u(V0 v5, boolean z7) {
        v5.zzd |= 1;
        v5.zze = z7;
    }

    public static /* synthetic */ void v(V0 v5, boolean z7) {
        v5.zzd |= 64;
        v5.zzk = z7;
    }

    public static /* synthetic */ void w(V0 v5, boolean z7) {
        v5.zzd |= 2;
        v5.zzf = z7;
    }

    public static /* synthetic */ void x(V0 v5, boolean z7) {
        v5.zzd |= 4;
        v5.zzg = z7;
    }

    public static /* synthetic */ void y(V0 v5, boolean z7) {
        v5.zzd |= 8;
        v5.zzh = z7;
    }

    public final boolean A() {
        return this.zzi;
    }

    public final boolean B() {
        return this.zze;
    }

    public final boolean C() {
        return this.zzk;
    }

    public final boolean D() {
        return this.zzf;
    }

    public final boolean E() {
        return this.zzg;
    }

    public final boolean F() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005\u0007ဇ\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i9 == 3) {
            return new V0();
        }
        if (i9 == 4) {
            return new U0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final boolean z() {
        return this.zzj;
    }
}
