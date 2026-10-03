package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1458iG extends AbstractC1873qH {
    private static final C1458iG zza;
    private static volatile SH zzb;
    private int zzc;
    private C1147cG zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        C1458iG c1458iG = new C1458iG();
        zza = c1458iG;
        AbstractC1873qH.t(C1458iG.class, c1458iG);
    }

    public static C1406hG C() {
        return (C1406hG) zza.g();
    }

    public static /* synthetic */ void E(C1458iG c1458iG, C1147cG c1147cG) {
        c1458iG.zzd = c1147cG;
        c1458iG.zzc |= 1;
    }

    public static void J(C1458iG c1458iG, int i8) {
        if (i8 == 1) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        c1458iG.zze = i8 - 2;
    }

    public final int A() {
        return this.zzf;
    }

    public final C1147cG B() {
        C1147cG c1147cG = this.zzd;
        return c1147cG == null ? C1147cG.C() : c1147cG;
    }

    public final EnumC2235xG D() {
        EnumC2235xG enumC2235xGA = EnumC2235xG.a(this.zzg);
        return enumC2235xGA == null ? EnumC2235xG.UNRECOGNIZED : enumC2235xGA;
    }

    public final boolean H() {
        return (this.zzc & 1) != 0;
    }

    public final int I() {
        int i8 = this.zze;
        int i9 = 2;
        if (i8 != 0) {
            if (i8 == 1) {
                i9 = 3;
            } else if (i8 != 2) {
                i9 = i8 != 3 ? 0 : 5;
            } else {
                i9 = 4;
            }
        }
        if (i9 == 0) {
            return 1;
        }
        return i9;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
            case 3:
                return new C1458iG();
            case 4:
                return new C1406hG(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1458iG.class) {
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
