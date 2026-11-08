package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1611lF extends AbstractC1873qH {
    private static final C1611lF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private XG zze = XG.f17401H;
    private C1819pF zzf;

    static {
        C1611lF c1611lF = new C1611lF();
        zza = c1611lF;
        AbstractC1873qH.t(C1611lF.class, c1611lF);
    }

    public static C1559kF B() {
        return (C1559kF) zza.g();
    }

    public static C1611lF C(XG xg, C1509jH c1509jH) {
        return (C1611lF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static SH F() {
        return zza.i();
    }

    public static /* synthetic */ void H(C1611lF c1611lF, C1819pF c1819pF) {
        c1611lF.zzf = c1819pF;
        c1611lF.zzc |= 1;
    }

    public final int A() {
        return this.zzd;
    }

    public final C1819pF D() {
        C1819pF c1819pF = this.zzf;
        return c1819pF == null ? C1819pF.C() : c1819pF;
    }

    public final XG E() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new C1611lF();
            case 4:
                return new C1559kF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1611lF.class) {
                        try {
                            c1821pH = zzb;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzb = c1821pH;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c1821pH;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
