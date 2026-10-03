package A0;

import android.opengl.Matrix;
import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[][] f77a = {new float[]{1.0f, 0.0f, 0.0f, 1.0f}, new float[]{-1.0f, 0.0f, 0.0f, 1.0f}, new float[]{0.0f, 1.0f, 0.0f, 1.0f}, new float[]{0.0f, -1.0f, 0.0f, 1.0f}, new float[]{0.0f, 0.0f, 1.0f, 1.0f}, new float[]{0.0f, 0.0f, -1.0f, 1.0f}};

    public static z4.d0 a(z4.d0 d0Var) {
        H1.c("A polygon must have at least 3 vertices.", d0Var.size() >= 3);
        z4.E e8 = new z4.E();
        e8.k0(d0Var);
        float[][] fArr = f77a;
        int i8 = 0;
        while (i8 < 6) {
            float[] fArr2 = fArr[i8];
            z4.d0 d0VarM0 = e8.m0();
            z4.E e9 = new z4.E();
            for (int i9 = 0; i9 < d0VarM0.size(); i9++) {
                float[] fArr3 = (float[]) d0VarM0.get(i9);
                float[] fArr4 = (float[]) d0VarM0.get(((d0VarM0.size() + i9) - 1) % d0VarM0.size());
                if (d(fArr3, fArr2)) {
                    if (!d(fArr4, fArr2)) {
                        float[] fArrB = b(fArr2, fArr2, fArr4, fArr3);
                        if (!Arrays.equals(fArr3, fArrB)) {
                            e9.i0(fArrB);
                        }
                    }
                    e9.i0(fArr3);
                } else if (d(fArr4, fArr2)) {
                    float[] fArrB2 = b(fArr2, fArr2, fArr4, fArr3);
                    if (!Arrays.equals(fArr4, fArrB2)) {
                        e9.i0(fArrB2);
                    }
                }
            }
            i8++;
            e8 = e9;
        }
        return e8.m0();
    }

    public static float[] b(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
        H1.c("Expecting 4 plane parameters", fArr2.length == 4);
        float f8 = fArr[0];
        float f9 = fArr3[0];
        float f10 = fArr2[0];
        float f11 = fArr[1];
        float f12 = fArr3[1];
        float f13 = fArr2[1];
        float f14 = fArr[2];
        float f15 = fArr3[2];
        float f16 = fArr2[2];
        float f17 = ((f14 - f15) * f16) + ((f11 - f12) * f13) + ((f8 - f9) * f10);
        float f18 = fArr4[0] - f9;
        float f19 = fArr4[1] - f12;
        float f20 = fArr4[2] - f15;
        float f21 = f17 / ((f16 * f20) + ((f13 * f19) + (f10 * f18)));
        return new float[]{(f18 * f21) + f9, (f19 * f21) + f12, (f20 * f21) + f15, 1.0f};
    }

    public static p117p0.F c(int i8, int i9, List list) {
        H1.c("inputWidth must be positive", i8 > 0);
        H1.c("inputHeight must be positive", i9 > 0);
        p117p0.F f8 = new p117p0.F(i8, i9);
        for (int i10 = 0; i10 < list.size(); i10++) {
            f8 = ((P) list.get(i10)).d(f8.f28039a, f8.f28040b);
        }
        return f8;
    }

    public static boolean d(float[] fArr, float[] fArr2) {
        H1.c("Expecting 4 plane parameters", fArr2.length == 4);
        return (fArr2[2] * fArr[2]) + ((fArr2[1] * fArr[1]) + (fArr2[0] * fArr[0])) <= fArr2[3];
    }

    public static z4.d0 e(float[] fArr, z4.H h8) {
        z4.E e8 = new z4.E();
        for (int i8 = 0; i8 < h8.size(); i8++) {
            float[] fArr2 = new float[4];
            Matrix.multiplyMV(fArr2, 0, fArr, 0, (float[]) h8.get(i8), 0);
            float f8 = fArr2[0];
            float f9 = fArr2[3];
            fArr2[0] = f8 / f9;
            fArr2[1] = fArr2[1] / f9;
            fArr2[2] = fArr2[2] / f9;
            fArr2[3] = 1.0f;
            e8.i0(fArr2);
        }
        return e8.m0();
    }
}
