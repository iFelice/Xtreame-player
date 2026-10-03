package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2183wG extends AbstractC1873qH {
    private static final C2183wG zza;
    private static volatile SH zzb;
    private int zzc;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private C1250eG zze;

    static {
        C2183wG c2183wG = new C2183wG();
        zza = c2183wG;
        AbstractC1873qH.t(C2183wG.class, c2183wG);
    }

    public static C2131vG B() {
        return (C2131vG) zza.g();
    }

    public static C2183wG C() {
        return zza;
    }

    public static C2183wG D(XG xg, C1509jH c1509jH) {
        return (C2183wG) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static /* synthetic */ void F(C2183wG c2183wG, String str) {
        str.getClass();
        c2183wG.zzd = str;
    }

    public static /* synthetic */ void G(C2183wG c2183wG, C1250eG c1250eG) {
        c1250eG.getClass();
        c2183wG.zze = c1250eG;
        c2183wG.zzc |= 1;
    }

    public final C1250eG A() {
        C1250eG c1250eG = this.zze;
        return c1250eG == null ? C1250eG.B() : c1250eG;
    }

    public final String E() {
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
                return new XH(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C2183wG();
            case 4:
                return new C2131vG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2183wG.class) {
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
