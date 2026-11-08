package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public abstract class X4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f17380a = "0123456789abcdef".toCharArray();

    public static long a(double d6, DisplayMetrics displayMetrics) {
        return Math.round(d6 / ((double) displayMetrics.density));
    }

    public static boolean b(String str) {
        return str == null || str.isEmpty();
    }

    public static byte[] c(String str) {
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
