package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1334fx extends AbstractC1873qH {
    private static final C1334fx zza;
    private static volatile SH zzb;
    private InterfaceC2236xH zzc = WH.f17195J;

    static {
        C1334fx c1334fx = new C1334fx();
        zza = c1334fx;
        AbstractC1873qH.t(C1334fx.class, c1334fx);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", C1282ex.class});
            case 3:
                return new C1334fx();
            case 4:
                return new C1966s7(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1334fx.class) {
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
