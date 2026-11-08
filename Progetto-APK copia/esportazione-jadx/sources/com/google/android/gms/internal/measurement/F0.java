package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class F0 extends AbstractC2631s2 {
    private static final F0 zzb;
    private int zzd;
    private InterfaceC2661y2 zze;
    private InterfaceC2661y2 zzf;
    private InterfaceC2661y2 zzg;
    private boolean zzh;
    private InterfaceC2661y2 zzi;

    static {
        F0 f8 = new F0();
        zzb = f8;
        AbstractC2631s2.l(F0.class, f8);
    }

    public F0() {
        W2 w7 = W2.f23030K;
        this.zze = w7;
        this.zzf = w7;
        this.zzg = w7;
        this.zzi = w7;
    }

    public static F0 r() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = 2;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new X2(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zzd", "zze", A0.class, "zzf", B0.class, "zzg", E0.class, "zzh", "zzi", A0.class});
        }
        if (i11 == 3) {
            return new F0();
        }
        if (i11 == 4) {
            return new C2634t0(i10, i9);
        }
        if (i11 == 5) {
            return zzb;
        }
        throw null;
    }

    public final InterfaceC2661y2 s() {
        return this.zzg;
    }

    public final InterfaceC2661y2 t() {
        return this.zze;
    }

    public final InterfaceC2661y2 u() {
        return this.zzf;
    }

    public final List v() {
        return this.zzi;
    }

    public final boolean w() {
        return this.zzh;
    }

    public final boolean x() {
        return (this.zzd & 1) != 0;
    }
}
