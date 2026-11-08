package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class W5 extends D {
    private static final W5 zzb;
    private Y5 zze;

    static {
        W5 w7 = new W5();
        zzb = w7;
        D.f(W5.class, w7);
    }

    public static U5 m() {
        return (U5) zzb.h();
    }

    public static W5 n(r rVar, C2851x c2851x) {
        return (W5) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zze"});
        }
        if (i9 == 3) {
            return new W5();
        }
        if (i9 == 4) {
            return new U5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final Y5 o() {
        Y5 y7 = this.zze;
        return y7 == null ? Y5.n() : y7;
    }
}
