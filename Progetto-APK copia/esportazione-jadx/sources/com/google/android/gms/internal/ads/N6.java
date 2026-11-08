package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class N6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    public static final int zzg = 7;
    public static final int zzh = 8;
    public static final int zzi = 9;
    public static final int zzj = 10;
    public static final int zzk = 11;
    private static final N6 zzl;
    private static volatile SH zzm;
    private int zzA;
    private int zzB;
    private O6 zzC;
    private int zzn;
    private int zzo = 1000;
    private int zzp = 1000;
    private int zzu;
    private int zzv;
    private int zzw;
    private int zzx;
    private int zzy;
    private int zzz;

    static {
        N6 n7 = new N6();
        zzl = n7;
        AbstractC1873qH.t(N6.class, n7);
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
                B7 b8 = B7.f12286a;
                return new XH(zzl, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzn", "zzo", b8, "zzp", b8, "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC"});
            case 3:
                return new N6();
            case 4:
                return new Q3(15, rVar);
            case 5:
                return zzl;
            case 6:
                SH c1821pH = zzm;
                if (c1821pH == null) {
                    synchronized (N6.class) {
                        try {
                            c1821pH = zzm;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzm = c1821pH;
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
