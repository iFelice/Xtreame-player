package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class XF extends AbstractC1873qH {
    private static final XF zza;
    private static volatile SH zzb;
    private int zzc;
    private ZF zzd;
    private int zze;
    private int zzf;

    static {
        XF xf = new XF();
        zza = xf;
        AbstractC1873qH.t(XF.class, xf);
    }

    public static WF C() {
        return (WF) zza.g();
    }

    public static XF D() {
        return zza;
    }

    public static XF E(XG xg, C1509jH c1509jH) {
        return (XF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static /* synthetic */ void G(XF xf, ZF zf) {
        xf.zzd = zf;
        xf.zzc |= 1;
    }

    public final int A() {
        return this.zze;
    }

    public final int B() {
        return this.zzf;
    }

    public final ZF F() {
        ZF zf = this.zzd;
        return zf == null ? ZF.D() : zf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new XF();
            case 4:
                return new WF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (XF.class) {
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
