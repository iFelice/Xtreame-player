package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class G0 extends D {
    private static final G0 zzb;
    private int zze;
    private r zzf;
    private r zzg;

    static {
        G0 g8 = new G0();
        zzb = g8;
        D.f(G0.class, g8);
    }

    public G0() {
        C2796q c2796q = r.f23990H;
        this.zzf = c2796q;
        this.zzg = c2796q;
    }

    public static F0 m() {
        return (F0) zzb.h();
    }

    public static /* synthetic */ void n(G0 g8, C2796q c2796q) {
        g8.zze |= 1;
        g8.zzf = c2796q;
    }

    public static /* synthetic */ void o(G0 g8, C2796q c2796q) {
        g8.zze |= 2;
        g8.zzg = c2796q;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i9 == 3) {
            return new G0();
        }
        if (i9 == 4) {
            return new F0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
