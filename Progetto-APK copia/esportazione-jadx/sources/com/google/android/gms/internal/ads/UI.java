package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class UI extends AbstractC1873qH {
    private static final UI zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private TI zze;
    private TI zzf;

    static {
        UI ui = new UI();
        zza = ui;
        AbstractC1873qH.t(UI.class, ui);
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
                return new XH(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", SI.f16422a, "zze", "zzf"});
            case 3:
                return new UI();
            case 4:
                return new C1966s7(22, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (UI.class) {
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
