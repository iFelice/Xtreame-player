package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class IF extends AbstractC1873qH {
    private static final IF zza;
    private static volatile SH zzb;
    private int zzc;
    private XG zzd = XG.f17401H;

    static {
        IF r7 = new IF();
        zza = r7;
        AbstractC1873qH.t(IF.class, r7);
    }

    public static HF B() {
        return (HF) zza.g();
    }

    public static IF C(XG xg, C1509jH c1509jH) {
        return (IF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static SH E() {
        return zza.i();
    }

    public final int A() {
        return this.zzc;
    }

    public final XG D() {
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
                return new XH(zza, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzc", "zzd"});
            case 3:
                return new IF();
            case 4:
                return new HF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (IF.class) {
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
