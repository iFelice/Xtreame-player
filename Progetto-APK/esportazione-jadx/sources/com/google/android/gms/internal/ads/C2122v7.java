package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.v7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2122v7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    private static final C2122v7 zzf;
    private static volatile SH zzg;
    private int zzh;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2236xH zzj = WH.f17195J;
    private int zzk = 1000;
    private int zzl = 1000;
    private int zzm = 1000;

    static {
        C2122v7 c2122v7 = new C2122v7();
        zzf = c2122v7;
        AbstractC1873qH.t(C2122v7.class, c2122v7);
    }

    public static void A(C2122v7 c2122v7, String str) {
        c2122v7.getClass();
        str.getClass();
        c2122v7.zzh |= 1;
        c2122v7.zzi = str;
    }

    public static C2122v7 B() {
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                B7 b8 = B7.f12286a;
                return new XH(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003᠌\u0001\u0004᠌\u0002\u0005᠌\u0003", new Object[]{"zzh", "zzi", "zzj", C1914r7.class, "zzk", b8, "zzl", b8, "zzm", b8});
            case 3:
                return new C2122v7();
            case 4:
                return new C2070u7(zzf);
            case 5:
                return zzf;
            case 6:
                SH c1821pH = zzg;
                if (c1821pH == null) {
                    synchronized (C2122v7.class) {
                        try {
                            c1821pH = zzg;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzg = c1821pH;
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
