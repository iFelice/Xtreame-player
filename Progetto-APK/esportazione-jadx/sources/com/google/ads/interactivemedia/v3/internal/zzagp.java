package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zzagp {
    public static /* bridge */ /* synthetic */ void zza(byte b8, byte b9, byte b10, byte b11, char[] cArr, int i8) throws zzaeg {
        if (!zze(b9)) {
            if ((((b9 + 112) + (b8 << 28)) >> 30) == 0 && !zze(b10) && !zze(b11)) {
                int i9 = ((b8 & 7) << 18) | ((b9 & 63) << 12) | ((b10 & 63) << 6) | (b11 & 63);
                cArr[i8] = (char) ((i9 >>> 10) + 55232);
                cArr[i8 + 1] = (char) ((i9 & 1023) + 56320);
                return;
            }
        }
        throw new zzaeg("Protocol message had invalid UTF-8.");
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0014 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:11:0x0016  */
    /* JADX WARN: Code duplicated, block: B:12:0x0018 A[PHI: r2
      0x0018: PHI (r2v3 byte) = (r2v2 byte), (r2v9 byte) binds: [B:9:0x0012, B:11:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    public static /* bridge */ /* synthetic */ void zzb(byte b8, byte b9, byte b10, char[] cArr, int i8) throws zzaeg {
        if (!zze(b9)) {
            if (b8 != -32) {
                if (b8 != -19) {
                    if (!zze(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                } else if (b9 < -96) {
                    b8 = -19;
                    if (!zze(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                }
            } else if (b9 >= -96) {
                b8 = -32;
                if (b8 != -19) {
                    if (!zze(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                } else if (b9 < -96) {
                    b8 = -19;
                    if (!zze(b10)) {
                        cArr[i8] = (char) (((b8 & 15) << 12) | ((b9 & 63) << 6) | (b10 & 63));
                        return;
                    }
                }
            }
        }
        throw new zzaeg("Protocol message had invalid UTF-8.");
    }

    public static /* bridge */ /* synthetic */ void zzc(byte b8, byte b9, char[] cArr, int i8) throws zzaeg {
        if (b8 < -62 || zze(b9)) {
            throw new zzaeg("Protocol message had invalid UTF-8.");
        }
        cArr[i8] = (char) (((b8 & 31) << 6) | (b9 & 63));
    }

    public static /* bridge */ /* synthetic */ boolean zzd(byte b8) {
        return b8 >= 0;
    }

    private static boolean zze(byte b8) {
        return b8 > -65;
    }
}
