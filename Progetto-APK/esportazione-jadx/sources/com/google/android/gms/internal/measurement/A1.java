package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class A1 extends AbstractC2631s2 {
    private static final A1 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2661y2 zzf = W2.f23030K;

    static {
        A1 a8 = new A1();
        zzb = a8;
        AbstractC2631s2.l(A1.class, a8);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zzd", "zze", "zzf", D1.class});
        }
        if (i9 == 3) {
            return new A1();
        }
        AbstractC2090uc abstractC2090uc = null;
        if (i9 == 4) {
            return new C2634t0(15, abstractC2090uc);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final String r() {
        return this.zze;
    }

    public final InterfaceC2661y2 s() {
        return this.zzf;
    }
}
