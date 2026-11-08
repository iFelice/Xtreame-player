package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class ND {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f14894a = d(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    public static void a(int i8, int i9, int i10, int i11, int[] iArr) {
        int i12 = iArr[i8] + iArr[i9];
        iArr[i8] = i12;
        int i13 = i12 ^ iArr[i11];
        int i14 = (i13 >>> (-16)) | (i13 << 16);
        iArr[i11] = i14;
        int i15 = iArr[i10] + i14;
        iArr[i10] = i15;
        int i16 = iArr[i9] ^ i15;
        int i17 = (i16 >>> (-12)) | (i16 << 12);
        iArr[i9] = i17;
        int i18 = iArr[i8] + i17;
        iArr[i8] = i18;
        int i19 = iArr[i11] ^ i18;
        int i20 = (i19 >>> (-8)) | (i19 << 8);
        iArr[i11] = i20;
        int i21 = iArr[i10] + i20;
        iArr[i10] = i21;
        int i22 = iArr[i9] ^ i21;
        iArr[i9] = (i22 >>> (-7)) | (i22 << 7);
    }

    public static void b(int[] iArr) {
        for (int i8 = 0; i8 < 10; i8++) {
            a(0, 4, 8, 12, iArr);
            a(1, 5, 9, 13, iArr);
            a(2, 6, 10, 14, iArr);
            a(3, 7, 11, 15, iArr);
            a(0, 5, 10, 15, iArr);
            a(1, 6, 11, 12, iArr);
            a(2, 7, 8, 13, iArr);
            a(3, 4, 9, 14, iArr);
        }
    }

    public static int[] c(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        int[] iArr4 = f14894a;
        System.arraycopy(iArr4, 0, iArr3, 0, iArr4.length);
        System.arraycopy(iArr, 0, iArr3, iArr4.length, 8);
        iArr3[12] = iArr2[0];
        iArr3[13] = iArr2[1];
        iArr3[14] = iArr2[2];
        iArr3[15] = iArr2[3];
        b(iArr3);
        iArr3[4] = iArr3[12];
        iArr3[5] = iArr3[13];
        iArr3[6] = iArr3[14];
        iArr3[7] = iArr3[15];
        return Arrays.copyOf(iArr3, 8);
    }

    public static int[] d(byte[] bArr) {
        if ((bArr.length & 3) != 0) {
            throw new IllegalArgumentException("invalid input length");
        }
        IntBuffer intBufferAsIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[intBufferAsIntBuffer.remaining()];
        intBufferAsIntBuffer.get(iArr);
        return iArr;
    }
}
