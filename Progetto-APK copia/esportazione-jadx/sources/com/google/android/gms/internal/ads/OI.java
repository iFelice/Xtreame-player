package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class OI extends AbstractC1873qH {
    private static final OI zza;
    private static volatile SH zzb;
    private int zzc;
    private NI zzd;
    private XG zzf;
    private XG zzg;
    private int zzh;
    private byte zzi = 2;
    private InterfaceC2236xH zze = WH.f17195J;

    static {
        OI oi = new OI();
        zza = oi;
        AbstractC1873qH.t(OI.class, oi);
    }

    public OI() {
        VG vg = XG.f17401H;
        this.zzf = vg;
        this.zzg = vg;
    }

    public static MI A() {
        return (MI) zza.g();
    }

    public static void B(OI oi, LI li) {
        InterfaceC2236xH interfaceC2236xH = oi.zze;
        if (!((QG) interfaceC2236xH).f16004G) {
            oi.zze = AbstractC1873qH.h(interfaceC2236xH);
        }
        oi.zze.add(li);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return Byte.valueOf(this.zzi);
            case 1:
                this.zzi = abstractC1873qH == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new XH(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", "zze", LI.class, "zzf", "zzg", "zzh"});
            case 3:
                return new OI();
            case 4:
                return new MI(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (OI.class) {
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
