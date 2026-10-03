package com.google.ads.interactivemedia.v3.internal;

import java.math.RoundingMode;
import java.util.Arrays;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzsu {
    final int zza;
    final int zzb;
    final int zzc;
    final int zzd;
    private final String zze;
    private final char[] zzf;
    private final byte[] zzg;
    private final boolean[] zzh;
    private final boolean zzi;

    /* JADX WARN: Illegal instructions before constructor call */
    public zzsu(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i8 = 0; i8 < cArr.length; i8++) {
            char c8 = cArr[i8];
            boolean z7 = true;
            zzqh.zzf(c8 < 128, "Non-ASCII character: %s", c8);
            if (bArr[c8] != -1) {
                z7 = false;
            }
            zzqh.zzf(z7, "Duplicate character: %s", c8);
            bArr[c8] = (byte) i8;
        }
        this(str, cArr, bArr, false);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzsu) {
            zzsu zzsuVar = (zzsu) obj;
            if (this.zzi == zzsuVar.zzi && Arrays.equals(this.zzf, zzsuVar.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzf) + (true != this.zzi ? 1237 : 1231);
    }

    public final String toString() {
        return this.zze;
    }

    public final char zza(int i8) {
        return this.zzf[i8];
    }

    public final int zzb(char c8) throws zzsx {
        if (c8 > 127) {
            throw new zzsx("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c8))));
        }
        byte b8 = this.zzg[c8];
        if (b8 != -1) {
            return b8;
        }
        if (c8 <= ' ' || c8 == 127) {
            throw new zzsx("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c8))));
        }
        throw new zzsx("Unrecognized character: " + c8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    public final zzsu zzc() {
        boolean z7;
        int i8 = 0;
        while (true) {
            char[] cArr = this.zzf;
            if (i8 >= cArr.length) {
                return this;
            }
            if (zzpw.zza(cArr[i8])) {
                int i9 = 0;
                while (true) {
                    if (i9 >= cArr.length) {
                        z7 = false;
                        break;
                    }
                    char c8 = cArr[i9];
                    if (c8 >= 'a' && c8 <= 'z') {
                        z7 = true;
                        break;
                    }
                    i9++;
                }
                zzqh.zzi(!z7, "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr2 = new char[this.zzf.length];
                int i10 = 0;
                while (true) {
                    char[] cArr3 = this.zzf;
                    if (i10 >= cArr3.length) {
                        break;
                    }
                    char c9 = cArr3[i10];
                    if (zzpw.zza(c9)) {
                        c9 ^= 32;
                    }
                    cArr2[i10] = (char) c9;
                    i10++;
                }
                zzsu zzsuVar = new zzsu(this.zze.concat(".lowerCase()"), cArr2);
                if (!this.zzi || zzsuVar.zzi) {
                    return zzsuVar;
                }
                byte[] bArr = zzsuVar.zzg;
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                for (int i11 = 65; i11 <= 90; i11++) {
                    int i12 = i11 | 32;
                    byte[] bArr2 = zzsuVar.zzg;
                    byte b8 = bArr2[i11];
                    byte b9 = bArr2[i12];
                    if (b8 == -1) {
                        bArrCopyOf[i11] = b9;
                    } else {
                        char c10 = (char) i11;
                        char c11 = (char) i12;
                        if (b9 != -1) {
                            throw new IllegalStateException(zzqm.zzb("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c10), Character.valueOf(c11)));
                        }
                        bArrCopyOf[i12] = b8;
                    }
                }
                return new zzsu(zzsuVar.zze.concat(".ignoreCase()"), zzsuVar.zzf, bArrCopyOf, true);
            }
            i8++;
        }
    }

    public final boolean zzd(int i8) {
        return this.zzh[i8 % this.zzc];
    }

    public final boolean zze(char c8) {
        byte[] bArr = this.zzg;
        return bArr.length > 61 && bArr[61] != -1;
    }

    private zzsu(String str, char[] cArr, byte[] bArr, boolean z7) {
        this.zze = str;
        cArr.getClass();
        this.zzf = cArr;
        try {
            int length = cArr.length;
            int iZzb = zztd.zzb(length, RoundingMode.UNNECESSARY);
            this.zzb = iZzb;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iZzb);
            int i8 = 1 << (3 - iNumberOfTrailingZeros);
            this.zzc = i8;
            this.zzd = iZzb >> iNumberOfTrailingZeros;
            this.zza = length - 1;
            this.zzg = bArr;
            boolean[] zArr = new boolean[i8];
            for (int i9 = 0; i9 < this.zzd; i9++) {
                zArr[zztd.zza(i9 * 8, this.zzb, RoundingMode.CEILING)] = true;
            }
            this.zzh = zArr;
            this.zzi = z7;
        } catch (ArithmeticException e8) {
            throw new IllegalArgumentException(r.f("Illegal alphabet length ", cArr.length), e8);
        }
    }
}
