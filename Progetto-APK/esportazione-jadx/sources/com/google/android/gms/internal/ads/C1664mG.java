package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1664mG extends AbstractC1873qH {
    private static final C1664mG zza;
    private static volatile SH zzb;
    private String zzc = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        C1664mG c1664mG = new C1664mG();
        zza = c1664mG;
        AbstractC1873qH.t(C1664mG.class, c1664mG);
    }

    public static C1612lG A() {
        return (C1612lG) zza.g();
    }

    public static /* synthetic */ void B(C1664mG c1664mG, String str) {
        str.getClass();
        c1664mG.zzc = str;
    }

    public static void E(C1664mG c1664mG, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        c1664mG.zzd = i8 - 2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new C1664mG();
            case 4:
                return new C1612lG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1664mG.class) {
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
