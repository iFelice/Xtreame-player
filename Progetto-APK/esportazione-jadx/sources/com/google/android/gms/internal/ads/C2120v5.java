package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.v5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2120v5 extends AbstractC1873qH {
    private static final C2120v5 zza;
    private static volatile SH zzb;
    private int zzc;
    private C2224x5 zzd;
    private XG zze;
    private XG zzf;

    static {
        C2120v5 c2120v5 = new C2120v5();
        zza = c2120v5;
        AbstractC1873qH.t(C2120v5.class, c2120v5);
    }

    public C2120v5() {
        VG vg = XG.f17401H;
        this.zze = vg;
        this.zzf = vg;
    }

    public static C2120v5 A(VG vg, C1509jH c1509jH) {
        return (C2120v5) AbstractC1873qH.r(zza, vg, c1509jH);
    }

    public final C2224x5 B() {
        C2224x5 c2224x5 = this.zzd;
        return c2224x5 == null ? C2224x5.E() : c2224x5;
    }

    public final XG C() {
        return this.zzf;
    }

    public final XG D() {
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
                return new XH(zza, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new C2120v5();
            case 4:
                return new Q3(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2120v5.class) {
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
