package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1357gJ extends AbstractC1873qH {
    private static final C1357gJ zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private OI zzf;
    private QI zzg;
    private int zzh;
    private int zzk;
    private byte zzm = 2;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2080uH zzi = C1924rH.f20709J;
    private String zzj = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2236xH zzl = WH.f17195J;

    static {
        C1357gJ c1357gJ = new C1357gJ();
        zza = c1357gJ;
        AbstractC1873qH.t(C1357gJ.class, c1357gJ);
    }

    public static C1305fJ B() {
        return (C1305fJ) zza.g();
    }

    public static /* synthetic */ void D(C1357gJ c1357gJ, int i8) {
        c1357gJ.zzc |= 1;
        c1357gJ.zzd = i8;
    }

    public static /* synthetic */ void E(C1357gJ c1357gJ, String str) {
        str.getClass();
        c1357gJ.zzc |= 2;
        c1357gJ.zze = str;
    }

    public static /* synthetic */ void F(C1357gJ c1357gJ, OI oi) {
        c1357gJ.zzf = oi;
        c1357gJ.zzc |= 4;
    }

    public static void G(C1357gJ c1357gJ, String str) {
        str.getClass();
        InterfaceC2236xH interfaceC2236xH = c1357gJ.zzl;
        if (!((QG) interfaceC2236xH).f16004G) {
            c1357gJ.zzl = AbstractC1873qH.h(interfaceC2236xH);
        }
        c1357gJ.zzl.add(str);
    }

    public static /* synthetic */ void H(C1357gJ c1357gJ, int i8) {
        c1357gJ.zzk = i8 - 1;
        c1357gJ.zzc |= 64;
    }

    public final int A() {
        return this.zzl.size();
    }

    public final String C() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return Byte.valueOf(this.zzm);
            case 1:
                this.zzm = abstractC1873qH == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new XH(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", C1253eJ.f18501a, "zzl"});
            case 3:
                return new C1357gJ();
            case 4:
                return new C1305fJ(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1357gJ.class) {
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
