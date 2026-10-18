package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class Q0 extends D {
    private static final Q0 zzb;
    private int zze;
    private I zzf = C2733i0.f23843J;
    private r zzg = r.f23990H;
    private int zzh = 1;
    private int zzi = 1;

    static {
        Q0 q7 = new Q0();
        zzb = q7;
        D.f(Q0.class, q7);
    }

    public static P0 m() {
        return (P0) zzb.h();
    }

    public static void n(Q0 q7, C2796q c2796q) {
        I i8 = q7.zzf;
        if (!((AbstractC2748k) i8).f23887G) {
            q7.zzf = D.d(i8);
        }
        q7.zzf.add(c2796q);
    }

    public static /* synthetic */ void o(Q0 q7, C2796q c2796q) {
        q7.zze |= 1;
        q7.zzg = c2796q;
    }

    public static /* synthetic */ void p(Q0 q7) {
        q7.zzi = 2;
        q7.zze |= 4;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003ဌ\u0001\u0004ဌ\u0002", new Object[]{"zze", "zzf", "zzg", "zzh", L0.f23581a, "zzi", J0.f23562a});
        }
        if (i9 == 3) {
            return new Q0();
        }
        if (i9 == 4) {
            return new P0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
