package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ty, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2060ty extends AbstractC1873qH {
    private static final C2060ty zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private C1853py zzg;

    static {
        C2060ty c2060ty = new C2060ty();
        zza = c2060ty;
        AbstractC1873qH.t(C2060ty.class, c2060ty);
    }

    public static C1905qy A() {
        return (C1905qy) zza.g();
    }

    public static /* synthetic */ void B(C2060ty c2060ty, String str) {
        str.getClass();
        c2060ty.zzc |= 2;
        c2060ty.zze = str;
    }

    public static /* synthetic */ void C(C2060ty c2060ty, C1853py c1853py) {
        c2060ty.zzg = c1853py;
        c2060ty.zzc |= 8;
    }

    public static /* synthetic */ void D(C2060ty c2060ty) {
        c2060ty.zzd = 1;
        c2060ty.zzc = 1 | c2060ty.zzc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzc", "zzd", C1956ry.f20813a, "zze", "zzf", "zzg"});
            case 3:
                return new C2060ty();
            case 4:
                return new C1905qy(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2060ty.class) {
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
