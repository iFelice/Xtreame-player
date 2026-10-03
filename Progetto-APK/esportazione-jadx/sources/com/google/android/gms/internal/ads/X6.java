package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class X6 extends AbstractC1873qH {
    public static final int zza = 1;
    private static final X6 zzb;
    private static volatile SH zzc;
    private int zzd;
    private int zze;

    static {
        X6 x7 = new X6();
        zzb = x7;
        AbstractC1873qH.t(X6.class, x7);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        p000a.r rVar = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", W6.f17170a});
            case 3:
                return new X6();
            case 4:
                return new Q3(22, rVar);
            case 5:
                return zzb;
            case 6:
                SH c1821pH = zzc;
                if (c1821pH == null) {
                    synchronized (X6.class) {
                        try {
                            c1821pH = zzc;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzc = c1821pH;
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
