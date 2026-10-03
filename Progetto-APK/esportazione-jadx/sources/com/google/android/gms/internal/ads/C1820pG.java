package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1820pG extends AbstractC1873qH {
    private static final C1820pG zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private C1923rG zze;

    static {
        C1820pG c1820pG = new C1820pG();
        zza = c1820pG;
        AbstractC1873qH.t(C1820pG.class, c1820pG);
    }

    public static C1768oG B() {
        return (C1768oG) zza.g();
    }

    public static C1820pG C(XG xg, C1509jH c1509jH) {
        return (C1820pG) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static SH E() {
        return zza.i();
    }

    public static /* synthetic */ void F(C1820pG c1820pG, C1923rG c1923rG) {
        c1820pG.zze = c1923rG;
        c1820pG.zzc |= 1;
    }

    public final int A() {
        return this.zzd;
    }

    public final C1923rG D() {
        C1923rG c1923rG = this.zze;
        return c1923rG == null ? C1923rG.B() : c1923rG;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C1820pG();
            case 4:
                return new C1768oG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1820pG.class) {
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
