package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class E7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    private static final E7 zze;
    private static volatile SH zzf;
    private int zzg;
    private int zzi;
    private R6 zzk;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2080uH zzj = C1924rH.f20709J;

    static {
        E7 e8 = new E7();
        zze = e8;
        AbstractC1873qH.t(E7.class, e8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        int i9 = 0;
        int i10 = 3;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzg", "zzh", "zzi", B7.f12286a, "zzj", "zzk"});
            case 3:
                return new E7();
            case 4:
                return new C1966s7(i10, i9);
            case 5:
                return zze;
            case 6:
                SH c1821pH = zzf;
                if (c1821pH == null) {
                    synchronized (E7.class) {
                        try {
                            c1821pH = zzf;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzf = c1821pH;
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
