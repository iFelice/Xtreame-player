package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.RandomAccess;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.py, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1853py extends AbstractC1873qH {
    private static final C1853py zza;
    private static volatile SH zzb;
    private int zzc;
    private InterfaceC2080uH zzd = C1924rH.f20709J;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C1853py c1853py = new C1853py();
        zza = c1853py;
        AbstractC1873qH.t(C1853py.class, c1853py);
    }

    public static C1801oy A() {
        return (C1801oy) zza.g();
    }

    public static /* synthetic */ void B(C1853py c1853py, String str) {
        str.getClass();
        c1853py.zzc |= 1;
        c1853py.zze = str;
    }

    public static void C(C1853py c1853py) {
        RandomAccess randomAccess = c1853py.zzd;
        if (!((QG) randomAccess).f16004G) {
            C1924rH c1924rH = (C1924rH) randomAccess;
            int i8 = c1924rH.f20711I;
            int i9 = i8 == 0 ? 10 : i8 + i8;
            if (i9 < i8) {
                throw new IllegalArgumentException();
            }
            c1853py.zzd = new C1924rH(Arrays.copyOf(c1924rH.f20710H, i9), c1924rH.f20711I, true);
        }
        ((C1924rH) c1853py.zzd).i(2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ࠞ\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzc", "zzd", C1749ny.f20215a, "zze", "zzf", "zzg"});
            case 3:
                return new C1853py();
            case 4:
                return new C1801oy(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1853py.class) {
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
