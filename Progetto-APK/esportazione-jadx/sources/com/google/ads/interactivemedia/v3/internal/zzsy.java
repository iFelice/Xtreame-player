package com.google.ads.interactivemedia.v3.internal;

import java.math.RoundingMode;
import java.util.Objects;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
class zzsy extends zzsz {
    private volatile zzsz zza;
    final zzsu zzb;
    final Character zzc;

    public zzsy(zzsu zzsuVar, Character ch) {
        this.zzb = zzsuVar;
        boolean z7 = true;
        if (ch != null && zzsuVar.zze('=')) {
            z7 = false;
        }
        zzqh.zzg(z7, "Padding character %s was already in alphabet", ch);
        this.zzc = ch;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzsy) {
            zzsy zzsyVar = (zzsy) obj;
            if (this.zzb.equals(zzsyVar.zzb) && Objects.equals(this.zzc, zzsyVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Character ch = this.zzc;
        return Objects.hashCode(ch) ^ this.zzb.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        sb.append(this.zzb);
        if (8 % this.zzb.zzb != 0) {
            if (this.zzc == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(this.zzc);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsz
    public int zza(byte[] bArr, CharSequence charSequence) throws zzsx {
        zzsu zzsuVar;
        CharSequence charSequenceZzg = zzg(charSequence);
        if (!this.zzb.zzd(charSequenceZzg.length())) {
            throw new zzsx(r.f("Invalid input length ", charSequenceZzg.length()));
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < charSequenceZzg.length()) {
            long jZzb = 0;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                zzsuVar = this.zzb;
                if (i10 >= zzsuVar.zzc) {
                    break;
                }
                jZzb <<= zzsuVar.zzb;
                if (i8 + i10 < charSequenceZzg.length()) {
                    jZzb |= (long) this.zzb.zzb(charSequenceZzg.charAt(i11 + i8));
                    i11++;
                }
                i10++;
            }
            int i12 = zzsuVar.zzd;
            int i13 = i11 * zzsuVar.zzb;
            int i14 = (i12 - 1) * 8;
            while (i14 >= (i12 * 8) - i13) {
                bArr[i9] = (byte) ((jZzb >>> i14) & 255);
                i14 -= 8;
                i9++;
            }
            i8 += this.zzb.zzc;
        }
        return i9;
    }

    public zzsz zzb(zzsu zzsuVar, Character ch) {
        return new zzsy(zzsuVar, ch);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsz
    public void zzc(Appendable appendable, byte[] bArr, int i8, int i9) {
        int i10 = 0;
        zzqh.zzh(0, i9, bArr.length);
        while (i10 < i9) {
            zzh(appendable, bArr, i10, Math.min(this.zzb.zzd, i9 - i10));
            i10 += this.zzb.zzd;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsz
    public final int zzd(int i8) {
        return (int) (((((long) this.zzb.zzb) * ((long) i8)) + 7) / 8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsz
    public final int zze(int i8) {
        zzsu zzsuVar = this.zzb;
        return zzsuVar.zzc * zztd.zza(i8, zzsuVar.zzd, RoundingMode.CEILING);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsz
    public final zzsz zzf() {
        zzsz zzszVarZzb = this.zza;
        if (zzszVarZzb == null) {
            zzsu zzsuVar = this.zzb;
            zzsu zzsuVarZzc = zzsuVar.zzc();
            zzszVarZzb = zzsuVarZzc == zzsuVar ? this : zzb(zzsuVarZzc, this.zzc);
            this.zza = zzszVarZzb;
        }
        return zzszVarZzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsz
    public final CharSequence zzg(CharSequence charSequence) {
        charSequence.getClass();
        if (this.zzc == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }

    public final void zzh(Appendable appendable, byte[] bArr, int i8, int i9) {
        zzqh.zzh(i8, i8 + i9, bArr.length);
        int i10 = 0;
        zzqh.zzd(i9 <= this.zzb.zzd);
        long j8 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            j8 = (j8 | ((long) (bArr[i8 + i11] & 255))) << 8;
        }
        int i12 = (i9 + 1) * 8;
        zzsu zzsuVar = this.zzb;
        while (i10 < i9 * 8) {
            long j9 = j8 >>> ((i12 - zzsuVar.zzb) - i10);
            zzsu zzsuVar2 = this.zzb;
            appendable.append(zzsuVar2.zza(zzsuVar2.zza & ((int) j9)));
            i10 += this.zzb.zzb;
        }
        if (this.zzc != null) {
            while (i10 < this.zzb.zzd * 8) {
                this.zzc.getClass();
                appendable.append('=');
                i10 += this.zzb.zzb;
            }
        }
    }

    public zzsy(String str, String str2, Character ch) {
        this(new zzsu(str, str2.toCharArray()), ch);
    }
}
