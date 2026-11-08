package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class F6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    private static final F6 zzc;
    private static volatile SH zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        F6 f8 = new F6();
        zzc = f8;
        AbstractC1873qH.t(F6.class, f8);
    }

    public static C6 A() {
        return (C6) zzc.g();
    }

    public static void B(F6 f8, int i8) {
        f8.getClass();
        f8.zzf = p156u.h.b(i8);
        f8.zze |= 1;
    }

    public static void C(F6 f8, int i8) {
        f8.getClass();
        f8.zzg = p000a.r.b(i8);
        f8.zze |= 2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zze", "zzf", E6.f12941a, "zzg", D6.f12778a});
            case 3:
                return new F6();
            case 4:
                return new C6(zzc);
            case 5:
                return zzc;
            case 6:
                SH c1821pH = zzd;
                if (c1821pH == null) {
                    synchronized (F6.class) {
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
