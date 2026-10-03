package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2610o0 extends AbstractC2631s2 {
    private static final C2610o0 zzb;
    private int zzd;
    private int zze;
    private InterfaceC2661y2 zzf;
    private InterfaceC2661y2 zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        C2610o0 c2610o0 = new C2610o0();
        zzb = c2610o0;
        AbstractC2631s2.l(C2610o0.class, c2610o0);
    }

    public C2610o0() {
        W2 w7 = W2.f23030K;
        this.zzf = w7;
        this.zzg = w7;
    }

    public static void x(C2610o0 c2610o0, int i8, C2620q0 c2620q0) {
        InterfaceC2661y2 interfaceC2661y2 = c2610o0.zzg;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            c2610o0.zzg = interfaceC2661y2.zzd(size + size);
        }
        c2610o0.zzg.set(i8, c2620q0);
    }

    public static void y(C2610o0 c2610o0, int i8, C2654x0 c2654x0) {
        InterfaceC2661y2 interfaceC2661y2 = c2610o0.zzf;
        if (!((AbstractC2546d2) interfaceC2661y2).f23114G) {
            int size = interfaceC2661y2.size();
            c2610o0.zzf = interfaceC2661y2.zzd(size + size);
        }
        c2610o0.zzf.set(i8, c2654x0);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzd", "zze", "zzf", C2654x0.class, "zzg", C2620q0.class, "zzh", "zzi"});
        }
        if (i9 == 3) {
            return new C2610o0();
        }
        if (i9 == 4) {
            return new C2604n0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zze;
    }

    public final int r() {
        return this.zzg.size();
    }

    public final int s() {
        return this.zzf.size();
    }

    public final C2620q0 t(int i8) {
        return (C2620q0) this.zzg.get(i8);
    }

    public final C2654x0 u(int i8) {
        return (C2654x0) this.zzf.get(i8);
    }

    public final List v() {
        return this.zzg;
    }

    public final List w() {
        return this.zzf;
    }

    public final boolean z() {
        return (this.zzd & 1) != 0;
    }
}
