package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class L5 extends D {
    private static final L5 zzb;
    private int zze;
    private G5 zzf;
    private r zzg;
    private r zzh;

    static {
        L5 l8 = new L5();
        zzb = l8;
        D.f(L5.class, l8);
    }

    public L5() {
        C2796q c2796q = r.f23990H;
        this.zzg = c2796q;
        this.zzh = c2796q;
    }

    public static K5 o() {
        return (K5) zzb.h();
    }

    public static L5 p() {
        return zzb;
    }

    public static L5 q(r rVar, C2851x c2851x) {
        return (L5) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void u(L5 l8, G5 g8) {
        g8.getClass();
        l8.zzf = g8;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new L5();
        }
        if (i9 == 4) {
            return new K5(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final G5 n() {
        G5 g8 = this.zzf;
        return g8 == null ? G5.o() : g8;
    }

    public final r r() {
        return this.zzg;
    }

    public final r s() {
        return this.zzh;
    }
}
