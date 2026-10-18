package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzsw extends zzsy {
    private zzsw(zzsu zzsuVar, Character ch) {
        super(zzsuVar, ch);
        zzqh.zzd(zzsuVar.zzf.length == 64);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsy, com.google.ads.interactivemedia.v3.internal.zzsz
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzsx {
        CharSequence charSequenceZzg = zzg(charSequence);
        if (!this.zzb.zzd(charSequenceZzg.length())) {
            throw new zzsx(r.f("Invalid input length ", charSequenceZzg.length()));
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < charSequenceZzg.length()) {
            int i10 = i9 + 1;
            int iZzb = (this.zzb.zzb(charSequenceZzg.charAt(i8)) << 18) | (this.zzb.zzb(charSequenceZzg.charAt(i8 + 1)) << 12);
            bArr[i9] = (byte) (iZzb >>> 16);
            int i11 = i8 + 2;
            if (i11 < charSequenceZzg.length()) {
                int i12 = i8 + 3;
                int iZzb2 = iZzb | (this.zzb.zzb(charSequenceZzg.charAt(i11)) << 6);
                int i13 = i9 + 2;
                bArr[i10] = (byte) ((iZzb2 >>> 8) & 255);
                if (i12 < charSequenceZzg.length()) {
                    i8 += 4;
                    i9 += 3;
                    bArr[i13] = (byte) ((iZzb2 | this.zzb.zzb(charSequenceZzg.charAt(i12))) & 255);
                } else {
                    i9 = i13;
                    i8 = i12;
                }
            } else {
                i8 = i11;
                i9 = i10;
            }
        }
        return i9;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsy
    public final zzsz zzb(zzsu zzsuVar, Character ch) {
        return new zzsw(zzsuVar, ch);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsy, com.google.ads.interactivemedia.v3.internal.zzsz
    public final void zzc(Appendable appendable, byte[] bArr, int i8, int i9) throws IOException {
        int i10 = 0;
        zzqh.zzh(0, i9, bArr.length);
        for (int i11 = i9; i11 >= 3; i11 -= 3) {
            int i12 = bArr[i10] & 255;
            int i13 = ((bArr[i10 + 1] & 255) << 8) | (i12 << 16) | (bArr[i10 + 2] & 255);
            appendable.append(this.zzb.zza(i13 >>> 18));
            appendable.append(this.zzb.zza((i13 >>> 12) & 63));
            appendable.append(this.zzb.zza((i13 >>> 6) & 63));
            appendable.append(this.zzb.zza(i13 & 63));
            i10 += 3;
        }
        if (i10 < i9) {
            zzh(appendable, bArr, i10, i9 - i10);
        }
    }

    public zzsw(String str, String str2, Character ch) {
        this(new zzsu(str, str2.toCharArray()), ch);
    }
}
