package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2459j0 extends AbstractC2457i2 {
    private static final C2459j0 zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private int zzg;
    private boolean zzh;
    private InterfaceC2477n2 zzi;
    private InterfaceC2477n2 zzj;
    private String zzk;

    static {
        C2459j0 c2459j0 = new C2459j0();
        zzb = c2459j0;
        AbstractC2457i2.e(C2459j0.class, c2459j0);
    }

    public C2459j0() {
        K2 k8 = K2.f22483J;
        this.zzi = k8;
        this.zzj = k8;
        this.zzk = HttpUrl.FRAGMENT_ENCODE_SET;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 0;
        int i10 = 4;
        int i11 = i8 - 1;
        if (i11 == 0) {
            return (byte) 1;
        }
        if (i11 == 2) {
            return new L2(zzb, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002\u0004ဇ\u0003\u0007\u001b\b\u001b\tဈ\u0004", new Object[]{"zzd", "zze", C2517y.f22832Q, "zzf", "zzg", C2517y.f22846e0, "zzh", "zzi", C2440e1.class, "zzj", C2440e1.class, "zzk"});
        }
        if (i11 == 3) {
            return new C2459j0();
        }
        if (i11 == 4) {
            return new U(i10, i9);
        }
        if (i11 != 5) {
            return null;
        }
        return zzb;
    }
}
