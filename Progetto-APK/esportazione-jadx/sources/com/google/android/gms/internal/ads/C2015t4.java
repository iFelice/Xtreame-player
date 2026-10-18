package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.t4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2015t4 extends AbstractC1873qH {
    private static final C2015t4 zza;
    private static volatile SH zzb;
    private int zzc;
    private InterfaceC2236xH zzd = WH.f17195J;
    private XG zze = XG.f17401H;
    private int zzf = 1;
    private int zzg = 1;

    static {
        C2015t4 c2015t4 = new C2015t4();
        zza = c2015t4;
        AbstractC1873qH.t(C2015t4.class, c2015t4);
    }

    public static C1963s4 A() {
        return (C1963s4) zza.g();
    }

    public static void B(C2015t4 c2015t4, VG vg) {
        InterfaceC2236xH interfaceC2236xH = c2015t4.zzd;
        if (!((QG) interfaceC2236xH).f16004G) {
            c2015t4.zzd = AbstractC1873qH.h(interfaceC2236xH);
        }
        c2015t4.zzd.add(vg);
    }

    public static /* synthetic */ void C(C2015t4 c2015t4, VG vg) {
        c2015t4.zzc |= 1;
        c2015t4.zze = vg;
    }

    public static /* synthetic */ void D(C2015t4 c2015t4) {
        c2015t4.zzg = 4;
        c2015t4.zzc = 4 | c2015t4.zzc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"zzc", "zzd", "zze", "zzf", C1808p4.f20418a, "zzg", C1704n4.f20066a});
            case 3:
                return new C2015t4();
            case 4:
                return new C1963s4(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2015t4.class) {
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
