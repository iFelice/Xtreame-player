package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class Q4 extends D {
    private static final Q4 zzb;
    private int zze;
    private r zzf = r.f23990H;
    private U4 zzg;

    static {
        Q4 q7 = new Q4();
        zzb = q7;
        D.f(Q4.class, q7);
    }

    public static P4 n() {
        return (P4) zzb.h();
    }

    public static Q4 o(r rVar, C2851x c2851x) {
        return (Q4) D.j(zzb, rVar, c2851x);
    }

    public static /* synthetic */ void t(Q4 q7, U4 u7) {
        u7.getClass();
        q7.zzg = u7;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new Q4();
        }
        if (i9 == 4) {
            return new P4(zzb);
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
        U4 u7 = this.zzg;
        return u7 == null ? U4.o() : u7;
    }

    public final r q() {
        return this.zzf;
    }
}
