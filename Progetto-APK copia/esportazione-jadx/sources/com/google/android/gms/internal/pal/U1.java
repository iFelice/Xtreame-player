package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class U1 extends D {
    private static final U1 zzb;
    private int zze;
    private long zzg;
    private long zzk;
    private long zzl;
    private long zzn;
    private int zzr;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzj = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzm = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzo = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzp = HttpUrl.FRAGMENT_ENCODE_SET;
    private I zzq = C2733i0.f23843J;

    static {
        U1 u7 = new U1();
        zzb = u7;
        D.f(U1.class, u7);
    }

    public static U0 m() {
        return (U0) zzb.h();
    }

    public static /* synthetic */ void n(U1 u7, long j8) {
        u7.zze |= 2;
        u7.zzg = j8;
    }

    public static /* synthetic */ void o(U1 u7, String str) {
        str.getClass();
        u7.zze |= 4;
        u7.zzh = str;
    }

    public static /* synthetic */ void p(U1 u7, String str) {
        u7.zze |= 8;
        u7.zzi = str;
    }

    public static /* synthetic */ void q(U1 u7, String str) {
        u7.zze |= 16;
        u7.zzj = str;
    }

    public static /* synthetic */ void r(U1 u7, String str) {
        str.getClass();
        u7.zze |= 1;
        u7.zzf = str;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", C2813s1.class, "zzr", E1.f23496a});
        }
        if (i9 == 3) {
            return new U1();
        }
        if (i9 == 4) {
            return new U0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
