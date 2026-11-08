package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class C0 extends AbstractC2457i2 {
    private static final C0 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        C0 c8 = new C0();
        zzb = c8;
        AbstractC2457i2.e(C0.class, c8);
    }

    public static B0 l() {
        return (B0) zzb.j();
    }

    public static /* synthetic */ void m(C0 c8, int i8) {
        c8.zzd |= 2;
        c8.zzf = i8;
    }

    public static /* synthetic */ void n(C0 c8, int i8) {
        c8.zze = i8 - 1;
        c8.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzd", "zze", Z.f22591w, "zzf"});
        }
        if (i9 == 3) {
            return new C0();
        }
        if (i9 == 4) {
            return new B0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
