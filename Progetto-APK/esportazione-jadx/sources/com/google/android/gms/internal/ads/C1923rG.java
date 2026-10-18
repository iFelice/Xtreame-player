package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1923rG extends AbstractC1873qH {
    private static final C1923rG zza;
    private static volatile SH zzb;
    private String zzc = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C1923rG c1923rG = new C1923rG();
        zza = c1923rG;
        AbstractC1873qH.t(C1923rG.class, c1923rG);
    }

    public static C1872qG A() {
        return (C1872qG) zza.g();
    }

    public static C1923rG B() {
        return zza;
    }

    public static C1923rG C(XG xg, C1509jH c1509jH) {
        return (C1923rG) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static /* synthetic */ void E(C1923rG c1923rG, String str) {
        str.getClass();
        c1923rG.zzc = str;
    }

    public final String D() {
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
                return new XH(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzc"});
            case 3:
                return new C1923rG();
            case 4:
                return new C1872qG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1923rG.class) {
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
