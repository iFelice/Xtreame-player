package com.google.android.gms.internal.pal;

import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2811s extends D {
    private static final C2811s zzb;
    private int zze;
    private long zzu;
    private long zzv;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private long zzk = -1;
    private int zzl = 1000;
    private long zzm = -1;
    private long zzn = -1;
    private long zzo = -1;
    private int zzp = 1000;
    private long zzq = -1;
    private long zzr = -1;
    private long zzs = -1;
    private long zzt = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;
    private long zzz = -1;

    static {
        C2811s c2811s = new C2811s();
        zzb = c2811s;
        D.f(C2811s.class, c2811s);
    }

    public static /* synthetic */ void A(C2811s c2811s, long j8) {
        c2811s.zze |= Http2.INITIAL_MAX_FRAME_SIZE;
        c2811s.zzt = j8;
    }

    public static /* synthetic */ void B(C2811s c2811s, long j8) {
        c2811s.zze |= 32768;
        c2811s.zzu = j8;
    }

    public static /* synthetic */ void C(C2811s c2811s, long j8) {
        c2811s.zze |= 65536;
        c2811s.zzv = j8;
    }

    public static /* synthetic */ void D(C2811s c2811s, long j8) {
        c2811s.zze |= 131072;
        c2811s.zzw = j8;
    }

    public static /* synthetic */ void E(C2811s c2811s, long j8) {
        c2811s.zze |= 262144;
        c2811s.zzx = j8;
    }

    public static /* synthetic */ void F(C2811s c2811s, int i8) {
        c2811s.zzl = i8 - 1;
        c2811s.zze |= 64;
    }

    public static /* synthetic */ void G(C2811s c2811s, int i8) {
        c2811s.zzp = i8 - 1;
        c2811s.zze |= 1024;
    }

    public static C2692d m() {
        return (C2692d) zzb.h();
    }

    public static /* synthetic */ void n(C2811s c2811s, long j8) {
        c2811s.zze |= 1;
        c2811s.zzf = j8;
    }

    public static /* synthetic */ void o(C2811s c2811s, long j8) {
        c2811s.zze |= 2;
        c2811s.zzg = j8;
    }

    public static /* synthetic */ void p(C2811s c2811s, long j8) {
        c2811s.zze |= 4;
        c2811s.zzh = j8;
    }

    public static /* synthetic */ void q(C2811s c2811s, long j8) {
        c2811s.zze |= 8;
        c2811s.zzi = j8;
    }

    public static /* synthetic */ void r(C2811s c2811s) {
        c2811s.zze &= -9;
        c2811s.zzi = -1L;
    }

    public static /* synthetic */ void s(C2811s c2811s, long j8) {
        c2811s.zze |= 16;
        c2811s.zzj = j8;
    }

    public static /* synthetic */ void t(C2811s c2811s, long j8) {
        c2811s.zze |= 32;
        c2811s.zzk = j8;
    }

    public static /* synthetic */ void u(C2811s c2811s, long j8) {
        c2811s.zze |= 128;
        c2811s.zzm = j8;
    }

    public static /* synthetic */ void v(C2811s c2811s, long j8) {
        c2811s.zze |= 256;
        c2811s.zzn = j8;
    }

    public static /* synthetic */ void w(C2811s c2811s, long j8) {
        c2811s.zze |= IMediaList.Event.ItemAdded;
        c2811s.zzo = j8;
    }

    public static /* synthetic */ void x(C2811s c2811s, long j8) {
        c2811s.zze |= 2048;
        c2811s.zzq = j8;
    }

    public static /* synthetic */ void y(C2811s c2811s, long j8) {
        c2811s.zze |= 4096;
        c2811s.zzr = j8;
    }

    public static /* synthetic */ void z(C2811s c2811s, long j8) {
        c2811s.zze |= 8192;
        c2811s.zzs = j8;
    }

    @Override // com.google.android.gms.internal.pal.D
    public final Object l(int i8) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            K0 k8 = K0.f23575a;
            return new C2741j0(zzb, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဌ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဌ\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", k8, "zzm", "zzn", "zzo", "zzp", k8, "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz"});
        }
        if (i9 == 3) {
            return new C2811s();
        }
        if (i9 == 4) {
            return new C2692d(zzb);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
