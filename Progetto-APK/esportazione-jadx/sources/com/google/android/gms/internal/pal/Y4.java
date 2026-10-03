package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class Y4 extends D {
    private static final Y4 zzb;
    private C2698d5 zze;
    private R5 zzf;

    static {
        Y4 y7 = new Y4();
        zzb = y7;
        D.f(Y4.class, y7);
    }

    public static X4 m() {
        return (X4) zzb.h();
    }

    public static Y4 n(r rVar, C2851x c2851x) {
        return (Y4) D.j(zzb, rVar, c2851x);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i9 == 3) {
            return new Y4();
        }
        if (i9 == 4) {
            return new X4(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final C2698d5 o() {
        C2698d5 c2698d5 = this.zze;
        return c2698d5 == null ? C2698d5.o() : c2698d5;
    }

    public final R5 p() {
        R5 r7 = this.zzf;
        return r7 == null ? R5.o() : r7;
    }
}
