package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2186wJ extends AbstractC1873qH {
    private static final C2186wJ zza;
    private static volatile SH zzb;
    private int zzc;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private int zzf = 4;
    private InterfaceC2236xH zzg;
    private String zzh;
    private String zzi;
    private boolean zzj;
    private double zzk;
    private InterfaceC2236xH zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzu;

    static {
        C2186wJ c2186wJ = new C2186wJ();
        zza = c2186wJ;
        AbstractC1873qH.t(C2186wJ.class, c2186wJ);
    }

    public C2186wJ() {
        WH wh = WH.f17195J;
        this.zzg = wh;
        this.zzh = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzi = HttpUrl.FRAGMENT_ENCODE_SET;
        this.zzl = wh;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        int i9 = 1;
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0002\u0003\u001a\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007က\u0006\b\u001b\tဈ\u0001\n᠌\u0007\u000bဇ\b\fဇ\t\rဇ\n\u000eဇ\u000b", new Object[]{"zzc", "zzd", "zzf", C2134vJ.f21462a, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", C2082uJ.class, "zze", "zzm", C2030tJ.f21055a, "zzn", "zzo", "zzp", "zzu"});
            case 3:
                return new C2186wJ();
            case 4:
                return new C1926rJ(i9);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2186wJ.class) {
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
