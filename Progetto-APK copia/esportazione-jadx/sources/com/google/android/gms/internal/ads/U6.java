package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class U6 extends AbstractC1873qH {
    public static final int zza = 5;
    public static final int zzb = 6;
    public static final int zzc = 7;
    public static final int zzd = 8;
    public static final int zze = 9;
    public static final int zzf = 10;
    public static final int zzg = 11;
    public static final int zzh = 12;
    public static final int zzi = 13;
    public static final int zzj = 14;
    public static final int zzk = 15;
    public static final int zzl = 16;
    public static final int zzm = 17;
    public static final int zzn = 18;
    public static final int zzo = 19;
    public static final int zzp = 20;
    private static final U6 zzu;
    private static volatile SH zzv;
    private C1655m7 zzA;
    private V6 zzB;
    private C1499j7 zzC;
    private Y6 zzD;
    private int zzE;
    private int zzF;
    private R6 zzG;
    private int zzH;
    private int zzI;
    private int zzJ;
    private int zzK;
    private int zzL;
    private long zzM;
    private int zzw;
    private C1449i7 zzx;
    private C1551k7 zzy;
    private C1603l7 zzz;

    static {
        U6 u7 = new U6();
        zzu = u7;
        AbstractC1873qH.t(U6.class, u7);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        p000a.r rVar = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzu, "\u0004\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005ဉ\u0000\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzG", "zzH", "zzI", "zzJ", "zzK", "zzL", "zzM"});
            case 3:
                return new U6();
            case 4:
                return new Q3(20, rVar);
            case 5:
                return zzu;
            case 6:
                SH c1821pH = zzv;
                if (c1821pH == null) {
                    synchronized (U6.class) {
                        try {
                            c1821pH = zzv;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzv = c1821pH;
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
