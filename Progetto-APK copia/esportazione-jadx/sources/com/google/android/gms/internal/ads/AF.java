package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class AF extends AbstractC1873qH {
    private static final AF zza;
    private static volatile SH zzb;
    private int zzc;

    static {
        AF af = new AF();
        zza = af;
        AbstractC1873qH.t(AF.class, af);
    }

    public static C2338zF B() {
        return (C2338zF) zza.g();
    }

    public static AF C() {
        return zza;
    }

    public final int A() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
            case 3:
                return new AF();
            case 4:
                return new C2338zF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (AF.class) {
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
