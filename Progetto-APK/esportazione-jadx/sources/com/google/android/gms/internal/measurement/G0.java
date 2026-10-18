package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class G0 extends AbstractC2631s2 {
    private static final G0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2661y2 zzf = W2.f23030K;
    private boolean zzg;

    static {
        G0 g8 = new G0();
        zzb = g8;
        AbstractC2631s2.l(G0.class, g8);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new X2(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zzd", "zze", "zzf", N0.class, "zzg"});
        }
        if (i10 == 3) {
            return new G0();
        }
        if (i10 == 4) {
            return new C2634t0(6, i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }

    public final String r() {
        return this.zze;
    }
}
