package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.h6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2731h6 extends D {
    private static final C2731h6 zzb;
    private int zzg;
    private boolean zzh;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2731h6 c2731h6 = new C2731h6();
        zzb = c2731h6;
        D.f(C2731h6.class, c2731h6);
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i9 == 3) {
            return new C2731h6();
        }
        if (i9 == 4) {
            return new C2860y0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final String m() {
        return this.zzi;
    }

    public final String n() {
        return this.zze;
    }

    public final String o() {
        return this.zzf;
    }
}
