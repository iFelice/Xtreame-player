package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1822pI {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C1301fF f20440a;

    static {
        if (AbstractC1718nI.f20157e && AbstractC1718nI.f20156d) {
            int i8 = RG.f16232a;
        }
        f20440a = new C1301fF();
    }

    public static int a(int i8, byte[] bArr, int i9) {
        int i10;
        int i11 = i9 - i8;
        byte b8 = bArr[i8 - 1];
        if (i11 != 0) {
            if (i11 == 1) {
                byte b9 = bArr[i8];
                if (b8 <= -12 && b9 <= -65) {
                    i10 = (b9 << 8) ^ b8;
                    return i10;
                }
            } else {
                if (i11 != 2) {
                    throw new AssertionError();
                }
                byte b10 = bArr[i8];
                byte b11 = bArr[i8 + 1];
                if (b8 <= -12 && b10 <= -65 && b11 <= -65) {
                    i10 = (b11 << 16) ^ ((b10 << 8) ^ b8);
                    return i10;
                }
            }
        } else if (b8 <= -12) {
            return b8;
        }
        return -1;
    }

    public static int b(String str, byte[] bArr, int i8, int i9) {
        int i10;
        int i11;
        int i12;
        char cCharAt;
        int length = str.length();
        int i13 = 0;
        while (true) {
            i10 = i8 + i9;
            if (i13 >= length || (i12 = i13 + i8) >= i10 || (cCharAt = str.charAt(i13)) >= 128) {
                break;
            }
            bArr[i12] = (byte) cCharAt;
            i13++;
        }
        if (i13 == length) {
            return i8 + length;
        }
        int i14 = i8 + i13;
        while (i13 < length) {
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 < 128 && i14 < i10) {
                bArr[i14] = (byte) cCharAt2;
                i14++;
            } else if (cCharAt2 < 2048 && i14 <= i10 - 2) {
                bArr[i14] = (byte) ((cCharAt2 >>> 6) | 960);
                bArr[i14 + 1] = (byte) ((cCharAt2 & '?') | 128);
                i14 += 2;
            } else {
                if ((cCharAt2 >= 55296 && cCharAt2 <= 57343) || i14 > i10 - 3) {
                    if (i14 > i10 - 4) {
                        if (cCharAt2 >= 55296 && cCharAt2 <= 57343 && ((i11 = i13 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i11)))) {
                            throw new C1770oI(i13, length);
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i14);
                    }
                    int i15 = i13 + 1;
                    if (i15 != str.length()) {
                        char cCharAt3 = str.charAt(i15);
                        if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                            int i16 = i14 + 3;
                            int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                            bArr[i14] = (byte) ((codePoint >>> 18) | 240);
                            bArr[i14 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                            bArr[i14 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i14 += 4;
                            bArr[i16] = (byte) ((codePoint & 63) | 128);
                            i13 = i15;
                        } else {
                            i13 = i15;
                        }
                    }
                    throw new C1770oI(i13 - 1, length);
                }
                bArr[i14] = (byte) ((cCharAt2 >>> '\f') | 480);
                bArr[i14 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                bArr[i14 + 2] = (byte) ((cCharAt2 & '?') | 128);
                i14 += 3;
            }
            i13++;
        }
        return i14;
    }

    public static int c(String str) {
        int length = str.length();
        int i8 = 0;
        int i9 = 0;
        while (i9 < length && str.charAt(i9) < 128) {
            i9++;
        }
        int i10 = length;
        while (i9 < length) {
            char cCharAt = str.charAt(i9);
            if (cCharAt >= 2048) {
                int length2 = str.length();
                while (i9 < length2) {
                    char cCharAt2 = str.charAt(i9);
                    if (cCharAt2 < 2048) {
                        i8 += (127 - cCharAt2) >>> 31;
                    } else {
                        i8 += 2;
                        if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(str, i9) < 65536) {
                                throw new C1770oI(i9, length2);
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

    public static String d(int i8, byte[] bArr, int i9) {
        f20440a.getClass();
        return C1301fF.j(i8, bArr, i9);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x005e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x007b A[ORIG_RETURN, RETURN] */
    public static boolean e(int i8, byte[] bArr, int i9) {
        f20440a.getClass();
        while (i8 < i9 && bArr[i8] >= 0) {
            i8++;
        }
        if (i8 >= i9) {
            return true;
        }
        while (i8 < i9) {
            int i10 = i8 + 1;
            int iA = bArr[i8];
            if (iA >= 0) {
                i8 = i10;
            } else if (iA < -32) {
                if (i10 >= i9) {
                    if (iA == 0) {
                        return true;
                    }
                    return false;
                }
                if (iA < -62) {
                    return false;
                }
                i8 += 2;
                if (bArr[i10] > -65) {
                    return false;
                }
            } else if (iA < -16) {
                if (i10 >= i9 - 1) {
                    iA = a(i10, bArr, i9);
                    if (iA == 0) {
                        return true;
                    }
                    return false;
                }
                int i11 = i8 + 2;
                byte b8 = bArr[i10];
                if (b8 > -65) {
                    return false;
                }
                if (iA == -32 && b8 < -96) {
                    return false;
                }
                if (iA == -19 && b8 >= -96) {
                    return false;
                }
                i8 += 3;
                if (bArr[i11] > -65) {
                    return false;
                }
            } else {
                if (i10 >= i9 - 2) {
                    iA = a(i10, bArr, i9);
                    if (iA == 0) {
                        return true;
                    }
                    return false;
                }
                int i12 = i8 + 2;
                byte b9 = bArr[i10];
                if (b9 > -65) {
                    return false;
                }
                if ((((b9 + 112) + (iA << 28)) >> 30) != 0) {
                    return false;
                }
                int i13 = i8 + 3;
                if (bArr[i12] > -65) {
                    return false;
                }
                i8 += 4;
                if (bArr[i13] > -65) {
                    return false;
                }
            }
        }
        return true;
    }
}
