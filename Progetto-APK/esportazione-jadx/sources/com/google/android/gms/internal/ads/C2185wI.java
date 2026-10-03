package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2185wI extends AbstractC1873qH {
    private static final C2185wI zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private long zze;
    private XG zzf = XG.f17401H;

    static {
        C2185wI c2185wI = new C2185wI();
        zza = c2185wI;
        AbstractC1873qH.t(C2185wI.class, c2185wI);
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
                return new XH(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", C2133vI.f21461a, "zze", "zzf"});
            case 3:
                return new C2185wI();
            case 4:
                return new C1966s7(15, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2185wI.class) {
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
