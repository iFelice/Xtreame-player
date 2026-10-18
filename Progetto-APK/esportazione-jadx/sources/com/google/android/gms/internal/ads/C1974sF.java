package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1974sF extends AbstractC1873qH {
    private static final C1974sF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private C2182wF zze;
    private VF zzf;

    static {
        C1974sF c1974sF = new C1974sF();
        zza = c1974sF;
        AbstractC1873qH.t(C1974sF.class, c1974sF);
    }

    public static C1871qF B() {
        return (C1871qF) zza.g();
    }

    public static C1974sF C(XG xg, C1509jH c1509jH) {
        return (C1974sF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static SH F() {
        return zza.i();
    }

    public static /* synthetic */ void G(C1974sF c1974sF, C2182wF c2182wF) {
        c1974sF.zze = c2182wF;
        c1974sF.zzc |= 1;
    }

    public static /* synthetic */ void H(C1974sF c1974sF, VF vf) {
        c1974sF.zzf = vf;
        c1974sF.zzc |= 2;
    }

    public final int A() {
        return this.zzd;
    }

    public final C2182wF D() {
        C2182wF c2182wF = this.zze;
        return c2182wF == null ? C2182wF.C() : c2182wF;
    }

    public final VF E() {
        VF vf = this.zzf;
        return vf == null ? VF.C() : vf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new C1974sF();
            case 4:
                return new C1871qF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1974sF.class) {
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
