package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1150cJ extends AbstractC1873qH {
    private static final C1150cJ zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private XG zzf;
    private XG zzg;

    static {
        C1150cJ c1150cJ = new C1150cJ();
        zza = c1150cJ;
        AbstractC1873qH.t(C1150cJ.class, c1150cJ);
    }

    public C1150cJ() {
        VG vg = XG.f17401H;
        this.zzf = vg;
        this.zzg = vg;
    }

    public static C1047aJ A() {
        return (C1047aJ) zza.g();
    }

    public static /* synthetic */ void B(C1150cJ c1150cJ) {
        c1150cJ.zzc |= 2;
        c1150cJ.zze = "image/png";
    }

    public static /* synthetic */ void C(C1150cJ c1150cJ, XG xg) {
        xg.getClass();
        c1150cJ.zzc |= 4;
        c1150cJ.zzf = xg;
    }

    public static /* synthetic */ void D(C1150cJ c1150cJ) {
        c1150cJ.zzd = 1;
        c1150cJ.zzc = 1 | c1150cJ.zzc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", C1099bJ.f18035a, "zze", "zzf", "zzg"});
            case 3:
                return new C1150cJ();
            case 4:
                return new C1047aJ(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1150cJ.class) {
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
