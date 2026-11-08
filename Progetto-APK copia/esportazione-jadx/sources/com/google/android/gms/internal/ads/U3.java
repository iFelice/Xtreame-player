package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class U3 extends AbstractC1873qH {
    private static final U3 zza;
    private static volatile SH zzb;
    private int zzc;
    private boolean zzd;

    static {
        U3 u7 = new U3();
        zza = u7;
        AbstractC1873qH.t(U3.class, u7);
    }

    public static U3 A() {
        return zza;
    }

    public final boolean B() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဇ\u0000", new Object[]{"zzc", "zzd"});
            case 3:
                return new U3();
            case 4:
                return new Q3(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (U3.class) {
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
