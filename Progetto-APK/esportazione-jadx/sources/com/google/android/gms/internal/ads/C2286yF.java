package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2286yF extends AbstractC1873qH {
    private static final C2286yF zza;
    private static volatile SH zzb;
    private int zzc;
    private AF zzd;
    private int zze;

    static {
        C2286yF c2286yF = new C2286yF();
        zza = c2286yF;
        AbstractC1873qH.t(C2286yF.class, c2286yF);
    }

    public static C2234xF B() {
        return (C2234xF) zza.g();
    }

    public static C2286yF C() {
        return zza;
    }

    public static /* synthetic */ void E(C2286yF c2286yF, AF af) {
        c2286yF.zzd = af;
        c2286yF.zzc |= 1;
    }

    public final int A() {
        return this.zze;
    }

    public final AF D() {
        AF af = this.zzd;
        return af == null ? AF.C() : af;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
            case 3:
                return new C2286yF();
            case 4:
                return new C2234xF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C2286yF.class) {
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
