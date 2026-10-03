package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzrg {
    public static int zza(int i8, double d6) {
        int iMax = Math.max(i8, 2);
        int iHighestOneBit = Integer.highestOneBit(iMax);
        if (iMax <= iHighestOneBit) {
            return iHighestOneBit;
        }
        int i9 = iHighestOneBit + iHighestOneBit;
        if (i9 > 0) {
            return i9;
        }
        return 1073741824;
    }

    public static int zzb(int i8) {
        return (int) (((long) Integer.rotateLeft((int) (((long) i8) * (-862048943)), 15)) * 461845907);
    }

    public static int zzc(Object obj) {
        return zzb(obj == null ? 0 : obj.hashCode());
    }
}
