package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class I0 extends AbstractC2631s2 {
    private static final I0 zzb;
    private int zzd;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private boolean zzf;
    private boolean zzg;
    private int zzh;

    static {
        I0 i8 = new I0();
        zzb = i8;
        AbstractC2631s2.l(I0.class, i8);
    }

    public static /* synthetic */ void s(I0 i8, String str) {
        str.getClass();
        i8.zzd |= 1;
        i8.zze = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i9 == 3) {
            return new I0();
        }
        if (i9 == 4) {
            return new H0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzh;
    }

    public final String r() {
        return this.zze;
    }

    public final boolean t() {
        return this.zzf;
    }

    public final boolean u() {
        return this.zzg;
    }

    public final boolean v() {
        return (this.zzd & 2) != 0;
    }

    public final boolean w() {
        return (this.zzd & 4) != 0;
    }

    public final boolean x() {
        return (this.zzd & 8) != 0;
    }
}
