package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class SF extends AbstractC1873qH {
    private static final SF zza;
    private static volatile SH zzb;

    static {
        SF sf = new SF();
        zza = sf;
        AbstractC1873qH.t(SF.class, sf);
    }

    public static SF A() {
        return zza;
    }

    public static void B(XG xg, C1509jH c1509jH) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0000", null);
            case 3:
                return new SF();
            case 4:
                return new C1966s7(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (SF.class) {
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
