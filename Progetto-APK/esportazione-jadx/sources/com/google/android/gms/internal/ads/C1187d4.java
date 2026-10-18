package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.d4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1187d4 extends AbstractC1873qH {
    private static final C1187d4 zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private long zze = -1;

    static {
        C1187d4 c1187d4 = new C1187d4();
        zza = c1187d4;
        AbstractC1873qH.t(C1187d4.class, c1187d4);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        Object obj = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001", new Object[]{"zzc", "zzd", Y3.f17568a, "zze"});
            case 3:
                return new C1187d4();
            case 4:
                return new Q3(8, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1187d4.class) {
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
