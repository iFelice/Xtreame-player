package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class W0 extends AbstractC2457i2 {
    private static final W0 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private byte zzh = 2;

    static {
        W0 w7 = new W0();
        zzb = w7;
        AbstractC2457i2.e(W0.class, w7);
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001ᴌ\u0000\u0002င\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", Z.f22571c, "zzf", "zzg", C2439e0.f22729a});
        }
        if (i10 == 3) {
            return new W0();
        }
        if (i10 == 4) {
            return new U(23, i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        this.zzh = abstractC2457i2 == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
