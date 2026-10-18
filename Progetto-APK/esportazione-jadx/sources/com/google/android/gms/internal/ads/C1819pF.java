package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1819pF extends AbstractC1873qH {
    private static final C1819pF zza;
    private static volatile SH zzb;
    private int zzc;

    static {
        C1819pF c1819pF = new C1819pF();
        zza = c1819pF;
        AbstractC1873qH.t(C1819pF.class, c1819pF);
    }

    public static C1767oF B() {
        return (C1767oF) zza.g();
    }

    public static C1819pF C() {
        return zza;
    }

    public final int A() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
            case 3:
                return new C1819pF();
            case 4:
                return new C1767oF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1819pF.class) {
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
