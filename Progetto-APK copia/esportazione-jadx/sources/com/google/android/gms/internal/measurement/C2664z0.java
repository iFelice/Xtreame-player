package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.z0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2664z0 extends AbstractC2631s2 {
    private static final C2664z0 zzb;
    private int zzd;
    private int zze;
    private boolean zzg;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private InterfaceC2661y2 zzh = W2.f23030K;

    static {
        C2664z0 c2664z0 = new C2664z0();
        zzb = c2664z0;
        AbstractC2631s2.l(C2664z0.class, c2664z0);
    }

    public static C2664z0 s() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = 1;
        int i10 = i8 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new X2(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zzd", "zze", C2659y0.f23413a, "zzf", "zzg", "zzh"});
        }
        if (i10 == 3) {
            return new C2664z0();
        }
        if (i10 == 4) {
            return new C2634t0(i9);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }

    public final int q() {
        return this.zzh.size();
    }

    public final String t() {
        return this.zzf;
    }

    public final InterfaceC2661y2 u() {
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
        return (this.zzd & 1) != 0;
    }

    public final int z() {
        int i8;
        switch (this.zze) {
            case 0:
                i8 = 1;
                break;
            case 1:
                i8 = 2;
                break;
            case 2:
                i8 = 3;
                break;
            case 3:
                i8 = 4;
                break;
            case 4:
                i8 = 5;
                break;
            case 5:
                i8 = 6;
                break;
            case 6:
                i8 = 7;
                break;
            default:
                i8 = 0;
                break;
        }
        if (i8 == 0) {
            return 1;
        }
        return i8;
    }
}
