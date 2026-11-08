package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2078uF extends AbstractC1873qH {
    private static final C2078uF zza;
    private static volatile SH zzb;
    private int zzc;
    private C2286yF zzd;
    private XF zze;

    static {
        C2078uF c2078uF = new C2078uF();
        zza = c2078uF;
        AbstractC1873qH.t(C2078uF.class, c2078uF);
    }

    public static C2026tF A() {
        return (C2026tF) zza.g();
    }

    public static C2078uF B(XG xg, C1509jH c1509jH) {
        return (C2078uF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static /* synthetic */ void E(C2078uF c2078uF, C2286yF c2286yF) {
        c2078uF.zzd = c2286yF;
        c2078uF.zzc |= 1;
    }

    public static /* synthetic */ void F(C2078uF c2078uF, XF xf) {
        c2078uF.zze = xf;
        c2078uF.zzc |= 2;
    }

    public final C2286yF C() {
        C2286yF c2286yF = this.zzd;
        return c2286yF == null ? C2286yF.C() : c2286yF;
    }

    public final XF D() {
        XF xf = this.zze;
        return xf == null ? XF.D() : xf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C2078uF();
            case 4:
                return new C2026tF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2078uF.class) {
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
