package com.google.ads.interactivemedia.v3.internal;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzadf extends zzaco {
    private static final Logger zzb = Logger.getLogger(zzadf.class.getName());
    private static final boolean zzc = zzago.zzx();
    zzadg zza;

    private zzadf() {
        throw null;
    }

    public static int zzA(long j8) {
        return (640 - (Long.numberOfLeadingZeros(j8) * 9)) >>> 6;
    }

    @Deprecated
    public static int zzw(int i8, zzafb zzafbVar, zzaft zzaftVar) {
        int iZzz = zzz(i8 << 3);
        return ((zzach) zzafbVar).zzat(zzaftVar) + iZzz + iZzz;
    }

    public static int zzx(zzafb zzafbVar, zzaft zzaftVar) {
        int iZzat = ((zzach) zzafbVar).zzat(zzaftVar);
        return zzz(iZzat) + iZzat;
    }

    public static int zzy(String str) {
        int length;
        try {
            length = zzagr.zzc(str);
        } catch (zzagq unused) {
            length = str.getBytes(zzaee.zza).length;
        }
        return zzz(length) + length;
    }

    public static int zzz(int i8) {
        return (352 - (Integer.numberOfLeadingZeros(i8) * 9)) >>> 6;
    }

    public final void zzB() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void zzC(String str, zzagq zzagqVar) throws zzadd {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzagqVar);
        byte[] bytes = str.getBytes(zzaee.zza);
        try {
            int length = bytes.length;
            zzt(length);
            zzl(bytes, 0, length);
        } catch (IndexOutOfBoundsException e8) {
            throw new zzadd(e8);
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b8);

    public abstract void zzd(int i8, boolean z7);

    public abstract void zze(int i8, zzacw zzacwVar);

    public abstract void zzf(int i8, int i9);

    public abstract void zzg(int i8);

    public abstract void zzh(int i8, long j8);

    public abstract void zzi(long j8);

    public abstract void zzj(int i8, int i9);

    public abstract void zzk(int i8);

    public abstract void zzl(byte[] bArr, int i8, int i9);

    public abstract void zzm(int i8, zzafb zzafbVar, zzaft zzaftVar);

    public abstract void zzn(int i8, zzafb zzafbVar);

    public abstract void zzo(int i8, zzacw zzacwVar);

    public abstract void zzp(int i8, String str);

    public abstract void zzr(int i8, int i9);

    public abstract void zzs(int i8, int i9);

    public abstract void zzt(int i8);

    public abstract void zzu(int i8, long j8);

    public abstract void zzv(long j8);

    public /* synthetic */ zzadf(zzade zzadeVar) {
    }
}
