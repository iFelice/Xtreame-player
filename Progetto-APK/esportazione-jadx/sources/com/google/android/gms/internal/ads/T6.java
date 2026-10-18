package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class T6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final T6 zzd;
    private static volatile SH zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        T6 t7 = new T6();
        zzd = t7;
        AbstractC1873qH.t(T6.class, t7);
    }

    public static void A(T6 t7, int i8) {
        t7.zzf |= 4;
        t7.zzi = i8;
    }

    public static S6 B() {
        return (S6) zzd.g();
    }

    public static void C(T6 t7, int i8) {
        t7.zzf |= 1;
        t7.zzg = i8;
    }

    public static void D(T6 t7, int i8) {
        t7.zzf |= 2;
        t7.zzh = i8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
            case 3:
                return new T6();
            case 4:
                return new S6(zzd);
            case 5:
                return zzd;
            case 6:
                SH c1821pH = zze;
                if (c1821pH == null) {
                    synchronized (T6.class) {
                        try {
                            c1821pH = zze;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zze = c1821pH;
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
