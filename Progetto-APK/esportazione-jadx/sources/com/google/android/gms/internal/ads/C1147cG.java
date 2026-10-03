package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1147cG extends AbstractC1873qH {
    private static final C1147cG zza;
    private static volatile SH zzb;
    private String zzc = HttpUrl.FRAGMENT_ENCODE_SET;
    private XG zzd = XG.f17401H;
    private int zze;

    static {
        C1147cG c1147cG = new C1147cG();
        zza = c1147cG;
        AbstractC1873qH.t(C1147cG.class, c1147cG);
    }

    public static C1044aG A() {
        return (C1044aG) zza.g();
    }

    public static C1147cG C() {
        return zza;
    }

    public static /* synthetic */ void F(C1147cG c1147cG, String str) {
        str.getClass();
        c1147cG.zzc = str;
    }

    public static /* synthetic */ void G(C1147cG c1147cG, XG xg) {
        xg.getClass();
        c1147cG.zzd = xg;
    }

    public final int B() {
        int i8 = this.zze;
        int i9 = 1;
        if (i8 != 0) {
            if (i8 != 1) {
                i9 = 3;
                if (i8 != 2) {
                    if (i8 != 3) {
                        i9 = i8 != 4 ? 0 : 5;
                    } else {
                        i9 = 4;
                    }
                }
            } else {
                i9 = 2;
            }
        }
        if (i9 == 0) {
            return 6;
        }
        return i9;
    }

    public final XG D() {
        return this.zzd;
    }

    public final String E() {
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
                return new C1147cG();
            case 4:
                return new C1044aG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1147cG.class) {
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
