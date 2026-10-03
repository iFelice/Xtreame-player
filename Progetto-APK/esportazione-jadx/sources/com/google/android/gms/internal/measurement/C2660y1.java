package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2660y1 extends AbstractC2631s2 {
    private static final C2660y1 zzb;
    private int zzd;
    private long zze;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private long zzh;
    private float zzi;
    private double zzj;

    static {
        C2660y1 c2660y1 = new C2660y1();
        zzb = c2660y1;
        AbstractC2631s2.l(C2660y1.class, c2660y1);
    }

    public static /* synthetic */ void A(C2660y1 c2660y1, double d6) {
        c2660y1.zzd |= 32;
        c2660y1.zzj = d6;
    }

    public static /* synthetic */ void B(C2660y1 c2660y1, long j8) {
        c2660y1.zzd |= 8;
        c2660y1.zzh = j8;
    }

    public static /* synthetic */ void C(C2660y1 c2660y1, String str) {
        str.getClass();
        c2660y1.zzd |= 2;
        c2660y1.zzf = str;
    }

    public static /* synthetic */ void D(C2660y1 c2660y1, long j8) {
        c2660y1.zzd |= 1;
        c2660y1.zze = j8;
    }

    public static /* synthetic */ void E(C2660y1 c2660y1, String str) {
        str.getClass();
        c2660y1.zzd |= 4;
        c2660y1.zzg = str;
    }

    public static C2655x1 u() {
        return (C2655x1) zzb.f();
    }

    public static /* synthetic */ void x(C2660y1 c2660y1) {
        c2660y1.zzd &= -33;
        c2660y1.zzj = 0.0d;
    }

    public static /* synthetic */ void y(C2660y1 c2660y1) {
        c2660y1.zzd &= -9;
        c2660y1.zzh = 0L;
    }

    public static /* synthetic */ void z(C2660y1 c2660y1) {
        c2660y1.zzd &= -5;
        c2660y1.zzg = zzb.zzg;
    }

    public final boolean F() {
        return (this.zzd & 32) != 0;
    }

    public final boolean G() {
        return (this.zzd & 16) != 0;
    }

    public final boolean H() {
        return (this.zzd & 8) != 0;
    }

    public final boolean I() {
        return (this.zzd & 1) != 0;
    }

    public final boolean J() {
        return (this.zzd & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        if (i9 == 3) {
            return new C2660y1();
        }
        if (i9 == 4) {
            return new C2655x1(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final double q() {
        return this.zzj;
    }

    public final float r() {
        return this.zzi;
    }

    public final long s() {
        return this.zzh;
    }

    public final long t() {
        return this.zze;
    }

    public final String v() {
        return this.zzf;
    }

    public final String w() {
        return this.zzg;
    }
}
