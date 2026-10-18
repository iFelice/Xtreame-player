package com.google.ads.interactivemedia.v3.internal;

import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class zzbl extends zzady implements zzafc {
    private static final zzbl zzb;
    private int zzd;
    private long zzt;
    private long zzu;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;
    private long zzj = -1;
    private int zzk = 1000;
    private long zzl = -1;
    private long zzm = -1;
    private long zzn = -1;
    private int zzo = 1000;
    private long zzp = -1;
    private long zzq = -1;
    private long zzr = -1;
    private long zzs = -1;
    private long zzv = -1;
    private long zzw = -1;
    private long zzx = -1;
    private long zzy = -1;

    static {
        zzbl zzblVar = new zzbl();
        zzb = zzblVar;
        zzady.zzaM(zzbl.class, zzblVar);
    }

    private zzbl() {
    }

    public static zzbk zza() {
        return (zzbk) zzb.zzay();
    }

    public static /* synthetic */ void zzc(zzbl zzblVar) {
        zzblVar.zzd &= -9;
        zzblVar.zzh = -1L;
    }

    public static /* synthetic */ void zzd(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 8;
        zzblVar.zzh = j8;
    }

    public static /* synthetic */ void zze(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 32;
        zzblVar.zzj = j8;
    }

    public static /* synthetic */ void zzf(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 4096;
        zzblVar.zzq = j8;
    }

    public static /* synthetic */ void zzg(zzbl zzblVar, long j8) {
        zzblVar.zzd |= IMediaList.Event.ItemAdded;
        zzblVar.zzn = j8;
    }

    public static /* synthetic */ void zzh(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 2048;
        zzblVar.zzp = j8;
    }

    public static /* synthetic */ void zzi(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 4;
        zzblVar.zzg = j8;
    }

    public static /* synthetic */ void zzj(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 16;
        zzblVar.zzi = j8;
    }

    public static /* synthetic */ void zzk(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 128;
        zzblVar.zzl = j8;
    }

    public static /* synthetic */ void zzl(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 131072;
        zzblVar.zzv = j8;
    }

    public static /* synthetic */ void zzn(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 1;
        zzblVar.zze = j8;
    }

    public static /* synthetic */ void zzo(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 262144;
        zzblVar.zzw = j8;
    }

    public static /* synthetic */ void zzp(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 2;
        zzblVar.zzf = j8;
    }

    public static /* synthetic */ void zzq(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 256;
        zzblVar.zzm = j8;
    }

    public static /* synthetic */ void zzr(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 32768;
        zzblVar.zzt = j8;
    }

    public static /* synthetic */ void zzs(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 65536;
        zzblVar.zzu = j8;
    }

    public static /* synthetic */ void zzt(zzbl zzblVar, long j8) {
        zzblVar.zzd |= 8192;
        zzblVar.zzr = j8;
    }

    public static /* synthetic */ void zzu(zzbl zzblVar, long j8) {
        zzblVar.zzd |= Http2.INITIAL_MAX_FRAME_SIZE;
        zzblVar.zzs = j8;
    }

    public static /* synthetic */ void zzv(zzbl zzblVar, int i8) {
        zzblVar.zzo = i8 - 1;
        zzblVar.zzd |= 1024;
    }

    public static /* synthetic */ void zzw(zzbl zzblVar, int i8) {
        zzblVar.zzk = i8 - 1;
        zzblVar.zzd |= 64;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzady
    public final Object zzm(int i8, Object obj, Object obj2) {
        int i9 = i8 - 1;
        if (i9 == 0) {
            return (byte) 1;
        }
        if (i9 == 2) {
            zzaeb zzaebVar = zzbx.zza;
            return zzady.zzaJ(zzb, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007᠌\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000b᠌\n\fဂ\u000b\rဂ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂ\u0014", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzaebVar, "zzl", "zzm", "zzn", "zzo", zzaebVar, "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy"});
        }
        if (i9 == 3) {
            return new zzbl();
        }
        zzbj zzbjVar = null;
        if (i9 == 4) {
            return new zzbk(zzbjVar);
        }
        if (i9 != 5) {
            return null;
        }
        return zzb;
    }
}
