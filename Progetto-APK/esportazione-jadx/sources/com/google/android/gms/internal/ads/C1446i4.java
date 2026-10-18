package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1446i4 extends AbstractC1873qH {
    private static final C1446i4 zza;
    private static volatile SH zzb;
    private int zzc;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;

    static {
        C1446i4 c1446i4 = new C1446i4();
        zza = c1446i4;
        AbstractC1873qH.t(C1446i4.class, c1446i4);
    }

    public static C1394h4 A() {
        return (C1394h4) zza.g();
    }

    public static /* synthetic */ void B(C1446i4 c1446i4, long j8) {
        c1446i4.zzc |= 1;
        c1446i4.zzd = j8;
    }

    public static /* synthetic */ void C(C1446i4 c1446i4, long j8) {
        c1446i4.zzc |= 4;
        c1446i4.zzf = j8;
    }

    public static /* synthetic */ void D(C1446i4 c1446i4, long j8) {
        c1446i4.zzc |= 8;
        c1446i4.zzg = j8;
    }

    public static /* synthetic */ void E(C1446i4 c1446i4, long j8) {
        c1446i4.zzc |= 16;
        c1446i4.zzh = j8;
    }

    public static /* synthetic */ void F(C1446i4 c1446i4, long j8) {
        c1446i4.zzc |= 32;
        c1446i4.zzi = j8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 3:
                return new C1446i4();
            case 4:
                return new C1394h4(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1446i4.class) {
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
