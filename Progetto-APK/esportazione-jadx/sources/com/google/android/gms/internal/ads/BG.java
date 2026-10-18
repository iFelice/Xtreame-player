package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class BG extends AbstractC1873qH {
    private static final BG zza;
    private static volatile SH zzb;
    private int zzc;

    static {
        BG bg = new BG();
        zza = bg;
        AbstractC1873qH.t(BG.class, bg);
    }

    public static BG B() {
        return zza;
    }

    public static BG C(XG xg, C1509jH c1509jH) {
        return (BG) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public final int A() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
            case 3:
                return new BG();
            case 4:
                return new C1966s7(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (BG.class) {
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
