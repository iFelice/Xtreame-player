package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.k4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1548k4 extends AbstractC1873qH {
    private static final C1548k4 zza;
    private static volatile SH zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private boolean zzf;
    private InterfaceC2080uH zzg = C1924rH.f20709J;
    private long zzh;

    static {
        C1548k4 c1548k4 = new C1548k4();
        zza = c1548k4;
        AbstractC1873qH.t(C1548k4.class, c1548k4);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        Object obj = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 3:
                return new C1548k4();
            case 4:
                return new Q3(10, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1548k4.class) {
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
