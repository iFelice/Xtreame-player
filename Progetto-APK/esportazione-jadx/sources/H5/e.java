package H5;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[][] f3779a = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 2787, 8);

    static {
        int i8;
        for (int i9 = 0; i9 < 2787; i9++) {
            int i10 = G5.a.f3410b[i9];
            int i11 = i10 & 1;
            int i12 = 0;
            while (i12 < 8) {
                float f8 = 0.0f;
                while (true) {
                    i8 = i10 & 1;
                    if (i8 == i11) {
                        f8 += 1.0f;
                        i10 >>= 1;
                    }
                }
                f3779a[i9][7 - i12] = f8 / 17.0f;
                i12++;
                i11 = i8;
            }
        }
    }
}
