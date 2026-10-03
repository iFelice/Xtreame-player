package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class M6 extends AbstractC1873qH {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 4;
    public static final int zze = 5;
    public static final int zzf = 6;
    public static final int zzg = 7;
    public static final int zzh = 8;
    private static final M6 zzi;
    private static volatile SH zzj;
    private int zzk;
    private int zzm;
    private int zzn;
    private long zzo;
    private long zzv;
    private int zzw;
    private InterfaceC2236xH zzl = WH.f17195J;
    private String zzp = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzu = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        M6 m7 = new M6();
        zzi = m7;
        AbstractC1873qH.t(M6.class, m7);
    }

    public static void A(M6 m7, ArrayList arrayList) {
        InterfaceC2236xH interfaceC2236xH = m7.zzl;
        if (!((QG) interfaceC2236xH).f16004G) {
            m7.zzl = AbstractC1873qH.h(interfaceC2236xH);
        }
        PG.c(arrayList, m7.zzl);
    }

    public static void B(M6 m7, int i8) {
        m7.zzk |= 1;
        m7.zzm = i8;
    }

    public static void C(M6 m7, int i8) {
        m7.zzk |= 2;
        m7.zzn = i8;
    }

    public static void D(M6 m7, long j8) {
        m7.zzk |= 4;
        m7.zzo = j8;
    }

    public static void E(M6 m7, String str) {
        m7.getClass();
        str.getClass();
        m7.zzk |= 8;
        m7.zzp = str;
    }

    public static void F(M6 m7, String str) {
        m7.getClass();
        str.getClass();
        m7.zzk |= 16;
        m7.zzu = str;
    }

    public static void G(M6 m7, long j8) {
        m7.zzk |= 32;
        m7.zzv = j8;
    }

    public static void H(M6 m7, int i8) {
        m7.zzk |= 64;
        m7.zzw = i8;
    }

    public static J6 I() {
        return (J6) zzi.g();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzi, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\u001b\u0002င\u0000\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005\bင\u0006", new Object[]{"zzk", "zzl", I6.class, "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw"});
            case 3:
                return new M6();
            case 4:
                return new J6(zzi);
            case 5:
                return zzi;
            case 6:
                SH c1821pH = zzj;
                if (c1821pH == null) {
                    synchronized (M6.class) {
                        try {
                            c1821pH = zzj;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzj = c1821pH;
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
