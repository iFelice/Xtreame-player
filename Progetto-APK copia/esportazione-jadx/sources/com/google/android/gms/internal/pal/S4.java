package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class S4 extends D {
    private static final S4 zzb;
    private int zze;
    private U4 zzf;

    static {
        S4 s7 = new S4();
        zzb = s7;
        D.f(S4.class, s7);
    }

    public static R4 n() {
        return (R4) zzb.h();
    }

    public static S4 o(r rVar, C2851x c2851x) {
        return (S4) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new S4();
        }
        if (i9 == 4) {
            return new R4(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final U4 p() {
        U4 u7 = this.zzf;
        return u7 == null ? U4.o() : u7;
    }
}
