package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1716nG extends AbstractC1873qH {
    private static final C1716nG zza;
    private static volatile SH zzb;
    private int zzc;
    private InterfaceC2236xH zzd = WH.f17195J;

    static {
        C1716nG c1716nG = new C1716nG();
        zza = c1716nG;
        AbstractC1873qH.t(C1716nG.class, c1716nG);
    }

    public static C1560kG A() {
        return (C1560kG) zza.g();
    }

    public static void C(C1716nG c1716nG, C1664mG c1664mG) {
        InterfaceC2236xH interfaceC2236xH = c1716nG.zzd;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1716nG.zzd = AbstractC1873qH.h(interfaceC2236xH);
        }
        c1716nG.zzd.add(c1664mG);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", C1664mG.class});
            case 3:
                return new C1716nG();
            case 4:
                return new C1560kG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1716nG.class) {
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
