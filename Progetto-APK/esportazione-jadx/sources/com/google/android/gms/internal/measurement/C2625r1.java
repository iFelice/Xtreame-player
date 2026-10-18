package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2625r1 extends AbstractC2631s2 {
    private static final C2625r1 zzb;
    private int zzd;
    private int zze;
    private InterfaceC2656x2 zzf = G2.f22920K;

    static {
        C2625r1 c2625r1 = new C2625r1();
        zzb = c2625r1;
        AbstractC2631s2.l(C2625r1.class, c2625r1);
    }

    public static C2621q1 t() {
        return (C2621q1) zzb.f();
    }

    public static void v(C2625r1 c2625r1, List list) {
        RandomAccess randomAccess = c2625r1.zzf;
        if (!((AbstractC2546d2) randomAccess).f23114G) {
            G2 g8 = (G2) randomAccess;
            int i8 = g8.f22922I;
            c2625r1.zzf = g8.zzd(i8 + i8);
        }
        AbstractC2540c2.b(list, c2625r1.zzf);
    }

    public static /* synthetic */ void w(C2625r1 c2625r1, int i8) {
        c2625r1.zzd |= 1;
        c2625r1.zze = i8;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2625r1();
        }
        if (i9 == 4) {
            return new C2621q1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return ((G2) this.zzf).size();
    }

    public final int r() {
        return this.zze;
    }

    public final long s(int i8) {
        return ((G2) this.zzf).c(i8);
    }

    public final List u() {
        return this.zzf;
    }

    public final boolean x() {
        return (this.zzd & 1) != 0;
    }
}
