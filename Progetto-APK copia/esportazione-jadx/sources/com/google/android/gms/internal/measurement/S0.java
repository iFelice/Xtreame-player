package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class S0 extends AbstractC2631s2 {
    private static final S0 zzb;
    private int zzd;
    private long zzh;
    private long zzl;
    private String zze = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzf = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzg = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzi = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzj = HttpUrl.FRAGMENT_ENCODE_SET;
    private String zzk = HttpUrl.FRAGMENT_ENCODE_SET;

    static {
        S0 s7 = new S0();
        zzb = s7;
        AbstractC2631s2.l(S0.class, s7);
    }

    public static R0 A() {
        return (R0) zzb.f();
    }

    public static S0 B() {
        return zzb;
    }

    public static /* synthetic */ void I(S0 s7) {
        s7.zzd &= -5;
        s7.zzg = zzb.zzg;
    }

    public static /* synthetic */ void J(S0 s7) {
        s7.zzd &= -3;
        s7.zzf = zzb.zzf;
    }

    public static /* synthetic */ void K(S0 s7) {
        s7.zzd &= -2;
        s7.zze = zzb.zze;
    }

    public static /* synthetic */ void L(S0 s7) {
        s7.zzd &= -65;
        s7.zzk = zzb.zzk;
    }

    public static /* synthetic */ void M(S0 s7) {
        s7.zzd &= -33;
        s7.zzj = zzb.zzj;
    }

    public static /* synthetic */ void N(S0 s7) {
        s7.zzd &= -17;
        s7.zzi = zzb.zzi;
    }

    public static /* synthetic */ void O(S0 s7, String str) {
        s7.zzd |= 4;
        s7.zzg = str;
    }

    public static /* synthetic */ void P(S0 s7, String str) {
        s7.zzd |= 2;
        s7.zzf = str;
    }

    public static /* synthetic */ void Q(S0 s7, String str) {
        s7.zzd |= 1;
        s7.zze = str;
    }

    public static /* synthetic */ void R(S0 s7, long j8) {
        s7.zzd |= 8;
        s7.zzh = j8;
    }

    public static /* synthetic */ void S(S0 s7, long j8) {
        s7.zzd |= 128;
        s7.zzl = j8;
    }

    public static /* synthetic */ void T(S0 s7, String str) {
        s7.zzd |= 64;
        s7.zzk = str;
    }

    public static /* synthetic */ void U(S0 s7, String str) {
        s7.zzd |= 32;
        s7.zzj = str;
    }

    public static /* synthetic */ void V(S0 s7, String str) {
        s7.zzd |= 16;
        s7.zzi = str;
    }

    public final String C() {
        return this.zzg;
    }

    public final String D() {
        return this.zzf;
    }

    public final String E() {
        return this.zze;
    }

    public final String F() {
        return this.zzk;
    }

    public final String G() {
        return this.zzj;
    }

    public final String H() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2631s2
    public final Object p(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new X2(zzb, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဂ\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        if (i9 == 3) {
            return new S0();
        }
        if (i9 == 4) {
            return new R0(zzb);
        }
        if (i9 == 5) {
            return zzb;
        }
        throw null;
    }

    public final boolean q() {
        return (this.zzd & 4) != 0;
    }

    public final boolean r() {
        return (this.zzd & 2) != 0;
    }

    public final boolean s() {
        return (this.zzd & 1) != 0;
    }

    public final boolean t() {
        return (this.zzd & 8) != 0;
    }

    public final boolean u() {
        return (this.zzd & 128) != 0;
    }

    public final boolean v() {
        return (this.zzd & 64) != 0;
    }

    public final boolean w() {
        return (this.zzd & 32) != 0;
    }

    public final boolean x() {
        return (this.zzd & 16) != 0;
    }

    public final long y() {
        return this.zzh;
    }

    public final long z() {
        return this.zzl;
    }
}
