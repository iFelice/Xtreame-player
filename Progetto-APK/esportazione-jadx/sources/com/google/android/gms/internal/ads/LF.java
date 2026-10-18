package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class LF extends AbstractC1873qH {
    private static final LF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;

    static {
        LF lf = new LF();
        zza = lf;
        AbstractC1873qH.t(LF.class, lf);
    }

    public static KF C() {
        return (KF) zza.g();
    }

    public static LF D(XG xg, C1509jH c1509jH) {
        return (LF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public final int A() {
        return this.zzc;
    }

    public final int B() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd"});
            case 3:
                return new LF();
            case 4:
                return new KF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (LF.class) {
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
