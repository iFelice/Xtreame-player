package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Y6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    private static final Y6 zze;
    private static volatile SH zzf;
    private int zzg;
    private T6 zzh;
    private int zzi = 1000;
    private X6 zzj;
    private R6 zzk;

    static {
        Y6 y7 = new Y6();
        zze = y7;
        AbstractC1873qH.t(Y6.class, y7);
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
                return new XH(zze, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzg", "zzh", "zzi", B7.f12286a, "zzj", "zzk"});
            case 3:
                return new Y6();
            case 4:
                return new Q3(23, rVar);
            case 5:
                return zze;
            case 6:
                SH c1821pH = zzf;
                if (c1821pH == null) {
                    synchronized (Y6.class) {
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
