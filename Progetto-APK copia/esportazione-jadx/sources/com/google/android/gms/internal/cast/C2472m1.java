package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2472m1 extends AbstractC2457i2 {
    private static final C2472m1 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2477n2 zzf;
    private InterfaceC2477n2 zzg;
    private boolean zzh;

    static {
        C2472m1 c2472m1 = new C2472m1();
        zzb = c2472m1;
        AbstractC2457i2.e(C2472m1.class, c2472m1);
    }

    public C2472m1() {
        K2 k8 = K2.f22483J;
        this.zzf = k8;
        this.zzg = k8;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = 7;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new L2(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001", new Object[]{"zzd", "zze", "zzf", R0.class, "zzg", K0.class, "zzh"});
        }
        if (i10 == 3) {
            return new C2472m1();
        }
        if (i10 == 4) {
            return new C2436d1(i9);
        }
        if (i10 != 5) {
            return null;
        }
        return zzb;
    }
}
