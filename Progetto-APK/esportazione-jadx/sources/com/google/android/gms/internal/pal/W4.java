package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class W4 extends D {
    private static final W4 zzb;
    private int zze;
    private C2682b5 zzf;
    private P5 zzg;

    static {
        W4 w7 = new W4();
        zzb = w7;
        D.f(W4.class, w7);
    }

    public static V4 n() {
        return (V4) zzb.h();
    }

    public static W4 o(r rVar, C2851x c2851x) {
        return (W4) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void t(W4 w7, P5 p7) {
        p7.getClass();
        w7.zzg = p7;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new W4();
        }
        if (i9 == 4) {
            return new V4(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C2682b5 p() {
        C2682b5 c2682b5 = this.zzf;
        return c2682b5 == null ? C2682b5.o() : c2682b5;
    }

    public final P5 q() {
        P5 p7 = this.zzg;
        return p7 == null ? P5.o() : p7;
    }
}
