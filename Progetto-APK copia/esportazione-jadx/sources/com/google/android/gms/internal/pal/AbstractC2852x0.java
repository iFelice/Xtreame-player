package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2852x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2684c f24059a;

    static {
        if (AbstractC2836v0.f24036e && AbstractC2836v0.f24035d) {
            int i8 = AbstractC2756l.f23917a;
        }
        f24059a = new C2684c(0);
    }

    public static /* bridge */ /* synthetic */ int a(byte[] bArr, int i8, int i9) {
        byte b8 = bArr[i8 - 1];
        int i10 = i9 - i8;
        if (i10 != 0) {
            if (i10 == 1) {
                byte b9 = bArr[i8];
                if (b8 <= -12 && b9 <= -65) {
                    return b8 ^ (b9 << 8);
                }
            } else {
                if (i10 != 2) {
                    throw new AssertionError();
                }
                byte b10 = bArr[i8];
                byte b11 = bArr[i8 + 1];
                if (b8 <= -12 && b10 <= -65 && b11 <= -65) {
                    return ((b10 << 8) ^ b8) ^ (b11 << 16);
                }
            }
        } else if (b8 <= -12) {
            return b8;
        }
        return -1;
    }

    public static int b(CharSequence charSequence, byte[] bArr, int i8, int i9) {
        int i10;
        int i11;
        char cCharAt;
        int length = charSequence.length();
        int i12 = i9 + i8;
        int i13 = 0;
        while (i13 < length && (i11 = i13 + i8) < i12 && (cCharAt = charSequence.charAt(i13)) < 128) {
            bArr[i11] = (byte) cCharAt;
            i13++;
        }
        if (i13 == length) {
            return i8 + length;
        }
        int i14 = i8 + i13;
        while (i13 < length) {
            char cCharAt2 = charSequence.charAt(i13);
            if (cCharAt2 < 128 && i14 < i12) {
                bArr[i14] = (byte) cCharAt2;
                i14++;
            } else if (cCharAt2 < 2048 && i14 <= i12 - 2) {
                int i15 = i14 + 1;
                bArr[i14] = (byte) ((cCharAt2 >>> 6) | 960);
                i14 += 2;
                bArr[i15] = (byte) ((cCharAt2 & '?') | 128);
            } else {
                if ((cCharAt2 >= 55296 && cCharAt2 <= 57343) || i14 > i12 - 3) {
                    if (i14 > i12 - 4) {
                        if (cCharAt2 >= 55296 && cCharAt2 <= 57343 && ((i10 = i13 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i10)))) {
                            throw new C2844w0(i13, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i14);
                    }
                    int i16 = i13 + 1;
                    if (i16 != charSequence.length()) {
                        char cCharAt3 = charSequence.charAt(i16);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i14] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i14 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i17 = i14 + 3;
                            bArr[i14 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i14 += 4;
                            bArr[i17] = (byte) ((codePoint & 63) | 128);
                            i13 = i16;
                        } else {
                            i13 = i16;
                        }
                    }
                    throw new C2844w0(i13 - 1, length);
                }
                bArr[i14] = (byte) ((cCharAt2 >>> '\f') | 480);
                int i18 = i14 + 2;
                bArr[i14 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                i14 += 3;
                bArr[i18] = (byte) ((cCharAt2 & '?') | 128);
            }
            i13++;
        }
        return i14;
    }

    public static int c(CharSequence charSequence) {
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
                        if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i9) < 65536) {
                                throw new C2844w0(i9, length2);
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

    /* JADX WARN: Code duplicated, block: B:41:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x008d  */
    /* JADX WARN: Code duplicated, block: B:43:0x008f A[PHI: r7
      0x008f: PHI (r7v6 byte) = (r7v5 byte), (r7v10 byte) binds: [B:40:0x0089, B:42:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x0095  */
    /* JADX WARN: Code duplicated, block: B:81:0x00a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x00a7 A[SYNTHETIC] */
    public static String d(byte[] bArr, int i8, int i9) throws L {
        int length = bArr.length;
        if ((i8 | i9 | ((length - i8) - i9)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i8), Integer.valueOf(i9)));
        }
        int i10 = i8 + i9;
        char[] cArr = new char[i9];
        int i11 = 0;
        while (i8 < i10) {
            byte b8 = bArr[i8];
            if (b8 < 0) {
                break;
            }
            i8++;
            cArr[i11] = (char) b8;
            i11++;
        }
        while (i8 < i10) {
            int i12 = i8 + 1;
            byte b9 = bArr[i8];
            if (b9 >= 0) {
                cArr[i11] = (char) b9;
                i11++;
                i8 = i12;
                while (i8 < i10) {
                    byte b10 = bArr[i8];
                    if (b10 < 0) {
                        break;
                    }
                    i8++;
                    cArr[i11] = (char) b10;
                    i11++;
                }
            } else if (b9 < -32) {
                if (i12 >= i10) {
                    throw L.b();
                }
                i8 += 2;
                int i13 = i11 + 1;
                byte b11 = bArr[i12];
                if (b9 < -62 || AbstractC2864y4.k0(b11)) {
                    throw L.b();
                }
                cArr[i11] = (char) ((b11 & 63) | ((b9 & 31) << 6));
                i11 = i13;
            } else {
                if (b9 < -16) {
                    if (i12 >= i10 - 1) {
                        throw L.b();
                    }
                    int i14 = i8 + 2;
                    i8 += 3;
                    int i15 = i11 + 1;
                    byte b12 = bArr[i12];
                    byte b13 = bArr[i14];
                    if (!AbstractC2864y4.k0(b12)) {
                        if (b9 != -32) {
                            if (b9 != -19) {
                                if (!AbstractC2864y4.k0(b13)) {
                                    cArr[i11] = (char) (((b12 & 63) << 6) | ((b9 & 15) << 12) | (b13 & 63));
                                    i11 = i15;
                                }
                            } else if (b12 < -96) {
                                b9 = -19;
                                if (!AbstractC2864y4.k0(b13)) {
                                    cArr[i11] = (char) (((b12 & 63) << 6) | ((b9 & 15) << 12) | (b13 & 63));
                                    i11 = i15;
                                }
                            }
                        } else if (b12 >= -96) {
                            b9 = -32;
                            if (b9 != -19) {
                                if (!AbstractC2864y4.k0(b13)) {
                                    cArr[i11] = (char) (((b12 & 63) << 6) | ((b9 & 15) << 12) | (b13 & 63));
                                    i11 = i15;
                                }
                            } else if (b12 < -96) {
                                b9 = -19;
                                if (!AbstractC2864y4.k0(b13)) {
                                    cArr[i11] = (char) (((b12 & 63) << 6) | ((b9 & 15) << 12) | (b13 & 63));
                                    i11 = i15;
                                }
                            }
                        }
                    }
                    throw L.b();
                }
                if (i12 >= i10 - 2) {
                    throw L.b();
                }
                int i16 = i8 + 2;
                int i17 = i8 + 3;
                i8 += 4;
                byte b14 = bArr[i12];
                byte b15 = bArr[i16];
                byte b16 = bArr[i17];
                if (AbstractC2864y4.k0(b14) || (((b14 + 112) + (b9 << 28)) >> 30) != 0 || AbstractC2864y4.k0(b15) || AbstractC2864y4.k0(b16)) {
                    throw L.b();
                }
                int i18 = ((b14 & 63) << 12) | ((b9 & 7) << 18) | ((b15 & 63) << 6) | (b16 & 63);
                cArr[i11] = (char) ((i18 >>> 10) + 55232);
                cArr[i11 + 1] = (char) ((i18 & 1023) + 56320);
                i11 += 2;
            }
        }
        return new String(cArr, 0, i11);
    }

    public static boolean e(int i8, byte[] bArr, int i9) {
        f24059a.getClass();
        return C2684c.c(i8, bArr, i9);
    }
}
