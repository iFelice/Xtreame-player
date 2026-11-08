package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class ZF extends AbstractC1873qH {
    private static final ZF zza;
    private static volatile SH zzb;
    private int zzc;
    private int zzd;

    static {
        ZF zf = new ZF();
        zza = zf;
        AbstractC1873qH.t(ZF.class, zf);
    }

    public static YF C() {
        return (YF) zza.g();
    }

    public static ZF D() {
        return zza;
    }

    public final int A() {
        return this.zzd;
    }

    public final TF B() {
        TF tf;
        int i8 = this.zzc;
        if (i8 == 0) {
            tf = TF.UNKNOWN_HASH;
        } else if (i8 == 1) {
            tf = TF.SHA1;
        } else if (i8 == 2) {
            tf = TF.SHA384;
        } else if (i8 == 3) {
            tf = TF.SHA256;
        } else if (i8 != 4) {
            tf = i8 != 5 ? null : TF.SHA224;
        } else {
            tf = TF.SHA512;
        }
        return tf == null ? TF.UNRECOGNIZED : tf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new XH(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzc", "zzd"});
            case 3:
                return new ZF();
            case 4:
                return new YF(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (ZF.class) {
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
