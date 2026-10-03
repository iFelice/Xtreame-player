package p140s;

import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f29859a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object[] f29860b = new Object[0];

    public static final int a(int i8, int i9, int[] iArr) {
        q0.h(iArr, "array");
        int i10 = i8 - 1;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            int i13 = iArr[i12];
            if (i13 < i9) {
                i11 = i12 + 1;
            } else {
                if (i13 <= i9) {
                    return i12;
                }
                i10 = i12 - 1;
            }
        }
        return ~i11;
    }

    public static final int b(long[] jArr, int i8, long j8) {
        q0.h(jArr, "array");
        int i9 = i8 - 1;
        int i10 = 0;
        while (i10 <= i9) {
            int i11 = (i10 + i9) >>> 1;
            long j9 = jArr[i11];
            if (j9 < j8) {
                i10 = i11 + 1;
            } else {
                if (j9 <= j8) {
                    return i11;
                }
                i9 = i11 - 1;
            }
        }
        return ~i10;
    }
}
