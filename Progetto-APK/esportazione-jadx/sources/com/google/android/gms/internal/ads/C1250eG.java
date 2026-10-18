package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1250eG extends AbstractC1873qH {
    private static final C1250eG zza;
    private static volatile SH zzb;
    private String zzc = HttpUrl.FRAGMENT_ENCODE_SET;
    private XG zzd = XG.f17401H;
    private int zze;

    static {
        C1250eG c1250eG = new C1250eG();
        zza = c1250eG;
        AbstractC1873qH.t(C1250eG.class, c1250eG);
    }

    public static C1199dG A() {
        return (C1199dG) zza.g();
    }

    public static C1250eG B() {
        return zza;
    }

    public static C1250eG C(byte[] bArr, C1509jH c1509jH) {
        AbstractC1873qH abstractC1873qHZ = AbstractC1873qH.z(zza, bArr, bArr.length, c1509jH);
        AbstractC1873qH.y(abstractC1873qHZ);
        return (C1250eG) abstractC1873qHZ;
    }

    public static /* synthetic */ void G(C1250eG c1250eG, String str) {
        str.getClass();
        c1250eG.zzc = str;
    }

    public static /* synthetic */ void H(C1250eG c1250eG, XG xg) {
        xg.getClass();
        c1250eG.zzd = xg;
    }

    public final EnumC2235xG D() {
        EnumC2235xG enumC2235xGA = EnumC2235xG.a(this.zze);
        return enumC2235xGA == null ? EnumC2235xG.UNRECOGNIZED : enumC2235xGA;
    }

    public final XG E() {
        return this.zzd;
    }

    public final String F() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C1250eG();
            case 4:
                return new C1199dG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1250eG.class) {
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
