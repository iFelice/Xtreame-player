package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.w7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2174w7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    private static final C2174w7 zzg;
    private static volatile SH zzh;
    private int zzi;
    private int zzj;
    private R6 zzk;
    private R6 zzl;
    private R6 zzm;
    private InterfaceC2236xH zzn = WH.f17195J;
    private int zzo;

    static {
        C2174w7 c2174w7 = new C2174w7();
        zzg = c2174w7;
        AbstractC1873qH.t(C2174w7.class, c2174w7);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        int i9 = 0;
        int i10 = 1;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzg, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzi", "zzj", "zzk", "zzl", "zzm", "zzn", R6.class, "zzo"});
            case 3:
                return new C2174w7();
            case 4:
                return new C1966s7(i10, i9);
            case 5:
                return zzg;
            case 6:
                SH c1821pH = zzh;
                if (c1821pH == null) {
                    synchronized (C2174w7.class) {
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
