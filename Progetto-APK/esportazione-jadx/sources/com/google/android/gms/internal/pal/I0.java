package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class I0 extends D {
    private static final I0 zzb;
    private int zze;
    private r zzf;
    private r zzg;
    private r zzh;
    private r zzi;

    static {
        I0 i8 = new I0();
        zzb = i8;
        D.f(I0.class, i8);
    }

    public I0() {
        C2796q c2796q = r.f23990H;
        this.zzf = c2796q;
        this.zzg = c2796q;
        this.zzh = c2796q;
        this.zzi = c2796q;
    }

    public static H0 m() {
        return (H0) zzb.h();
    }

    public static I0 n(byte[] bArr, C2851x c2851x) {
        return (I0) D.k(zzb, bArr, c2851x);
    }

    public static /* synthetic */ void s(I0 i8, C2796q c2796q) {
        i8.zze |= 1;
        i8.zzf = c2796q;
    }

    public static /* synthetic */ void t(I0 i8, C2796q c2796q) {
        i8.zze |= 2;
        i8.zzg = c2796q;
    }

    public static /* synthetic */ void u(I0 i8, C2796q c2796q) {
        i8.zze |= 4;
        i8.zzh = c2796q;
    }

    public static /* synthetic */ void v(I0 i8, C2796q c2796q) {
        i8.zze |= 8;
        i8.zzi = c2796q;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i9 == 3) {
            return new I0();
        }
        if (i9 == 4) {
            return new H0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final r o() {
        return this.zzf;
    }

    public final r p() {
        return this.zzg;
    }

    public final r q() {
        return this.zzi;
    }

    public final r r() {
        return this.zzh;
    }
}
