package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.l7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1603l7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final C1603l7 zzd;
    private static volatile SH zze;
    private int zzf;
    private int zzg = 1000;
    private X6 zzh;
    private R6 zzi;

    static {
        C1603l7 c1603l7 = new C1603l7();
        zzd = c1603l7;
        AbstractC1873qH.t(C1603l7.class, c1603l7);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        p000a.r rVar = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", B7.f12286a, "zzh", "zzi"});
            case 3:
                return new C1603l7();
            case 4:
                return new Q3(27, rVar);
            case 5:
                return zzd;
            case 6:
                SH c1821pH = zze;
                if (c1821pH == null) {
                    synchronized (C1603l7.class) {
                        try {
                            c1821pH = zze;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zze = c1821pH;
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
