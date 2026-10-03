package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1977sI extends AbstractC1873qH {
    private static final C1977sI zza;
    private static volatile SH zzb;
    private int zzc;
    private long zzd;
    private long zze;

    static {
        C1977sI c1977sI = new C1977sI();
        zza = c1977sI;
        AbstractC1873qH.t(C1977sI.class, c1977sI);
    }

    public static C1925rI A() {
        return (C1925rI) zza.g();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C1977sI();
            case 4:
                return new C1925rI(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1977sI.class) {
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
