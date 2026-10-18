package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2224x5 extends AbstractC1873qH {
    private static final C2224x5 zza;
    private static volatile SH zzb;
    private int zzc;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzf;
    private long zzg;
    private long zzh;

    static {
        C2224x5 c2224x5 = new C2224x5();
        zza = c2224x5;
        AbstractC1873qH.t(C2224x5.class, c2224x5);
    }

    public static C2172w5 D() {
        return (C2172w5) zza.g();
    }

    public static C2224x5 E() {
        return zza;
    }

    public static C2224x5 F(VG vg) {
        C2224x5 c2224x5 = zza;
        C1509jH c1509jH = C1509jH.f19448b;
        UH uh = UH.f16822c;
        AbstractC1873qH abstractC1873qHR = AbstractC1873qH.r(c2224x5, vg, C1509jH.f19449c);
        AbstractC1873qH.y(abstractC1873qHR);
        return (C2224x5) abstractC1873qHR;
    }

    public static C2224x5 G(VG vg, C1509jH c1509jH) {
        return (C2224x5) AbstractC1873qH.r(zza, vg, c1509jH);
    }

    public static /* synthetic */ void J(C2224x5 c2224x5, String str) {
        str.getClass();
        c2224x5.zzc |= 1;
        c2224x5.zzd = str;
    }

    public static /* synthetic */ void K(C2224x5 c2224x5, long j8) {
        c2224x5.zzc |= 16;
        c2224x5.zzh = j8;
    }

    public static /* synthetic */ void L(C2224x5 c2224x5, String str) {
        str.getClass();
        c2224x5.zzc |= 2;
        c2224x5.zze = str;
    }

    public static /* synthetic */ void M(C2224x5 c2224x5, long j8) {
        c2224x5.zzc |= 4;
        c2224x5.zzf = j8;
    }

    public static /* synthetic */ void N(C2224x5 c2224x5, long j8) {
        c2224x5.zzc |= 8;
        c2224x5.zzg = j8;
    }

    public final long A() {
        return this.zzg;
    }

    public final long B() {
        return this.zzf;
    }

    public final long C() {
        return this.zzh;
    }

    public final String H() {
        return this.zze;
    }

    public final String I() {
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
                return new XH(zza, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
            case 3:
                return new C2224x5();
            case 4:
                return new C2172w5(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2224x5.class) {
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
