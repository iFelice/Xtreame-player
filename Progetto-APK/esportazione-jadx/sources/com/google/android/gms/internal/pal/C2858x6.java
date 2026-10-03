package com.google.android.gms.internal.pal;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.x6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2858x6 extends D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f24070a = 0;
    private static final C2858x6 zzb;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private I zzf = C2733i0.f23843J;

    static {
        C2858x6 c2858x6 = new C2858x6();
        zzb = c2858x6;
        D.f(C2858x6.class, c2858x6);
    }

    public static C2858x6 m() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new C2741j0(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zze", "zzf", C2731h6.class});
        }
        if (i9 == 3) {
            return new C2858x6();
        }
        if (i9 == 4) {
            return new C2860y0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }

    public final I n() {
        return this.zzf;
    }
}
