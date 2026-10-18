package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class T3 extends AbstractC1873qH {
    private static final T3 zza;
    private static volatile SH zzb;
    private int zzc;
    private long zze;
    private long zzi;
    private long zzj;
    private long zzl;
    private int zzp;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzk = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzm = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzn = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2236xH zzo = WH.f17195J;

    static {
        T3 t7 = new T3();
        zza = t7;
        AbstractC1873qH.t(T3.class, t7);
    }

    public static P3 A() {
        return (P3) zza.g();
    }

    public static /* synthetic */ void B(T3 t7, long j8) {
        t7.zzc |= 2;
        t7.zze = j8;
    }

    public static /* synthetic */ void C(T3 t7, String str) {
        str.getClass();
        t7.zzc |= 4;
        t7.zzf = str;
    }

    public static /* synthetic */ void D(T3 t7, String str) {
        t7.zzc |= 8;
        t7.zzg = str;
    }

    public static /* synthetic */ void E(T3 t7, String str) {
        t7.zzc |= 16;
        t7.zzh = str;
    }

    public static /* synthetic */ void F(T3 t7, String str) {
        t7.zzc |= 1024;
        t7.zzn = str;
    }

    public static /* synthetic */ void G(T3 t7, String str) {
        str.getClass();
        t7.zzc |= 1;
        t7.zzd = str;
    }

    public static /* synthetic */ void H(T3 t7, int i8) {
        t7.zzp = i8 - 1;
        t7.zzc |= 2048;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\r᠌\u000b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", R3.class, "zzp", S3.f16403a});
            case 3:
                return new T3();
            case 4:
                return new P3(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (T3.class) {
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
