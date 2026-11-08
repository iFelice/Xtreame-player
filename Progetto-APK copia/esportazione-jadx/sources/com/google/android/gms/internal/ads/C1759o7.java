package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.o7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1759o7 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final C1759o7 zzc;
    private static volatile SH zzd;
    private int zze;
    private boolean zzf;
    private int zzg;

    static {
        C1759o7 c1759o7 = new C1759o7();
        zzc = c1759o7;
        AbstractC1873qH.t(C1759o7.class, c1759o7);
    }

    public static C1707n7 A() {
        return (C1707n7) zzc.g();
    }

    public static void C(C1759o7 c1759o7, boolean z7) {
        c1759o7.zze |= 1;
        c1759o7.zzf = z7;
    }

    public static void D(C1759o7 c1759o7, int i8) {
        c1759o7.zze |= 2;
        c1759o7.zzg = i8;
    }

    public final boolean B() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 3:
                return new C1759o7();
            case 4:
                return new C1707n7(zzc);
            case 5:
                return zzc;
            case 6:
                SH c1821pH = zzd;
                if (c1821pH == null) {
                    synchronized (C1759o7.class) {
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
