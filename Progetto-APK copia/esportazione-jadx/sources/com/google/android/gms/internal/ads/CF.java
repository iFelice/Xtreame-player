package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class CF extends AbstractC1873qH {
    private static final CF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private GF zze;
    private XG zzf = XG.f17401H;

    static {
        CF cf = new CF();
        zza = cf;
        AbstractC1873qH.t(CF.class, cf);
    }

    public static BF B() {
        return (BF) zza.g();
    }

    public static CF C(XG xg, C1509jH c1509jH) {
        return (CF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static SH F() {
        return zza.i();
    }

    public static /* synthetic */ void G(CF cf, GF gf) {
        cf.zze = gf;
        cf.zzc |= 1;
    }

    public final int A() {
        return this.zzd;
    }

    public final GF D() {
        GF gf = this.zze;
        return gf == null ? GF.C() : gf;
    }

    public final XG E() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new CF();
            case 4:
                return new BF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (CF.class) {
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
