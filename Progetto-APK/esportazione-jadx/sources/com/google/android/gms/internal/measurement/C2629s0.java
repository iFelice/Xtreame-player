package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2629s0 extends AbstractC2631s2 {
    private static final C2629s0 zzb;
    private int zzd;
    private C2664z0 zze;
    private C2644v0 zzf;
    private boolean zzg;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2629s0 c2629s0 = new C2629s0();
        zzb = c2629s0;
        AbstractC2631s2.l(C2629s0.class, c2629s0);
    }

    public static C2629s0 q() {
        return zzb;
    }

    public static /* synthetic */ void u(C2629s0 c2629s0, String str) {
        c2629s0.zzd |= 8;
        c2629s0.zzh = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new C2629s0();
        }
        if (i9 == 4) {
            return new C2624r0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final C2644v0 r() {
        C2644v0 c2644v0 = this.zzf;
        return c2644v0 == null ? C2644v0.r() : c2644v0;
    }

    public final C2664z0 s() {
        C2664z0 c2664z0 = this.zze;
        return c2664z0 == null ? C2664z0.s() : c2664z0;
    }

    public final String t() {
        return this.zzh;
    }

    public final boolean v() {
        return this.zzg;
    }

    public final boolean w() {
        return (this.zzd & 4) != 0;
    }

    public final boolean x() {
        return (this.zzd & 2) != 0;
    }

    public final boolean y() {
        return (this.zzd & 8) != 0;
    }

    public final boolean z() {
        return (this.zzd & 1) != 0;
    }
}
