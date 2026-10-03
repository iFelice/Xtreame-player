package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.r4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1911r4 extends AbstractC1873qH {
    private static final C1911r4 zza;
    private static volatile SH zzb;
    private int zzc;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C1911r4 c1911r4 = new C1911r4();
        zza = c1911r4;
        AbstractC1873qH.t(C1911r4.class, c1911r4);
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
                return new XH(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzc", "zzd"});
            case 3:
                return new C1911r4();
            case 4:
                return new Q3(12, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1911r4.class) {
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
