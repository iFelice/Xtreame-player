package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1345g7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    private static final C1345g7 zzd;
    private static volatile SH zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        C1345g7 c1345g7 = new C1345g7();
        zzd = c1345g7;
        AbstractC1873qH.t(C1345g7.class, c1345g7);
    }

    public static void A(C1345g7 c1345g7, boolean z7) {
        c1345g7.zzf |= 2;
        c1345g7.zzh = z7;
    }

    public static void B(C1345g7 c1345g7, int i8) {
        c1345g7.zzf |= 4;
        c1345g7.zzi = i8;
    }

    public static C1293f7 C() {
        return (C1293f7) zzd.g();
    }

    public static void D(C1345g7 c1345g7, boolean z7) {
        c1345g7.zzf |= 1;
        c1345g7.zzg = z7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzd, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzf", "zzg", "zzh", "zzi"});
            case 3:
                return new C1345g7();
            case 4:
                return new C1293f7(zzd);
            case 5:
                return zzd;
            case 6:
                SH c1821pH = zze;
                if (c1821pH == null) {
                    synchronized (C1345g7.class) {
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
