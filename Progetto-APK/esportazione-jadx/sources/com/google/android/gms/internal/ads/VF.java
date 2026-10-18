package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class VF extends AbstractC1873qH {
    private static final VF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private ZF zze;
    private XG zzf = XG.f17401H;

    static {
        VF vf = new VF();
        zza = vf;
        AbstractC1873qH.t(VF.class, vf);
    }

    public static UF B() {
        return (UF) zza.g();
    }

    public static VF C() {
        return zza;
    }

    public static VF D(XG xg, C1509jH c1509jH) {
        return (VF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static SH G() {
        return zza.i();
    }

    public static /* synthetic */ void H(VF vf, ZF zf) {
        vf.zze = zf;
        vf.zzc |= 1;
    }

    public final int A() {
        return this.zzd;
    }

    public final ZF E() {
        ZF zf = this.zze;
        return zf == null ? ZF.D() : zf;
    }

    public final XG F() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new VF();
            case 4:
                return new UF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (VF.class) {
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
