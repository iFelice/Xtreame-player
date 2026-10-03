package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1241e7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final C1241e7 zzc;
    private static volatile SH zzd;
    private int zze;
    private boolean zzf;
    private int zzg;

    static {
        C1241e7 c1241e7 = new C1241e7();
        zzc = c1241e7;
        AbstractC1873qH.t(C1241e7.class, c1241e7);
    }

    public static C1190d7 A() {
        return (C1190d7) zzc.g();
    }

    public static C1241e7 B() {
        return zzc;
    }

    public static void C(C1241e7 c1241e7, boolean z7) {
        c1241e7.zze |= 1;
        c1241e7.zzf = z7;
    }

    public static void D(C1241e7 c1241e7, int i8) {
        c1241e7.zze |= 2;
        c1241e7.zzg = i8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဋ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 3:
                return new C1241e7();
            case 4:
                return new C1190d7(zzc);
            case 5:
                return zzc;
            case 6:
                SH c1821pH = zzd;
                if (c1821pH == null) {
                    synchronized (C1241e7.class) {
                        try {
                            c1821pH = zzd;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzd = c1821pH;
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
