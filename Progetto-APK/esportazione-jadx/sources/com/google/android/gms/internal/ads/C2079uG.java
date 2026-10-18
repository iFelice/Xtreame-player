package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2079uG extends AbstractC1873qH {
    private static final C2079uG zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private C2183wG zze;

    static {
        C2079uG c2079uG = new C2079uG();
        zza = c2079uG;
        AbstractC1873qH.t(C2079uG.class, c2079uG);
    }

    public static C2027tG B() {
        return (C2027tG) zza.g();
    }

    public static C2079uG C(XG xg, C1509jH c1509jH) {
        return (C2079uG) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static SH E() {
        return zza.i();
    }

    public static /* synthetic */ void F(C2079uG c2079uG, C2183wG c2183wG) {
        c2079uG.zze = c2183wG;
        c2079uG.zzc |= 1;
    }

    public final int A() {
        return this.zzd;
    }

    public final C2183wG D() {
        C2183wG c2183wG = this.zze;
        return c2183wG == null ? C2183wG.C() : c2183wG;
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
                return new C2079uG();
            case 4:
                return new C2027tG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2079uG.class) {
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
