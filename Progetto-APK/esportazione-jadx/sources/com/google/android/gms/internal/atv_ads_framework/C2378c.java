package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2378c extends U {
    private static final C2378c zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private U0 zzg;
    private M0 zzh;
    private S0 zzi;
    private Q0 zzj;

    static {
        C2378c c2378c = new C2378c();
        zzb = c2378c;
        U.j(C2378c.class, c2378c);
    }

    public static C2376b l() {
        return (C2376b) zzb.f();
    }

    public static /* synthetic */ void m(C2378c c2378c, Q0 q7) {
        c2378c.zzj = q7;
        c2378c.zzd |= 8;
    }

    public static /* synthetic */ void n(C2378c c2378c, C2374a c2374a) {
        c2378c.zzf = c2374a;
        c2378c.zze = 5;
    }

    public static /* synthetic */ void o(C2378c c2378c, O0 o4) {
        c2378c.zzf = o4;
        c2378c.zze = 6;
    }

    public static /* synthetic */ void p(C2378c c2378c, U0 u7) {
        c2378c.zzg = u7;
        c2378c.zzd |= 1;
    }

    public static /* synthetic */ void q(C2378c c2378c, M0 m7) {
        c2378c.zzh = m7;
        c2378c.zzd |= 2;
    }

    public static /* synthetic */ void r(C2378c c2378c, S0 s7) {
        c2378c.zzi = s7;
        c2378c.zzd |= 4;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.U
    public final Object d(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2416v0(zzb, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005<\u0000\u0006<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", "zzh", "zzi", "zzj", C2374a.class, O0.class});
        }
        if (i9 == 3) {
            return new C2378c();
        }
        if (i9 == 4) {
            return new C2376b(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
