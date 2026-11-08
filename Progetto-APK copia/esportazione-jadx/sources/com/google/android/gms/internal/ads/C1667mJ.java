package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1667mJ extends AbstractC1873qH {
    private static final C1667mJ zza;
    private static volatile SH zzb;
    private int zzc;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private XG zze = XG.f17401H;

    static {
        C1667mJ c1667mJ = new C1667mJ();
        zza = c1667mJ;
        AbstractC1873qH.t(C1667mJ.class, c1667mJ);
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
                return new XH(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C1667mJ();
            case 4:
                return new C1966s7(27, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1667mJ.class) {
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
