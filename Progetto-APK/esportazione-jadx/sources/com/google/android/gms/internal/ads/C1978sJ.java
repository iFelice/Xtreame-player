package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1978sJ extends AbstractC1873qH {
    private static final C1978sJ zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private int zzg;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2080uH zzf = C1924rH.f20709J;
    private InterfaceC2236xH zzh = WH.f17195J;
    private XG zzi = XG.f17401H;

    static {
        C1978sJ c1978sJ = new C1978sJ();
        zza = c1978sJ;
        AbstractC1873qH.t(C1978sJ.class, c1978sJ);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        int i9 = 0;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u0016\u0005င\u0002\u0006\u001b\u0007ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", C1875qJ.class, "zzi"});
            case 3:
                return new C1978sJ();
            case 4:
                return new C1926rJ(i9);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1978sJ.class) {
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
