package com.google.ads.interactivemedia.v3.internal;

import android.os.Looper;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public final class zzjm {
    public static final /* synthetic */ int zza = 0;
    private static final char[] zzb = "0123456789abcdef".toCharArray();

    public static long zza(double d6, int i8, DisplayMetrics displayMetrics) {
        return Math.round(d6 / ((double) displayMetrics.density));
    }

    public static String zzb(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        for (int i8 = 0; i8 < bArr.length; i8++) {
            byte b8 = bArr[i8];
            char[] cArr2 = zzb;
            int i9 = i8 + i8;
            cArr[i9] = cArr2[(b8 & 255) >>> 4];
            cArr[i9 + 1] = cArr2[b8 & 15];
        }
        return new String(cArr);
    }

    public static boolean zzc() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean zzd(String str) {
        return str == null || str.isEmpty();
    }

    public static boolean zze(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == 0.0f) ? false : true;
    }

    public static byte[] zzf(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("String must be of even-length");
        }
        byte[] bArr = new byte[length / 2];
        for (int i8 = 0; i8 < length; i8 += 2) {
            bArr[i8 / 2] = (byte) (Character.digit(str.charAt(i8 + 1), 16) + (Character.digit(str.charAt(i8), 16) << 4));
        }
        return bArr;
    }
}
