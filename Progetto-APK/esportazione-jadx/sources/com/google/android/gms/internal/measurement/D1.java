package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class D1 extends AbstractC2631s2 {
    private static final D1 zzb;
    private int zzd;
    private int zze;
    private InterfaceC2661y2 zzf = W2.f23030K;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private boolean zzi;
    private double zzj;

    static {
        D1 d6 = new D1();
        zzb = d6;
        AbstractC2631s2.l(D1.class, d6);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zzd", "zze", C1.f22873a, "zzf", D1.class, "zzg", "zzh", "zzi", "zzj"});
        }
        if (i9 == 3) {
            return new D1();
        }
        AbstractC2090uc abstractC2090uc = null;
        if (i9 == 4) {
            return new C2634t0(17, abstractC2090uc);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final double q() {
        return this.zzj;
    }

    public final String s() {
        return this.zzg;
    }

    public final String t() {
        return this.zzh;
    }

    public final InterfaceC2661y2 u() {
        return this.zzf;
    }

    public final boolean v() {
        return this.zzi;
    }

    public final boolean w() {
        return (this.zzd & 8) != 0;
    }

    public final boolean x() {
        return (this.zzd & 16) != 0;
    }

    public final boolean y() {
        return (this.zzd & 4) != 0;
    }

    public final int z() {
        int i8;
        int i9 = this.zze;
        if (i9 != 0) {
            i8 = 2;
            if (i9 != 1) {
                if (i9 != 2) {
                    i8 = 4;
                    if (i9 != 3) {
                        i8 = i9 != 4 ? 0 : 5;
                    }
                } else {
                    i8 = 3;
                }
            }
        } else {
            i8 = 1;
        }
        if (i8 == 0) {
            return 1;
        }
        return i8;
    }
}
