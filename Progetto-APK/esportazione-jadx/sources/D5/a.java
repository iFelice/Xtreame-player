package D5;

import C5.j;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f2401b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f2404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f2405f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f2400a = new int[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f2402c = new float[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float[] f2403d = new float[4];

    public a() {
        int[] iArr = new int[8];
        this.f2401b = iArr;
        this.f2404e = new int[iArr.length / 2];
        this.f2405f = new int[iArr.length / 2];
    }

    public static void i(int[] iArr, float[] fArr) {
        int i8 = 0;
        float f8 = fArr[0];
        for (int i9 = 1; i9 < iArr.length; i9++) {
            float f9 = fArr[i9];
            if (f9 < f8) {
                i8 = i9;
                f8 = f9;
            }
        }
        iArr[i8] = iArr[i8] - 1;
    }

    public static void j(int[] iArr, float[] fArr) {
        int i8 = 0;
        float f8 = fArr[0];
        for (int i9 = 1; i9 < iArr.length; i9++) {
            float f9 = fArr[i9];
            if (f9 > f8) {
                i8 = i9;
                f8 = f9;
            }
        }
        iArr[i8] = iArr[i8] + 1;
    }

    public static boolean k(int[] iArr) {
        int i8 = iArr[0] + iArr[1];
        float f8 = i8 / ((iArr[2] + i8) + iArr[3]);
        if (f8 >= 0.7916667f && f8 <= 0.89285713f) {
            int i9 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            int i10 = Integer.MIN_VALUE;
            for (int i11 : iArr) {
                if (i11 > i10) {
                    i10 = i11;
                }
                if (i11 < i9) {
                    i9 = i11;
                }
            }
            if (i10 < i9 * 10) {
                return true;
            }
        }
        return false;
    }
}
