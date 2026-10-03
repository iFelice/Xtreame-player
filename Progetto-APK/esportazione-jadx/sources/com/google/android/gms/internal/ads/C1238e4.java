package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1238e4 extends AbstractC1873qH {
    private static final C1238e4 zza;
    private static volatile SH zzb;
    private int zzc;
    private long zzd = -1;
    private int zze = 1000;

    static {
        C1238e4 c1238e4 = new C1238e4();
        zza = c1238e4;
        AbstractC1873qH.t(C1238e4.class, c1238e4);
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
                return new XH(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001", new Object[]{"zzc", "zzd", "zze", C1756o4.f20231a});
            case 3:
                return new C1238e4();
            case 4:
                return new Q3(9, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1238e4.class) {
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
