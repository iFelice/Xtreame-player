package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2081uI extends AbstractC1873qH {
    private static final C2081uI zza;
    private static volatile SH zzb;
    private InterfaceC2236xH zzc = WH.f17195J;

    static {
        C2081uI c2081uI = new C2081uI();
        zza = c2081uI;
        AbstractC1873qH.t(C2081uI.class, c2081uI);
    }

    public static C2029tI A() {
        return (C2029tI) zza.g();
    }

    public static void B(C2081uI c2081uI, C1977sI c1977sI) {
        InterfaceC2236xH interfaceC2236xH = c2081uI.zzc;
        if (!((QG) interfaceC2236xH).f16004G) {
            c2081uI.zzc = AbstractC1873qH.h(interfaceC2236xH);
        }
        c2081uI.zzc.add(c1977sI);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", C1977sI.class});
            case 3:
                return new C2081uI();
            case 4:
                return new C2029tI(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2081uI.class) {
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
