package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Zw extends AbstractC1873qH {
    private static final Zw zza;
    private static volatile SH zzb;
    private int zzc;
    private Ww zzd;

    static {
        Zw zw = new Zw();
        zza = zw;
        AbstractC1873qH.t(Zw.class, zw);
    }

    public static Yw A() {
        return (Yw) zza.g();
    }

    public static /* synthetic */ void B(Zw zw, Ww ww) {
        zw.zzd = ww;
        zw.zzc |= 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"zzc", "zzd"});
            case 3:
                return new Zw();
            case 4:
                return new Yw(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (Zw.class) {
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
