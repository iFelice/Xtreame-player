package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public abstract class K2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final I2 f24269a;

    static {
        f24269a = (H2.f24257e && H2.f24256d && !AbstractC2887d.a()) ? new I2(1) : new I2(0);
    }

    public static int a(int i8, byte[] bArr, int i9) {
        byte b8 = bArr[i8 - 1];
        int i10 = i9 - i8;
        if (i10 == 0) {
            if (b8 > -12) {
                b8 = -1;
            }
            return b8;
        }
        if (i10 == 1) {
            return c(b8, bArr[i8]);
        }
        if (i10 == 2) {
            return d(b8, bArr[i8], bArr[i8 + 1]);
        }
        throw new AssertionError();
    }

    public static int b(CharSequence charSequence) {
        int length = charSequence.length();
        int i8 = 0;
        int i9 = 0;
        while (i9 < length && charSequence.charAt(i9) < 128) {
            i9++;
        }
        int i10 = length;
        while (i9 < length) {
            char cCharAt = charSequence.charAt(i9);
            if (cCharAt >= 2048) {
                int length2 = charSequence.length();
                while (i9 < length2) {
                    char cCharAt2 = charSequence.charAt(i9);
                    if (cCharAt2 < 2048) {
                        i8 += (127 - cCharAt2) >>> 31;
                    } else {
                        i8 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i9) < 65536) {
                                throw new J2(i9, length2);
                            }
                            i9++;
                        }
                    }
                    i9++;
                }
                i10 += i8;
                break;
            }
            i10 += (127 - cCharAt) >>> 31;
            i9++;
        }
        if (i10 >= length) {
            return i10;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i10) + 4294967296L));
    }

    public static int c(int i8, int i9) {
        if (i8 > -12 || i9 > -65) {
            return -1;
        }
        return i8 ^ (i9 << 8);
    }

    public static int d(int i8, int i9, int i10) {
        if (i8 > -12 || i9 > -65 || i10 > -65) {
            return -1;
        }
        return (i8 ^ (i9 << 8)) ^ (i10 << 16);
    }

    public static boolean e(int i8, byte[] bArr, int i9) {
        return f24269a.b0(bArr, i8, i9) == 0;
    }
}
