package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class O6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final O6 zzc;
    private static volatile SH zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        O6 o7 = new O6();
        zzc = o7;
        AbstractC1873qH.t(O6.class, o7);
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
                return new XH(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 3:
                return new O6();
            case 4:
                return new Q3(16, rVar);
            case 5:
                return zzc;
            case 6:
                SH c1821pH = zzd;
                if (c1821pH == null) {
                    synchronized (O6.class) {
                        try {
                            c1821pH = zzd;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzd = c1821pH;
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
