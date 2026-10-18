package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1461iJ extends AbstractC1873qH {
    private static final C1461iJ zza;
    private static volatile SH zzb;
    private int zzc;
    private long zze;
    private boolean zzf;
    private int zzg;
    private boolean zzj;
    private boolean zzk;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C1461iJ c1461iJ = new C1461iJ();
        zza = c1461iJ;
        AbstractC1873qH.t(C1461iJ.class, c1461iJ);
    }

    public static C1409hJ A() {
        return (C1409hJ) zza.g();
    }

    public static /* synthetic */ void B(C1461iJ c1461iJ, String str) {
        c1461iJ.zzc |= 1;
        c1461iJ.zzd = str;
    }

    public static /* synthetic */ void C(C1461iJ c1461iJ, long j8) {
        c1461iJ.zzc |= 2;
        c1461iJ.zze = j8;
    }

    public static /* synthetic */ void D(C1461iJ c1461iJ, boolean z7) {
        c1461iJ.zzc |= 4;
        c1461iJ.zzf = z7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", C1511jJ.f19451a, "zzh", "zzi", "zzj", "zzk"});
            case 3:
                return new C1461iJ();
            case 4:
                return new C1409hJ(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1461iJ.class) {
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
