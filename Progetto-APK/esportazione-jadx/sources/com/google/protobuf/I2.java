package com.google.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class I2 extends AbstractC2907i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f24263c;

    public static int c0(long j8, byte[] bArr, int i8, int i9) {
        if (i9 == 0) {
            I2 i10 = K2.f24269a;
            if (i8 > -12) {
                return -1;
            }
            return i8;
        }
        if (i9 == 1) {
            return K2.c(i8, H2.g(j8, bArr));
        }
        if (i9 == 2) {
            return K2.d(i8, H2.g(j8, bArr), H2.g(j8 + 1, bArr));
        }
        throw new AssertionError();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0051  */
    /* JADX WARN: Code duplicated, block: B:26:0x0062  */
    /* JADX WARN: Code duplicated, block: B:29:0x006b A[LOOP:2: B:25:0x0060->B:29:0x006b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x007c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0093  */
    /* JADX WARN: Code duplicated, block: B:46:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:56:0x0076 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x005b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0073 A[SYNTHETIC] */
    public final String Y(int i8, byte[] bArr, int i9) {
        int i10;
        int i11;
        byte b8;
        int i12;
        byte b9;
        switch (this.f24263c) {
            case 0:
                if ((i8 | i9 | ((bArr.length - i8) - i9)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i8), Integer.valueOf(i9)));
                }
                int i13 = i8 + i9;
                char[] cArr = new char[i9];
                int i14 = 0;
                while (i8 < i13) {
                    byte b10 = bArr[i8];
                    if (!AbstractC2907i.b(b10)) {
                        i10 = i14;
                        while (i8 < i13) {
                            i11 = i8 + 1;
                            b8 = bArr[i8];
                            if (AbstractC2907i.b(b8)) {
                                i12 = i10 + 1;
                                cArr[i10] = (char) b8;
                                while (i11 < i13) {
                                    b9 = bArr[i11];
                                    if (AbstractC2907i.b(b9)) {
                                        i11++;
                                        cArr[i12] = (char) b9;
                                        i12++;
                                    } else {
                                        i10 = i12;
                                        i8 = i11;
                                    }
                                }
                                i10 = i12;
                                i8 = i11;
                            } else if (b8 < -32) {
                                if (i11 < i13) {
                                    throw C2966x1.b();
                                }
                                i8 += 2;
                                AbstractC2907i.c(b8, bArr[i11], cArr, i10);
                                i10++;
                            } else if (b8 < -16) {
                                if (i11 < i13 - 1) {
                                    throw C2966x1.b();
                                }
                                int i15 = i8 + 2;
                                i8 += 3;
                                AbstractC2907i.d(b8, bArr[i11], bArr[i15], cArr, i10);
                                i10++;
                            } else {
                                if (i11 < i13 - 2) {
                                    throw C2966x1.b();
                                }
                                byte b11 = bArr[i11];
                                int i16 = i8 + 3;
                                byte b12 = bArr[i8 + 2];
                                i8 += 4;
                                AbstractC2907i.a(b8, b11, b12, bArr[i16], cArr, i10);
                                i10 += 2;
                            }
                        }
                        return new String(cArr, 0, i10);
                    }
                    i8++;
                    cArr[i14] = (char) b10;
                    i14++;
                }
                i10 = i14;
                while (i8 < i13) {
                    i11 = i8 + 1;
                    b8 = bArr[i8];
                    if (AbstractC2907i.b(b8)) {
                        i12 = i10 + 1;
                        cArr[i10] = (char) b8;
                        while (i11 < i13) {
                            b9 = bArr[i11];
                            if (AbstractC2907i.b(b9)) {
                                i10 = i12;
                                i8 = i11;
                            } else {
                                i11++;
                                cArr[i12] = (char) b9;
                                i12++;
                            }
                        }
                        i10 = i12;
                        i8 = i11;
                    } else if (b8 < -32) {
                        if (i11 < i13) {
                            throw C2966x1.b();
                        }
                        i8 += 2;
                        AbstractC2907i.c(b8, bArr[i11], cArr, i10);
                        i10++;
                    } else if (b8 < -16) {
                        if (i11 < i13 - 1) {
                            throw C2966x1.b();
                        }
                        int i17 = i8 + 2;
                        i8 += 3;
                        AbstractC2907i.d(b8, bArr[i11], bArr[i17], cArr, i10);
                        i10++;
                    } else {
                        if (i11 < i13 - 2) {
                            throw C2966x1.b();
                        }
                        byte b13 = bArr[i11];
                        int i18 = i8 + 3;
                        byte b14 = bArr[i8 + 2];
                        i8 += 4;
                        AbstractC2907i.a(b8, b13, b14, bArr[i18], cArr, i10);
                        i10 += 2;
                    }
                }
                return new String(cArr, 0, i10);
            default:
                Charset charset = AbstractC2960v1.f24524a;
                String str = new String(bArr, i8, i9, charset);
                if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i8, i9 + i8))) {
                    throw C2966x1.b();
                }
                return str;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0058  */
    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Code duplicated, block: B:23:0x006e A[LOOP:2: B:18:0x005d->B:23:0x006e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    /* JADX WARN: Code duplicated, block: B:27:0x007f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0081  */
    /* JADX WARN: Code duplicated, block: B:31:0x0086  */
    /* JADX WARN: Code duplicated, block: B:33:0x008a  */
    /* JADX WARN: Code duplicated, block: B:36:0x009c  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:62:0x0097 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0077 A[SYNTHETIC] */
    public final String Z(ByteBuffer byteBuffer, int i8, int i9) throws C2966x1 {
        long j8;
        G2 g8;
        byte bE;
        boolean z7;
        boolean z8;
        int i10;
        byte bE2;
        switch (this.f24263c) {
            case 0:
                return AbstractC2907i.L(byteBuffer, i8, i9);
            default:
                if ((i8 | i9 | ((byteBuffer.limit() - i8) - i9)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i8), Integer.valueOf(i9)));
                }
                long j9 = H2.f24255c.j(byteBuffer, H2.f24259g) + ((long) i8);
                long j10 = ((long) i9) + j9;
                char[] cArr = new char[i9];
                int i11 = 0;
                while (j9 < j10) {
                    byte bE3 = H2.f24255c.e(j9);
                    if (!AbstractC2907i.b(bE3)) {
                        while (j9 < j10) {
                            j8 = j9 + 1;
                            g8 = H2.f24255c;
                            bE = g8.e(j9);
                            if (AbstractC2907i.b(bE)) {
                                i10 = i11 + 1;
                                cArr[i11] = (char) bE;
                                while (j8 < j10) {
                                    bE2 = H2.f24255c.e(j8);
                                    if (AbstractC2907i.b(bE2)) {
                                        j8++;
                                        cArr[i10] = (char) bE2;
                                        i10++;
                                    } else {
                                        i11 = i10;
                                        j9 = j8;
                                    }
                                }
                                i11 = i10;
                                j9 = j8;
                            } else {
                                if (bE < -32) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    if (bE < -16) {
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                    if (z8) {
                                        if (j8 < j10 - 1) {
                                            throw C2966x1.b();
                                        }
                                        long j11 = j9 + 2;
                                        j9 += 3;
                                        AbstractC2907i.d(bE, g8.e(j8), g8.e(j11), cArr, i11);
                                        i11++;
                                    } else {
                                        if (j8 < j10 - 2) {
                                            throw C2966x1.b();
                                        }
                                        byte bE4 = g8.e(j8);
                                        long j12 = j9 + 3;
                                        byte bE5 = g8.e(j9 + 2);
                                        j9 += 4;
                                        AbstractC2907i.a(bE, bE4, bE5, g8.e(j12), cArr, i11);
                                        i11 += 2;
                                    }
                                } else {
                                    if (j8 < j10) {
                                        throw C2966x1.b();
                                    }
                                    j9 += 2;
                                    AbstractC2907i.c(bE, g8.e(j8), cArr, i11);
                                    i11++;
                                }
                            }
                        }
                        return new String(cArr, 0, i11);
                    }
                    j9++;
                    cArr[i11] = (char) bE3;
                    i11++;
                }
                while (j9 < j10) {
                    j8 = j9 + 1;
                    g8 = H2.f24255c;
                    bE = g8.e(j9);
                    if (AbstractC2907i.b(bE)) {
                        i10 = i11 + 1;
                        cArr[i11] = (char) bE;
                        while (j8 < j10) {
                            bE2 = H2.f24255c.e(j8);
                            if (AbstractC2907i.b(bE2)) {
                                i11 = i10;
                                j9 = j8;
                            } else {
                                j8++;
                                cArr[i10] = (char) bE2;
                                i10++;
                            }
                        }
                        i11 = i10;
                        j9 = j8;
                    } else {
                        if (bE < -32) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (z7) {
                            if (bE < -16) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            if (z8) {
                                if (j8 < j10 - 1) {
                                    throw C2966x1.b();
                                }
                                long j13 = j9 + 2;
                                j9 += 3;
                                AbstractC2907i.d(bE, g8.e(j8), g8.e(j13), cArr, i11);
                                i11++;
                            } else {
                                if (j8 < j10 - 2) {
                                    throw C2966x1.b();
                                }
                                byte bE6 = g8.e(j8);
                                long j14 = j9 + 3;
                                byte bE7 = g8.e(j9 + 2);
                                j9 += 4;
                                AbstractC2907i.a(bE, bE6, bE7, g8.e(j14), cArr, i11);
                                i11 += 2;
                            }
                        } else {
                            if (j8 < j10) {
                                throw C2966x1.b();
                            }
                            j9 += 2;
                            AbstractC2907i.c(bE, g8.e(j8), cArr, i11);
                            i11++;
                        }
                    }
                }
                return new String(cArr, 0, i11);
        }
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0245  */
    /* JADX WARN: Code duplicated, block: B:129:0x0240 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0237 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x018a  */
    /* JADX WARN: Code duplicated, block: B:71:0x018e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0191  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:83:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:87:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:92:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:94:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:96:0x0207  */
    public final int a0(CharSequence charSequence, byte[] bArr, int i8, int i9) {
        int i10;
        char cCharAt;
        int i11;
        int i12;
        char cCharAt2;
        char cCharAt3;
        long j8;
        int i13;
        char cCharAt4;
        char c8 = 2048;
        char c9 = 128;
        switch (this.f24263c) {
            case 0:
                int length = charSequence.length();
                int i14 = i9 + i8;
                int i15 = 0;
                while (i15 < length) {
                    int i16 = i15 + i8;
                    if (i16 >= i14 || (cCharAt3 = charSequence.charAt(i15)) >= 128) {
                        if (i15 == length) {
                            return i8 + length;
                        }
                        i10 = i8 + i15;
                        while (i15 < length) {
                            cCharAt = charSequence.charAt(i15);
                            if (cCharAt >= 128 && i10 < i14) {
                                bArr[i10] = (byte) cCharAt;
                                i10++;
                            } else if (cCharAt >= 2048 && i10 <= i14 - 2) {
                                int i17 = i10 + 1;
                                bArr[i10] = (byte) ((cCharAt >>> 6) | 960);
                                i10 += 2;
                                bArr[i17] = (byte) ((cCharAt & '?') | 128);
                            } else {
                                if ((cCharAt < 55296 && 57343 >= cCharAt) || i10 > i14 - 3) {
                                    if (i10 > i14 - 4) {
                                        if (55296 > cCharAt && cCharAt <= 57343 && ((i11 = i15 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt, charSequence.charAt(i11)))) {
                                            throw new J2(i15, length);
                                        }
                                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt + " at index " + i10);
                                    }
                                    i12 = i15 + 1;
                                    if (i12 != charSequence.length()) {
                                        cCharAt2 = charSequence.charAt(i12);
                                        if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                                            int codePoint = Character.toCodePoint(cCharAt, cCharAt2);
                                            bArr[i10] = (byte) ((codePoint >>> 18) | 240);
                                            bArr[i10 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                            int i18 = i10 + 3;
                                            bArr[i10 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                            i10 += 4;
                                            bArr[i18] = (byte) ((codePoint & 63) | 128);
                                            i15 = i12;
                                        } else {
                                            i15 = i12;
                                        }
                                    }
                                    throw new J2(i15 - 1, length);
                                }
                                bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                                int i19 = i10 + 2;
                                bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                                i10 += 3;
                                bArr[i19] = (byte) ((cCharAt & '?') | 128);
                            }
                            i15++;
                        }
                        return i10;
                    }
                    bArr[i16] = (byte) cCharAt3;
                    i15++;
                }
                if (i15 == length) {
                    return i8 + length;
                }
                i10 = i8 + i15;
                while (i15 < length) {
                    cCharAt = charSequence.charAt(i15);
                    if (cCharAt >= 128) {
                        if (cCharAt >= 2048) {
                            if (cCharAt < 55296) {
                                bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                                int i110 = i10 + 2;
                                bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                                i10 += 3;
                                bArr[i110] = (byte) ((cCharAt & '?') | 128);
                            } else {
                                bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                                int i111 = i10 + 2;
                                bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                                i10 += 3;
                                bArr[i111] = (byte) ((cCharAt & '?') | 128);
                            }
                            if (i10 > i14 - 4) {
                                if (55296 > cCharAt) {
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt + " at index " + i10);
                            }
                            i12 = i15 + 1;
                            if (i12 != charSequence.length()) {
                                cCharAt2 = charSequence.charAt(i12);
                                if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                                    int codePoint2 = Character.toCodePoint(cCharAt, cCharAt2);
                                    bArr[i10] = (byte) ((codePoint2 >>> 18) | 240);
                                    bArr[i10 + 1] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                    int i112 = i10 + 3;
                                    bArr[i10 + 2] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                    i10 += 4;
                                    bArr[i112] = (byte) ((codePoint2 & 63) | 128);
                                    i15 = i12;
                                } else {
                                    i15 = i12;
                                }
                            }
                            throw new J2(i15 - 1, length);
                        }
                        if (cCharAt < 55296) {
                            bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                            int i113 = i10 + 2;
                            bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                            i10 += 3;
                            bArr[i113] = (byte) ((cCharAt & '?') | 128);
                        } else {
                            bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                            int i114 = i10 + 2;
                            bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                            i10 += 3;
                            bArr[i114] = (byte) ((cCharAt & '?') | 128);
                        }
                        if (i10 > i14 - 4) {
                            if (55296 > cCharAt) {
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt + " at index " + i10);
                        }
                        i12 = i15 + 1;
                        if (i12 != charSequence.length()) {
                            cCharAt2 = charSequence.charAt(i12);
                            if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                                int codePoint3 = Character.toCodePoint(cCharAt, cCharAt2);
                                bArr[i10] = (byte) ((codePoint3 >>> 18) | 240);
                                bArr[i10 + 1] = (byte) (((codePoint3 >>> 12) & 63) | 128);
                                int i115 = i10 + 3;
                                bArr[i10 + 2] = (byte) (((codePoint3 >>> 6) & 63) | 128);
                                i10 += 4;
                                bArr[i115] = (byte) ((codePoint3 & 63) | 128);
                                i15 = i12;
                            } else {
                                i15 = i12;
                            }
                        }
                        throw new J2(i15 - 1, length);
                    }
                    if (cCharAt >= 2048) {
                        if (cCharAt < 55296) {
                            bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                            int i116 = i10 + 2;
                            bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                            i10 += 3;
                            bArr[i116] = (byte) ((cCharAt & '?') | 128);
                        } else {
                            bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                            int i117 = i10 + 2;
                            bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                            i10 += 3;
                            bArr[i117] = (byte) ((cCharAt & '?') | 128);
                        }
                        if (i10 > i14 - 4) {
                            if (55296 > cCharAt) {
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt + " at index " + i10);
                        }
                        i12 = i15 + 1;
                        if (i12 != charSequence.length()) {
                            cCharAt2 = charSequence.charAt(i12);
                            if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                                int codePoint4 = Character.toCodePoint(cCharAt, cCharAt2);
                                bArr[i10] = (byte) ((codePoint4 >>> 18) | 240);
                                bArr[i10 + 1] = (byte) (((codePoint4 >>> 12) & 63) | 128);
                                int i118 = i10 + 3;
                                bArr[i10 + 2] = (byte) (((codePoint4 >>> 6) & 63) | 128);
                                i10 += 4;
                                bArr[i118] = (byte) ((codePoint4 & 63) | 128);
                                i15 = i12;
                            } else {
                                i15 = i12;
                            }
                        }
                        throw new J2(i15 - 1, length);
                    }
                    if (cCharAt < 55296) {
                        bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                        int i119 = i10 + 2;
                        bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                        i10 += 3;
                        bArr[i119] = (byte) ((cCharAt & '?') | 128);
                    } else {
                        bArr[i10] = (byte) ((cCharAt >>> '\f') | 480);
                        int i1110 = i10 + 2;
                        bArr[i10 + 1] = (byte) (((cCharAt >>> 6) & 63) | 128);
                        i10 += 3;
                        bArr[i1110] = (byte) ((cCharAt & '?') | 128);
                    }
                    if (i10 > i14 - 4) {
                        if (55296 > cCharAt) {
                        }
                        throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt + " at index " + i10);
                    }
                    i12 = i15 + 1;
                    if (i12 != charSequence.length()) {
                        cCharAt2 = charSequence.charAt(i12);
                        if (Character.isSurrogatePair(cCharAt, cCharAt2)) {
                            int codePoint5 = Character.toCodePoint(cCharAt, cCharAt2);
                            bArr[i10] = (byte) ((codePoint5 >>> 18) | 240);
                            bArr[i10 + 1] = (byte) (((codePoint5 >>> 12) & 63) | 128);
                            int i1111 = i10 + 3;
                            bArr[i10 + 2] = (byte) (((codePoint5 >>> 6) & 63) | 128);
                            i10 += 4;
                            bArr[i1111] = (byte) ((codePoint5 & 63) | 128);
                            i15 = i12;
                        } else {
                            i15 = i12;
                        }
                    }
                    throw new J2(i15 - 1, length);
                    i15++;
                }
                return i10;
            default:
                long j9 = i8;
                long j10 = ((long) i9) + j9;
                int length2 = charSequence.length();
                if (length2 > i9 || bArr.length - i9 < i8) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length2 - 1) + " at index " + (i8 + i9));
                }
                int i20 = 0;
                while (i20 < length2 && (cCharAt4 = charSequence.charAt(i20)) < 128) {
                    H2.l(bArr, j9, (byte) cCharAt4);
                    i20++;
                    j9++;
                }
                if (i20 != length2) {
                    while (i20 < length2) {
                        char cCharAt5 = charSequence.charAt(i20);
                        if (cCharAt5 < c9 && j9 < j10) {
                            H2.l(bArr, j9, (byte) cCharAt5);
                            j8 = j10;
                            j9++;
                        } else if (cCharAt5 < c8 && j9 <= j10 - 2) {
                            long j11 = j9 + 1;
                            H2.l(bArr, j9, (byte) ((cCharAt5 >>> 6) | 960));
                            j9 += 2;
                            H2.l(bArr, j11, (byte) ((cCharAt5 & '?') | c9));
                            j8 = j10;
                        } else {
                            if ((cCharAt5 >= 55296 && 57343 >= cCharAt5) || j9 > j10 - 3) {
                                j8 = j10;
                                if (j9 > j8 - 4) {
                                    if (55296 <= cCharAt5 && cCharAt5 <= 57343 && ((i13 = i20 + 1) == length2 || !Character.isSurrogatePair(cCharAt5, charSequence.charAt(i13)))) {
                                        throw new J2(i20, length2);
                                    }
                                    throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt5 + " at index " + j9);
                                }
                                int i21 = i20 + 1;
                                if (i21 != length2) {
                                    char cCharAt6 = charSequence.charAt(i21);
                                    if (Character.isSurrogatePair(cCharAt5, cCharAt6)) {
                                        int codePoint6 = Character.toCodePoint(cCharAt5, cCharAt6);
                                        H2.l(bArr, j9, (byte) ((codePoint6 >>> 18) | 240));
                                        H2.l(bArr, j9 + 1, (byte) (((codePoint6 >>> 12) & 63) | 128));
                                        long j12 = 3 + j9;
                                        H2.l(bArr, j9 + 2, (byte) (((codePoint6 >>> 6) & 63) | 128));
                                        j9 += 4;
                                        H2.l(bArr, j12, (byte) ((codePoint6 & 63) | 128));
                                        i20 = i21;
                                    } else {
                                        i20 = i21;
                                    }
                                }
                                throw new J2(i20 - 1, length2);
                            }
                            H2.l(bArr, j9, (byte) ((cCharAt5 >>> '\f') | 480));
                            j8 = j10;
                            long j13 = j9 + 2;
                            H2.l(bArr, j9 + 1, (byte) (((cCharAt5 >>> 6) & 63) | 128));
                            j9 += 3;
                            H2.l(bArr, j13, (byte) ((cCharAt5 & '?') | 128));
                        }
                        i20++;
                        j10 = j8;
                        c8 = 2048;
                        c9 = 128;
                    }
                }
                return (int) j9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:132:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:139:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:144:0x00ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0083  */
    /* JADX WARN: Code duplicated, block: B:40:0x008c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0092  */
    /* JADX WARN: Code duplicated, block: B:45:0x009b  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d3  */
    public final int b0(byte[] bArr, int i8, int i9) {
        int i10;
        int i11;
        long j8;
        byte bG;
        byte bG2;
        int i12 = i8;
        switch (this.f24263c) {
            case 0:
                while (i12 < i9 && bArr[i12] >= 0) {
                    i12++;
                }
                if (i12 < i9) {
                    while (i12 < i9) {
                        int i13 = i12 + 1;
                        byte b8 = bArr[i12];
                        if (b8 < 0) {
                            if (b8 < -32) {
                                if (i13 >= i9) {
                                    return b8;
                                }
                                if (b8 >= -62) {
                                    i12 += 2;
                                    if (bArr[i13] > -65) {
                                    }
                                }
                                return -1;
                            }
                            if (b8 < -16) {
                                if (i13 >= i9 - 1) {
                                    return K2.a(i13, bArr, i9);
                                }
                                int i14 = i12 + 2;
                                byte b9 = bArr[i13];
                                if (b9 <= -65 && ((b8 != -32 || b9 >= -96) && (b8 != -19 || b9 < -96))) {
                                    i12 += 3;
                                    if (bArr[i14] > -65) {
                                    }
                                }
                            } else {
                                if (i13 >= i9 - 2) {
                                    return K2.a(i13, bArr, i9);
                                }
                                int i15 = i12 + 2;
                                byte b10 = bArr[i13];
                                if (b10 <= -65 && (((b10 + 112) + (b8 << 28)) >> 30) == 0) {
                                    int i16 = i12 + 3;
                                    if (bArr[i15] <= -65) {
                                        i12 += 4;
                                        if (bArr[i16] > -65) {
                                        }
                                    }
                                }
                            }
                            return -1;
                        }
                        i12 = i13;
                    }
                }
                return 0;
            default:
                if ((i12 | i9 | (bArr.length - i9)) < 0) {
                    throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i8), Integer.valueOf(i9)));
                }
                long j9 = i12;
                int i17 = (int) (((long) i9) - j9);
                if (i17 < 16) {
                    i10 = 0;
                } else {
                    int i18 = 8 - (((int) j9) & 7);
                    long j10 = j9;
                    i10 = 0;
                    while (true) {
                        if (i10 < i18) {
                            long j11 = j10 + 1;
                            if (H2.g(j10, bArr) >= 0) {
                                i10++;
                                j10 = j11;
                            }
                        } else {
                            while (true) {
                                int i19 = i10 + 8;
                                if (i19 <= i17 && (H2.f24255c.j(bArr, H2.f24258f + j10) & (-9187201950435737472L)) == 0) {
                                    j10 += 8;
                                    i10 = i19;
                                }
                            }
                            while (true) {
                                if (i10 < i17) {
                                    long j12 = j10 + 1;
                                    if (H2.g(j10, bArr) >= 0) {
                                        i10++;
                                        j10 = j12;
                                    }
                                } else {
                                    i10 = i17;
                                }
                            }
                        }
                    }
                }
                int i20 = i17 - i10;
                long j13 = j9 + ((long) i10);
                while (true) {
                    byte bG3 = 0;
                    while (i20 > 0) {
                        long j14 = j13 + 1;
                        bG3 = H2.g(j13, bArr);
                        if (bG3 < 0) {
                            j13 = j14;
                            if (i20 == 0) {
                                return 0;
                            }
                            i11 = i20 - 1;
                            if (bG3 < -32) {
                                if (i11 == 0) {
                                    return bG3;
                                }
                                i20 -= 2;
                                if (bG3 >= -62) {
                                    j8 = j13 + 1;
                                    if (H2.g(j13, bArr) > -65) {
                                        j13 = j8;
                                    }
                                }
                                return -1;
                            }
                            if (bG3 >= -16) {
                                if (i11 < 3) {
                                    return c0(j13, bArr, bG3, i11);
                                }
                                i20 -= 4;
                                long j15 = j13 + 1;
                                bG2 = H2.g(j13, bArr);
                                if (bG2 > -65 && (((bG2 + 112) + (bG3 << 28)) >> 30) == 0) {
                                    long j16 = 2 + j13;
                                    if (H2.g(j15, bArr) <= -65) {
                                        j13 += 3;
                                        if (H2.g(j16, bArr) > -65) {
                                        }
                                    }
                                }
                                return -1;
                            }
                            if (i11 < 2) {
                                return c0(j13, bArr, bG3, i11);
                            }
                            i20 -= 3;
                            long j17 = j13 + 1;
                            bG = H2.g(j13, bArr);
                            if (bG > -65 && ((bG3 != -32 || bG >= -96) && (bG3 != -19 || bG < -96))) {
                                j13 += 2;
                                if (H2.g(j17, bArr) > -65) {
                                }
                            }
                            return -1;
                        }
                        i20--;
                        j13 = j14;
                    }
                    if (i20 == 0) {
                        return 0;
                    }
                    i11 = i20 - 1;
                    if (bG3 < -32) {
                        if (i11 == 0) {
                            return bG3;
                        }
                        i20 -= 2;
                        if (bG3 >= -62) {
                            j8 = j13 + 1;
                            if (H2.g(j13, bArr) > -65) {
                                j13 = j8;
                            }
                        }
                        return -1;
                    }
                    if (bG3 >= -16) {
                        if (i11 < 2) {
                            return c0(j13, bArr, bG3, i11);
                        }
                        i20 -= 3;
                        long j18 = j13 + 1;
                        bG = H2.g(j13, bArr);
                        if (bG > -65) {
                        }
                        return -1;
                    }
                    if (i11 < 3) {
                        return c0(j13, bArr, bG3, i11);
                    }
                    i20 -= 4;
                    long j19 = j13 + 1;
                    bG2 = H2.g(j13, bArr);
                    if (bG2 > -65) {
                    }
                    return -1;
                }
        }
    }
}
