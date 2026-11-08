package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class Q6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final Q6 zzd;
    private static volatile SH zze;
    private int zzf;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzh;
    private R6 zzi;

    static {
        Q6 q7 = new Q6();
        zzd = q7;
        AbstractC1873qH.t(Q6.class, q7);
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
                return new XH(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", "zzh", B7.f12286a, "zzi"});
            case 3:
                return new Q6();
            case 4:
                return new Q3(18, rVar);
            case 5:
                return zzd;
            case 6:
                SH c1821pH = zze;
                if (c1821pH == null) {
                    synchronized (Q6.class) {
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
