package com.google.ads.interactivemedia.v3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzce extends zzady implements zzafc {
    private static final zzce zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        zzce zzceVar = new zzce();
        zzb = zzceVar;
        zzady.zzaM(zzce.class, zzceVar);
    }

    private zzce() {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return zzady.zzaJ(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i9 == 3) {
            return new zzce();
        }
        zzcc zzccVar = null;
        if (i9 == 4) {
            return new zzcd(zzccVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
