package com.google.ads.interactivemedia.v3.internal;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class zzagl extends zzagn {
    public zzagl(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagn
    public final double zza(Object obj, long j8) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagn
    public final float zzb(Object obj, long j8) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagn
    public final void zzc(Object obj, long j8, boolean z7) {
        if (zzago.zzb) {
            zzago.zzD(obj, j8, z7 ? (byte) 1 : (byte) 0);
        } else {
            zzago.zzE(obj, j8, z7 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagn
    public final void zzd(Object obj, long j8, byte b8) {
        if (zzago.zzb) {
            zzago.zzD(obj, j8, b8);
        } else {
            zzago.zzE(obj, j8, b8);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagn
    public final void zze(Object obj, long j8, double d6) {
        this.zza.putLong(obj, j8, Double.doubleToLongBits(d6));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagn
    public final void zzf(Object obj, long j8, float f8) {
        this.zza.putInt(obj, j8, Float.floatToIntBits(f8));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzagn
    public final boolean zzg(Object obj, long j8) {
        return zzago.zzb ? zzago.zzt(obj, j8) : zzago.zzu(obj, j8);
    }
}
