package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class EF extends AbstractC1873qH {
    private static final EF zza;
    private static volatile SH zzb;
    private int zzc;
    private GF zzd;
    private int zze;

    static {
        EF ef = new EF();
        zza = ef;
        AbstractC1873qH.t(EF.class, ef);
    }

    public static DF B() {
        return (DF) zza.g();
    }

    public static EF C(XG xg, C1509jH c1509jH) {
        return (EF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static /* synthetic */ void E(EF ef, GF gf) {
        ef.zzd = gf;
        ef.zzc |= 1;
    }

    public final int A() {
        return this.zze;
    }

    public final GF D() {
        GF gf = this.zzd;
        return gf == null ? GF.C() : gf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new EF();
            case 4:
                return new DF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (EF.class) {
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
