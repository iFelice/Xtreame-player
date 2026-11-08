package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.a7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1035a7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final C1035a7 zzd;
    private static volatile SH zze;
    private int zzf;
    private int zzg;
    private C1241e7 zzh;
    private C1345g7 zzi;

    static {
        C1035a7 c1035a7 = new C1035a7();
        zzd = c1035a7;
        AbstractC1873qH.t(C1035a7.class, c1035a7);
    }

    public static void A(C1035a7 c1035a7, C1241e7 c1241e7) {
        c1035a7.getClass();
        c1241e7.getClass();
        c1035a7.zzh = c1241e7;
        c1035a7.zzf |= 2;
    }

    public static void B(C1035a7 c1035a7, C1345g7 c1345g7) {
        c1035a7.getClass();
        c1035a7.zzi = c1345g7;
        c1035a7.zzf |= 4;
    }

    public static Z6 C() {
        return (Z6) zzd.g();
    }

    public static void D(C1035a7 c1035a7) {
        c1035a7.getClass();
        c1035a7.zzg = p156u.h.b(2);
        c1035a7.zzf |= 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzf", "zzg", C1138c7.f18177a, "zzh", "zzi"});
            case 3:
                return new C1035a7();
            case 4:
                return new Z6(zzd);
            case 5:
                return zzd;
            case 6:
                SH c1821pH = zze;
                if (c1821pH == null) {
                    synchronized (C1035a7.class) {
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
