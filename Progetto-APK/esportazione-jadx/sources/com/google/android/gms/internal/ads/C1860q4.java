package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1860q4 extends AbstractC1873qH {
    private static final C1860q4 zza;
    private static volatile SH zzb;
    private int zzc;
    private long zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private XG zzf = XG.f17401H;

    static {
        C1860q4 c1860q4 = new C1860q4();
        zza = c1860q4;
        AbstractC1873qH.t(C1860q4.class, c1860q4);
    }

    public static C1860q4 C() {
        return zza;
    }

    public final long A() {
        return this.zzd;
    }

    public final boolean D() {
        return (this.zzc & 1) != 0;
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
                return new XH(zza, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new C1860q4();
            case 4:
                return new Q3(11, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1860q4.class) {
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
