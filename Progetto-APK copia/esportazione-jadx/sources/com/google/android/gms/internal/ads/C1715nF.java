package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1715nF extends AbstractC1873qH {
    private static final C1715nF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private C1819pF zze;

    static {
        C1715nF c1715nF = new C1715nF();
        zza = c1715nF;
        AbstractC1873qH.t(C1715nF.class, c1715nF);
    }

    public static C1663mF B() {
        return (C1663mF) zza.g();
    }

    public static C1715nF C(XG xg, C1509jH c1509jH) {
        return (C1715nF) AbstractC1873qH.r(zza, xg, c1509jH);
    }

    public static /* synthetic */ void F(C1715nF c1715nF, C1819pF c1819pF) {
        c1715nF.zze = c1819pF;
        c1715nF.zzc |= 1;
    }

    public final int A() {
        return this.zzd;
    }

    public final C1819pF D() {
        C1819pF c1819pF = this.zze;
        return c1819pF == null ? C1819pF.C() : c1819pF;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C1715nF();
            case 4:
                return new C1663mF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1715nF.class) {
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
