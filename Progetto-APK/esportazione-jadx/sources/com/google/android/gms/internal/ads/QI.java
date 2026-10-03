package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class QI extends AbstractC1873qH {
    private static final QI zza;
    private static volatile SH zzb;
    private int zzc;
    private PI zzd;
    private XG zzf;
    private XG zzg;
    private int zzh;
    private XG zzi;
    private byte zzj = 2;
    private InterfaceC2236xH zze = WH.f17195J;

    static {
        QI qi = new QI();
        zza = qi;
        AbstractC1873qH.t(QI.class, qi);
    }

    public QI() {
        VG vg = XG.f17401H;
        this.zzf = vg;
        this.zzg = vg;
        this.zzi = vg;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        Object obj = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return Byte.valueOf(this.zzj);
            case 1:
                this.zzj = abstractC1873qH == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new XH(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzc", "zzd", "zze", LI.class, "zzf", "zzg", "zzh", "zzi"});
            case 3:
                return new QI();
            case 4:
                return new C1966s7(20, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (QI.class) {
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
