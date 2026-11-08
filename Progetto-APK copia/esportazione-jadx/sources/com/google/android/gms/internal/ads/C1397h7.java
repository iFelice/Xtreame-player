package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.h7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1397h7 extends AbstractC1873qH {
    public static final int zza = 1;
    private static final C1397h7 zzb;
    private static volatile SH zzc;
    private InterfaceC2236xH zzd = WH.f17195J;

    static {
        C1397h7 c1397h7 = new C1397h7();
        zzb = c1397h7;
        AbstractC1873qH.t(C1397h7.class, c1397h7);
    }

    public static C1087b7 A() {
        return (C1087b7) zzb.g();
    }

    public static void B(C1397h7 c1397h7, C1035a7 c1035a7) {
        c1397h7.getClass();
        InterfaceC2236xH interfaceC2236xH = c1397h7.zzd;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1397h7.zzd = AbstractC1873qH.h(interfaceC2236xH);
        }
        c1397h7.zzd.add(c1035a7);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", C1035a7.class});
            case 3:
                return new C1397h7();
            case 4:
                return new C1087b7(zzb);
            case 5:
                return zzb;
            case 6:
                SH c1821pH = zzc;
                if (c1821pH == null) {
                    synchronized (C1397h7.class) {
                        try {
                            c1821pH = zzc;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzc = c1821pH;
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
