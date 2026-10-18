package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ax, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1076ax extends AbstractC1873qH {
    private static final C1076ax zza;
    private static volatile SH zzb;
    private InterfaceC2236xH zzc = WH.f17195J;

    static {
        C1076ax c1076ax = new C1076ax();
        zza = c1076ax;
        AbstractC1873qH.t(C1076ax.class, c1076ax);
    }

    public static Xw B() {
        return (Xw) zza.g();
    }

    public static void C(C1076ax c1076ax) {
        c1076ax.zzc = WH.f17195J;
    }

    public static void D(C1076ax c1076ax, Zw zw) {
        InterfaceC2236xH interfaceC2236xH = c1076ax.zzc;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1076ax.zzc = AbstractC1873qH.h(interfaceC2236xH);
        }
        c1076ax.zzc.add(zw);
    }

    public final int A() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", Zw.class});
            case 3:
                return new C1076ax();
            case 4:
                return new Xw(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1076ax.class) {
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
