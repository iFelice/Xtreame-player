package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class NI extends AbstractC1873qH {
    private static final NI zza;
    private static volatile SH zzb;
    private int zzc;
    private XG zzd;
    private XG zze;
    private XG zzf;

    static {
        NI ni = new NI();
        zza = ni;
        AbstractC1873qH.t(NI.class, ni);
    }

    public NI() {
        VG vg = XG.f17401H;
        this.zzd = vg;
        this.zze = vg;
        this.zzf = vg;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        Object obj = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new NI();
            case 4:
                return new C1966s7(19, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (NI.class) {
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
