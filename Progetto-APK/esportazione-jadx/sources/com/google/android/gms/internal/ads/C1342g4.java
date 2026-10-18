package com.google.android.gms.internal.ads;

import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1342g4 extends AbstractC1873qH {
    private static final C1342g4 zza;
    private static volatile SH zzb;
    private int zzc;
    private long zzw;
    private long zzx;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private int zzj = 1000;
    private long zzk = -1;
    private long zzl = -1;
    private long zzm = -1;
    private int zzn = 1000;
    private long zzo = -1;
    private long zzp = -1;
    private long zzu = -1;
    private long zzv = -1;
    private long zzy = -1;
    private long zzz = -1;
    private long zzA = -1;
    private long zzB = -1;

    static {
        C1342g4 c1342g4 = new C1342g4();
        zza = c1342g4;
        AbstractC1873qH.t(C1342g4.class, c1342g4);
    }

    public static C1290f4 A() {
        return (C1290f4) zza.g();
    }

    public static /* synthetic */ void B(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 1;
        c1342g4.zzd = j8;
    }

    public static /* synthetic */ void C(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 2;
        c1342g4.zze = j8;
    }

    public static /* synthetic */ void D(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 4;
        c1342g4.zzf = j8;
    }

    public static /* synthetic */ void E(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 8;
        c1342g4.zzg = j8;
    }

    public static /* synthetic */ void F(C1342g4 c1342g4) {
        c1342g4.zzc &= -9;
        c1342g4.zzg = -1L;
    }

    public static /* synthetic */ void G(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 16;
        c1342g4.zzh = j8;
    }

    public static /* synthetic */ void H(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 32;
        c1342g4.zzi = j8;
    }

    public static /* synthetic */ void I(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 128;
        c1342g4.zzk = j8;
    }

    public static /* synthetic */ void J(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 256;
        c1342g4.zzl = j8;
    }

    public static /* synthetic */ void K(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= IMediaList.Event.ItemAdded;
        c1342g4.zzm = j8;
    }

    public static /* synthetic */ void L(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 2048;
        c1342g4.zzo = j8;
    }

    public static /* synthetic */ void M(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 4096;
        c1342g4.zzp = j8;
    }

    public static /* synthetic */ void N(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 8192;
        c1342g4.zzu = j8;
    }

    public static /* synthetic */ void O(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= Http2.INITIAL_MAX_FRAME_SIZE;
        c1342g4.zzv = j8;
    }

    public static /* synthetic */ void P(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 32768;
        c1342g4.zzw = j8;
    }

    public static /* synthetic */ void Q(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 65536;
        c1342g4.zzx = j8;
    }

    public static /* synthetic */ void R(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 131072;
        c1342g4.zzy = j8;
    }

    public static /* synthetic */ void S(C1342g4 c1342g4, long j8) {
        c1342g4.zzc |= 262144;
        c1342g4.zzz = j8;
    }

    public static /* synthetic */ void T(C1342g4 c1342g4, int i8) {
        c1342g4.zzj = i8 - 1;
        c1342g4.zzc |= 64;
    }

    public static /* synthetic */ void U(C1342g4 c1342g4, int i8) {
        c1342g4.zzn = i8 - 1;
        c1342g4.zzc |= 1024;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1873qH
    public final Object x(int i8, AbstractC1873qH abstractC1873qH) {
        switch (p156u.h.b(i8)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                C1756o4 c1756o4 = C1756o4.f20231a;
                return new XH(zza, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007᠌\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000b᠌\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", c1756o4, "zzk", "zzl", "zzm", "zzn", c1756o4, "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB"});
            case 3:
                return new C1342g4();
            case 4:
                return new C1290f4(zza);
            case 5:
                return zza;
            case 6:
                SH c1821pH = zzb;
                if (c1821pH == null) {
                    synchronized (C1342g4.class) {
                        try {
                            c1821pH = zzb;
                            if (c1821pH == null) {
                                c1821pH = new C1821pH();
                                zzb = c1821pH;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                }
                return c1821pH;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
