package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class F2 extends D {
    private static final F2 zzb;
    private int zze;
    private C2807r3 zzf;
    private C2785o4 zzg;

    static {
        F2 f8 = new F2();
        zzb = f8;
        D.f(F2.class, f8);
    }

    public static F2 n(byte[] bArr, C2851x c2851x) {
        return (F2) D.k(zzb, bArr, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = 0;
        int i10 = 3;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new C2741j0(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i11 == 3) {
            return new F2();
        }
        if (i11 == 4) {
            return new C2860y0(i10, i9);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }

    public final C2807r3 o() {
        C2807r3 c2807r3 = this.zzf;
        return c2807r3 == null ? C2807r3.n() : c2807r3;
    }

    public final C2785o4 p() {
        C2785o4 c2785o4 = this.zzg;
        return c2785o4 == null ? C2785o4.n() : c2785o4;
    }

    public final boolean q() {
        return (this.zze & 1) != 0;
    }

    public final boolean r() {
        return (this.zze & 2) != 0;
    }
}
