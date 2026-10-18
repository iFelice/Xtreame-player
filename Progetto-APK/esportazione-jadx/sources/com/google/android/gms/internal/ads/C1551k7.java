package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.k7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1551k7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    private static final C1551k7 zzg;
    private static volatile SH zzh;
    private int zzi;
    private int zzj = 1000;
    private X6 zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private long zzo;

    static {
        C1551k7 c1551k7 = new C1551k7();
        zzg = c1551k7;
        AbstractC1873qH.t(C1551k7.class, c1551k7);
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
                return new XH(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzi", "zzj", B7.f12286a, "zzk", "zzl", "zzm", "zzn", "zzo"});
            case 3:
                return new C1551k7();
            case 4:
                return new Q3(26, rVar);
            case 5:
                return zzg;
            case 6:
                SH c1821pH = zzh;
                if (c1821pH == null) {
                    synchronized (C1551k7.class) {
                        try {
                            c1821pH = zzh;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzh = c1821pH;
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
