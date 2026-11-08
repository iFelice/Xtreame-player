package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2287yG extends AbstractC1873qH {
    public static final /* synthetic */ int zza = 0;
    private static final C2287yG zzb;
    private static volatile SH zzc;
    private String zzd = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2236xH zze = WH.f17195J;

    static {
        C2287yG c2287yG = new C2287yG();
        zzb = c2287yG;
        AbstractC1873qH.t(C2287yG.class, c2287yG);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", C1302fG.class});
            case 3:
                return new C2287yG();
            case 4:
                return new C1966s7(zzb);
            case 5:
                return zzb;
            case 6:
                SH c1821pH = zzc;
                if (c1821pH == null) {
                    synchronized (C2287yG.class) {
                        try {
                            c1821pH = zzc;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzc = c1821pH;
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
