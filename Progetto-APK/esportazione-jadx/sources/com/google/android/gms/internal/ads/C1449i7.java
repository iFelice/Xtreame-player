package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1449i7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    private static final C1449i7 zzf;
    private static volatile SH zzg;
    private int zzh;
    private int zzi = 1000;
    private X6 zzj;
    private int zzk;
    private int zzl;
    private int zzm;

    static {
        C1449i7 c1449i7 = new C1449i7();
        zzf = c1449i7;
        AbstractC1873qH.t(C1449i7.class, c1449i7);
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
                return new XH(zzf, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzh", "zzi", B7.f12286a, "zzj", "zzk", "zzl", "zzm"});
            case 3:
                return new C1449i7();
            case 4:
                return new Q3(24, rVar);
            case 5:
                return zzf;
            case 6:
                SH c1821pH = zzg;
                if (c1821pH == null) {
                    synchronized (C1449i7.class) {
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
