package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class AI extends AbstractC1873qH {
    private static final AI zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2236xH zzg;
    private int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private String zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private InterfaceC2236xH zzu;
    private boolean zzv;
    private long zzw;
    private InterfaceC2080uH zzx;
    private boolean zzy;
    private InterfaceC2080uH zzz;

    static {
        AI ai = new AI();
        zza = ai;
        AbstractC1873qH.t(AI.class, ai);
    }

    public AI() {
        WH wh = WH.f17195J;
        this.zzg = wh;
        this.zzl = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzu = wh;
        C1924rH c1924rH = C1924rH.f20709J;
        this.zzx = c1924rH;
        this.zzz = c1924rH;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        int i9 = 14;
        Object obj = null;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005᠌\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006\tဈ\u0007\nင\b\u000bင\t\fင\n\rဇ\u000b\u000e\u001b\u000fဇ\f\u0010ဂ\r\u0011ࠬ\u0012ဇ\u000e\u0013ࠬ", new Object[]{"zzc", "zzd", C2341zI.f22147a, "zze", "zzf", "zzg", "zzh", C2237xI.f21868a, "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", C2185wI.class, "zzv", "zzw", "zzx", C1874qI.f20563a, "zzy", "zzz", C2289yI.f22013a});
            case 3:
                return new AI();
            case 4:
                return new C1966s7(i9, obj);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (AI.class) {
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
