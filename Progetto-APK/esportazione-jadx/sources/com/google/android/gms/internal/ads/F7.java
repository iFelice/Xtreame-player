package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class F7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final F7 zzc;
    private static volatile SH zzd;
    private int zze;
    private int zzf;
    private InterfaceC2080uH zzg = C1924rH.f20709J;

    static {
        F7 f8 = new F7();
        zzc = f8;
        AbstractC1873qH.t(F7.class, f8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        int i9 = 0;
        int i10 = 4;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u0016", new Object[]{"zze", "zzf", B7.f12286a, "zzg"});
            case 3:
                return new F7();
            case 4:
                return new C1966s7(i10, i9);
            case 5:
                return zzc;
            case 6:
                SH c1821pH = zzd;
                if (c1821pH == null) {
                    synchronized (F7.class) {
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
