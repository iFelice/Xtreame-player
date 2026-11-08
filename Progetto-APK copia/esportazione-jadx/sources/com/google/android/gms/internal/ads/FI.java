package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class FI extends AbstractC1873qH {
    private static final FI zza;
    private static volatile SH zzb;
    private int zzc;
    private XG zzd = XG.f17401H;

    static {
        FI fi = new FI();
        zza = fi;
        AbstractC1873qH.t(FI.class, fi);
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
                return new XH(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ည\u0000", new Object[]{"zzc", "zzd"});
            case 3:
                return new FI();
            case 4:
                return new C1966s7(17, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (FI.class) {
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
