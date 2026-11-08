package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2182wF extends AbstractC1873qH {
    private static final C2182wF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;
    private AF zze;
    private XG zzf = XG.f17401H;

    static {
        C2182wF c2182wF = new C2182wF();
        zza = c2182wF;
        AbstractC1873qH.t(C2182wF.class, c2182wF);
    }

    public static C2130vF B() {
        return (C2130vF) zza.g();
    }

    public static C2182wF C() {
        return zza;
    }

    public static /* synthetic */ void F(C2182wF c2182wF, AF af) {
        c2182wF.zze = af;
        c2182wF.zzc |= 1;
    }

    public final int A() {
        return this.zzd;
    }

    public final AF D() {
        AF af = this.zze;
        return af == null ? AF.C() : af;
    }

    public final XG E() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
            case 3:
                return new C2182wF();
            case 4:
                return new C2130vF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2182wF.class) {
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
