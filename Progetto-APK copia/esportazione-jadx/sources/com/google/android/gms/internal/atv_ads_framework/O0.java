package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: loaded from: classes.dex */
public final class O0 extends U {
    private static final O0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        O0 o4 = new O0();
        zzb = o4;
        U.j(O0.class, o4);
    }

    public static N0 l() {
        return (N0) zzb.f();
    }

    public static /* synthetic */ void m(O0 o4) {
        o4.zze = 1;
        o4.zzd = 1 | o4.zzd;
    }

    public static /* synthetic */ void n(O0 o4, int i8) {
        o4.zzf = i8 - 1;
        o4.zzd |= 2;
    }

    public static /* synthetic */ void o(O0 o4, int i8) {
        o4.zzg = i8 - 1;
        o4.zzd |= 4;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.U
    public final Object d(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2416v0(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဌ\u0002", new Object[]{"zzd", "zze", C2383e0.f22319I, "zzf", C2383e0.f22318H, "zzg", C2383e0.f22320J});
        }
        if (i9 == 3) {
            return new O0();
        }
        if (i9 == 4) {
            return new N0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
