package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2644v0 extends AbstractC2631s2 {
    private static final C2644v0 zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzh = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        C2644v0 c2644v0 = new C2644v0();
        zzb = c2644v0;
        AbstractC2631s2.l(C2644v0.class, c2644v0);
    }

    public static C2644v0 r() {
        return zzb;
    }

    public final boolean A() {
        return (this.zzd & 8) != 0;
    }

    public final int B() {
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

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 0;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new X2(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzd", "zze", C2639u0.f23264a, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i10 == 3) {
            return new C2644v0();
        }
        if (i10 == 4) {
            return new C2634t0(i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }

    public final String s() {
        return this.zzg;
    }

    public final String t() {
        return this.zzi;
    }

    public final String u() {
        return this.zzh;
    }

    public final boolean v() {
        return this.zzf;
    }

    public final boolean w() {
        return (this.zzd & 1) != 0;
    }

    public final boolean x() {
        return (this.zzd & 4) != 0;
    }

    public final boolean y() {
        return (this.zzd & 2) != 0;
    }

    public final boolean z() {
        return (this.zzd & 16) != 0;
    }
}
