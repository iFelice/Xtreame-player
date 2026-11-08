package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class TI extends AbstractC1873qH {
    private static final TI zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        TI ti = new TI();
        zza = ti;
        AbstractC1873qH.t(TI.class, ti);
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
                SI si = SI.f16422a;
                return new XH(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002", new Object[]{"zzc", "zzd", si, "zze", "zzf", si});
            case 3:
                return new TI();
            case 4:
                return new C1966s7(23, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (TI.class) {
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
