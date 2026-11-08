package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class A7 extends AbstractC1873qH {
    public static final int zza = 5;
    public static final int zzb = 6;
    public static final int zzc = 7;
    public static final int zzd = 8;
    private static final A7 zze;
    private static volatile SH zzf;
    private int zzg;
    private int zzh;
    private T6 zzi;
    private String zzj = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzk = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        A7 a8 = new A7();
        zze = a8;
        AbstractC1873qH.t(A7.class, a8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        int i9 = 0;
        int i10 = 2;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zze, "\u0004\u0004\u0000\u0001\u0005\b\u0004\u0000\u0000\u0000\u0005᠌\u0000\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzg", "zzh", C2330z7.f22132a, "zzi", "zzj", "zzk"});
            case 3:
                return new A7();
            case 4:
                return new C1966s7(i10, i9);
            case 5:
                return zze;
            case 6:
                SH c1821pH = zzf;
                if (c1821pH == null) {
                    synchronized (A7.class) {
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
