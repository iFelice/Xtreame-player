package com.google.ads.interactivemedia.v3.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzsz {
    private static final zzsz zza;

    static {
        new zzsw("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
        new zzsw("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new zzsy("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new zzsy("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
        zza = new zzsv("base16()", "0123456789ABCDEF");
    }

    public static zzsz zzi() {
        return zza;
    }

    public abstract int zza(byte[] bArr, CharSequence charSequence);

    public abstract void zzc(Appendable appendable, byte[] bArr, int i8, int i9);

    public abstract int zzd(int i8);

    public abstract int zze(int i8);

    public abstract zzsz zzf();

    public CharSequence zzg(CharSequence charSequence) {
        throw null;
    }

    public final String zzj(byte[] bArr, int i8, int i9) {
        zzqh.zzh(0, i9, bArr.length);
        StringBuilder sb = new StringBuilder(zze(i9));
        try {
            zzc(sb, bArr, 0, i9);
            return sb.toString();
        } catch (IOException e8) {
            throw new AssertionError(e8);
        }
    }

    public final byte[] zzk(CharSequence charSequence) {
        try {
            CharSequence charSequenceZzg = zzg(charSequence);
            int iZzd = zzd(charSequenceZzg.length());
            byte[] bArr = new byte[iZzd];
            int iZza = zza(bArr, charSequenceZzg);
            if (iZza == iZzd) {
                return bArr;
            }
            byte[] bArr2 = new byte[iZza];
            System.arraycopy(bArr, 0, bArr2, 0, iZza);
            return bArr2;
        } catch (zzsx e8) {
            throw new IllegalArgumentException(e8);
        }
    }
}
