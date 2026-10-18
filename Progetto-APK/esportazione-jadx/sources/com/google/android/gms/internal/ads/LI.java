package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class LI extends AbstractC1873qH {
    private static final LI zza;
    private static volatile SH zzb;
    private int zzc;
    private XG zzd;
    private XG zze;
    private byte zzf = 2;

    static {
        LI li = new LI();
        zza = li;
        AbstractC1873qH.t(LI.class, li);
    }

    public LI() {
        VG vg = XG.f17401H;
        this.zzd = vg;
        this.zze = vg;
    }

    public static KI A() {
        return (KI) zza.g();
    }

    public static /* synthetic */ void B(LI li, VG vg) {
        li.zzc |= 1;
        li.zzd = vg;
    }

    public static /* synthetic */ void C(LI li, VG vg) {
        li.zzc |= 2;
        li.zze = vg;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return Byte.valueOf(this.zzf);
            case 1:
                this.zzf = abstractC1873qH == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new XH(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new LI();
            case 4:
                return new KI(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (LI.class) {
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
