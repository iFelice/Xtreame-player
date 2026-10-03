package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.y7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2278y7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    public static final int zzg = 7;
    public static final int zzh = 8;
    private static final C2278y7 zzi;
    private static volatile SH zzj;
    private int zzk;
    private R6 zzm;
    private int zzn;
    private T6 zzo;
    private int zzp;
    private String zzl = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzu = 1000;
    private int zzv = 1000;
    private int zzw = 1000;

    static {
        C2278y7 c2278y7 = new C2278y7();
        zzi = c2278y7;
        AbstractC1873qH.t(C2278y7.class, c2278y7);
    }

    public static void A(C2278y7 c2278y7, T6 t7) {
        c2278y7.getClass();
        t7.getClass();
        c2278y7.zzo = t7;
        c2278y7.zzk |= 8;
    }

    public static C2278y7 B() {
        return zzi;
    }

    public static void C(C2278y7 c2278y7, String str) {
        c2278y7.getClass();
        str.getClass();
        c2278y7.zzk |= 1;
        c2278y7.zzl = str;
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
                return new XH(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006᠌\u0005\u0007᠌\u0006\b᠌\u0007", new Object[]{"zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", b8, "zzv", b8, "zzw", b8});
            case 3:
                return new C2278y7();
            case 4:
                return new C2226x7(zzi);
            case 5:
                return zzi;
            case 6:
                SH c1821pH = zzj;
                if (c1821pH == null) {
                    synchronized (C2278y7.class) {
                        try {
                            c1821pH = zzj;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzj = c1821pH;
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
