package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.m4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1652m4 extends AbstractC1873qH {
    private static final C1652m4 zza;
    private static volatile SH zzb;
    private int zzc;
    private XG zzd;
    private XG zze;
    private XG zzf;
    private XG zzg;

    static {
        C1652m4 c1652m4 = new C1652m4();
        zza = c1652m4;
        AbstractC1873qH.t(C1652m4.class, c1652m4);
    }

    public C1652m4() {
        VG vg = XG.f17401H;
        this.zzd = vg;
        this.zze = vg;
        this.zzf = vg;
        this.zzg = vg;
    }

    public static C1600l4 A() {
        return (C1600l4) zza.g();
    }

    public static C1652m4 B(byte[] bArr, C1509jH c1509jH) throws AH {
        AbstractC1873qH abstractC1873qHZ = AbstractC1873qH.z(zza, bArr, bArr.length, c1509jH);
        AbstractC1873qH.y(abstractC1873qHZ);
        return (C1652m4) abstractC1873qHZ;
    }

    public static /* synthetic */ void G(C1652m4 c1652m4, VG vg) {
        c1652m4.zzc |= 1;
        c1652m4.zzd = vg;
    }

    public static /* synthetic */ void H(C1652m4 c1652m4, VG vg) {
        c1652m4.zzc |= 2;
        c1652m4.zze = vg;
    }

    public static /* synthetic */ void I(C1652m4 c1652m4, VG vg) {
        c1652m4.zzc |= 4;
        c1652m4.zzf = vg;
    }

    public static /* synthetic */ void J(C1652m4 c1652m4, VG vg) {
        c1652m4.zzc |= 8;
        c1652m4.zzg = vg;
    }

    public final XG C() {
        return this.zzd;
    }

    public final XG D() {
        return this.zze;
    }

    public final XG E() {
        return this.zzg;
    }

    public final XG F() {
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
                return new XH(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
            case 3:
                return new C1652m4();
            case 4:
                return new C1600l4(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1652m4.class) {
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
