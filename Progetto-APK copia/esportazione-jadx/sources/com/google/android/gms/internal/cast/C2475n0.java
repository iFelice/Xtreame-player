package com.google.android.gms.internal.cast;

import okhttp3.internal.http2.Http2;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2475n0 extends AbstractC2457i2 {
    private static final C2475n0 zzb;
    private int zzd;
    private K0 zze;
    private boolean zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private C2460j1 zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private int zzq;
    private int zzr;
    private boolean zzs;

    static {
        C2475n0 c2475n0 = new C2475n0();
        zzb = c2475n0;
        AbstractC2457i2.e(C2475n0.class, c2475n0);
    }

    public static C2471m0 l() {
        return (C2471m0) zzb.j();
    }

    public static C2471m0 m(C2475n0 c2475n0) {
        AbstractC2453h2 abstractC2453h2J = zzb.j();
        AbstractC2457i2 abstractC2457i2 = abstractC2453h2J.f22744G;
        if (!abstractC2457i2.equals(c2475n0)) {
            if (!abstractC2453h2J.f22745H.g()) {
                AbstractC2457i2 abstractC2457i3 = (AbstractC2457i2) abstractC2457i2.h(4, null);
                J2.f22476c.a(abstractC2457i3.getClass()).b(abstractC2457i3, abstractC2453h2J.f22745H);
                abstractC2453h2J.f22745H = abstractC2457i3;
            }
            AbstractC2457i2 abstractC2457i4 = abstractC2453h2J.f22745H;
            J2.f22476c.a(abstractC2457i4.getClass()).b(abstractC2457i4, c2475n0);
        }
        return (C2471m0) abstractC2453h2J;
    }

    public static C2475n0 n() {
        return zzb;
    }

    public static /* synthetic */ void o(C2475n0 c2475n0, K0 k8) {
        c2475n0.zze = k8;
        c2475n0.zzd |= 1;
    }

    public static /* synthetic */ void p(C2475n0 c2475n0, boolean z7) {
        c2475n0.zzd |= 2;
        c2475n0.zzf = z7;
    }

    public static /* synthetic */ void q(C2475n0 c2475n0, long j8) {
        c2475n0.zzd |= 4;
        c2475n0.zzg = j8;
    }

    public static /* synthetic */ void r(C2475n0 c2475n0, int i8) {
        c2475n0.zzd |= 64;
        c2475n0.zzk = i8;
    }

    public static /* synthetic */ void s(C2475n0 c2475n0, int i8) {
        c2475n0.zzd |= 128;
        c2475n0.zzl = i8;
    }

    public static /* synthetic */ void t(C2475n0 c2475n0, int i8) {
        c2475n0.zzd |= 1024;
        c2475n0.zzo = i8;
    }

    public static /* synthetic */ void u(C2475n0 c2475n0, boolean z7) {
        c2475n0.zzd |= 2048;
        c2475n0.zzp = z7;
    }

    public static /* synthetic */ void v(C2475n0 c2475n0, int i8) {
        c2475n0.zzd |= 4096;
        c2475n0.zzq = i8;
    }

    public static /* synthetic */ void w(C2475n0 c2475n0, int i8) {
        c2475n0.zzd |= 8192;
        c2475n0.zzr = i8;
    }

    public static /* synthetic */ void x(C2475n0 c2475n0, boolean z7) {
        c2475n0.zzd |= Http2.INITIAL_MAX_FRAME_SIZE;
        c2475n0.zzs = z7;
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2457i2
    public final Object h(int i8, AbstractC2457i2 abstractC2457i2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            return new L2(zzb, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဇ\u0001\u0003စ\u0002\u0004ဆ\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007င\u0006\bင\u0007\tဉ\b\n᠌\t\u000bင\n\fဇ\u000b\rင\f\u000eင\r\u000fဇ\u000e", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", C2517y.f22834S, "zzj", C2517y.f22833R, "zzk", "zzl", "zzm", "zzn", C2517y.f22847f0, "zzo", "zzp", "zzq", "zzr", "zzs"});
        }
        if (i9 == 3) {
            return new C2475n0();
        }
        if (i9 == 4) {
            return new C2471m0(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
