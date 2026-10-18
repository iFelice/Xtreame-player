package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public abstract class NE {
    static {
        Charset.forName("UTF-8");
    }

    public static final NG a(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i8 = 0; i8 < str.length(); i8++) {
            char cCharAt = str.charAt(i8);
            if (cCharAt < '!' || cCharAt > '~') {
                throw new GeneralSecurityException("Not a printable ASCII character: " + cCharAt);
            }
            bArr[i8] = (byte) cCharAt;
        }
        return NG.a(bArr);
    }

    public static final NG b(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i8 = 0; i8 < str.length(); i8++) {
            char cCharAt = str.charAt(i8);
            if (cCharAt < '!' || cCharAt > '~') {
                throw new Y.r("Not a printable ASCII character: " + cCharAt, 5);
            }
            bArr[i8] = (byte) cCharAt;
        }
        return NG.a(bArr);
    }

    public static boolean c(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return false;
        }
        for (int i8 = 0; i8 < bArr.length; i8++) {
            if (bArr2[i8] != bArr[i8]) {
                return false;
            }
        }
        return true;
    }
}
