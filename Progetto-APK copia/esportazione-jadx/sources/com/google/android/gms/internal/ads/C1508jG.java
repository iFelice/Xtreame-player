package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1508jG extends AbstractC1873qH {
    private static final C1508jG zza;
    private static volatile SH zzb;
    private int zzc;
    private InterfaceC2236xH zzd = WH.f17195J;

    static {
        C1508jG c1508jG = new C1508jG();
        zza = c1508jG;
        AbstractC1873qH.t(C1508jG.class, c1508jG);
    }

    public static C1354gG C() {
        return (C1354gG) zza.g();
    }

    public static C1508jG E(InputStream inputStream, C1509jH c1509jH) throws AH {
        AbstractC1200dH c1045aH;
        C1508jG c1508jG = zza;
        if (inputStream == null) {
            byte[] bArr = AbstractC2288yH.f22011b;
            int length = bArr.length;
            c1045aH = AbstractC1200dH.e(bArr, 0, 0, false);
        } else {
            c1045aH = new C1045aH(inputStream);
        }
        AbstractC1873qH abstractC1873qHS = AbstractC1873qH.s(c1508jG, c1045aH, c1509jH);
        AbstractC1873qH.y(abstractC1873qHS);
        return (C1508jG) abstractC1873qHS;
    }

    public static void H(C1508jG c1508jG, C1458iG c1458iG) {
        InterfaceC2236xH interfaceC2236xH = c1508jG.zzd;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1508jG.zzd = AbstractC1873qH.h(interfaceC2236xH);
        }
        c1508jG.zzd.add(c1458iG);
    }

    public final int A() {
        return this.zzd.size();
    }

    public final int B() {
        return this.zzc;
    }

    public final C1458iG D(int i8) {
        return (C1458iG) this.zzd.get(i8);
    }

    public final InterfaceC2236xH F() {
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
                return new XH(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", C1458iG.class});
            case 3:
                return new C1508jG();
            case 4:
                return new C1354gG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1508jG.class) {
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
