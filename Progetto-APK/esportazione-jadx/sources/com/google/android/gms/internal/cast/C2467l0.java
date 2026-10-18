package com.google.android.gms.internal.cast;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2467l0 extends AbstractC2457i2 {
    private static final C2467l0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2467l0 c2467l0 = new C2467l0();
        zzb = c2467l0;
        AbstractC2457i2.e(C2467l0.class, c2467l0);
    }

    public static C2463k0 l() {
        return (C2463k0) zzb.j();
    }

    public static /* synthetic */ void m(C2467l0 c2467l0, String str) {
        str.getClass();
        c2467l0.zzd |= 1;
        c2467l0.zze = str;
    }

    public static /* synthetic */ void n(C2467l0 c2467l0, String str) {
        str.getClass();
        c2467l0.zzd |= 2;
        c2467l0.zzf = str;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i9 == 3) {
            return new C2467l0();
        }
        if (i9 == 4) {
            return new C2463k0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
