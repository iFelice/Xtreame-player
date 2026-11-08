package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;
import org.videolan.libvlc.interfaces.IMediaList;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzsv extends zzsy {
    final char[] zza;

    private zzsv(zzsu zzsuVar) {
        super(zzsuVar, null);
        this.zza = new char[IMediaList.Event.ItemAdded];
        zzqh.zzd(zzsuVar.zzf.length == 16);
        for (int i8 = 0; i8 < 256; i8++) {
            this.zza[i8] = zzsuVar.zza(i8 >>> 4);
            this.zza[i8 | 256] = zzsuVar.zza(i8 & 15);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsy, com.google.ads.interactivemedia.v3.internal.zzsz
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzsx {
        if (charSequence.length() % 2 == 1) {
            throw new zzsx(r.f("Invalid input length ", charSequence.length()));
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < charSequence.length()) {
            bArr[i9] = (byte) ((this.zzb.zzb(charSequence.charAt(i8)) << 4) | this.zzb.zzb(charSequence.charAt(i8 + 1)));
            i8 += 2;
            i9++;
        }
        return i9;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsy
    public final zzsz zzb(zzsu zzsuVar, Character ch) {
        return new zzsv(zzsuVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzsy, com.google.ads.interactivemedia.v3.internal.zzsz
    public final void zzc(Appendable appendable, byte[] bArr, int i8, int i9) throws IOException {
        zzqh.zzh(0, i9, bArr.length);
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = bArr[i10] & 255;
            appendable.append(this.zza[i11]);
            appendable.append(this.zza[i11 | 256]);
        }
    }

    public zzsv(String str, String str2) {
        this(new zzsu("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
