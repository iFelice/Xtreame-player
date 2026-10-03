package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class U4 extends D {
    private static final U4 zzb;
    private int zze;

    static {
        U4 u7 = new U4();
        zzb = u7;
        D.f(U4.class, u7);
    }

    public static T4 n() {
        return (T4) zzb.h();
    }

    public static U4 o() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
        }
        if (i9 == 3) {
            return new U4();
        }
        if (i9 == 4) {
            return new T4(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }
}
