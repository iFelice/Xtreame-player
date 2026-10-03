package A0;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;
import p094m0.C3126i;
import p094m0.o0;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: A0.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0013m extends AbstractC0001a implements InterfaceC0024y, T {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final z4.d0 f174s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final float[] f175t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final float[] f176u;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p117p0.o f177h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final z4.H f178i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final z4.H f179j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float[][] f180k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final float[][] f181l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float[] f182m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float[] f183n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float[] f184o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f185p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public z4.d0 f186q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f187r;

    static {
        z4.F f8 = z4.H.f31804H;
        Object[] objArr = {new float[]{-1.0f, -1.0f, 0.0f, 1.0f}, new float[]{-1.0f, 1.0f, 0.0f, 1.0f}, new float[]{1.0f, 1.0f, 0.0f, 1.0f}, new float[]{1.0f, -1.0f, 0.0f, 1.0f}};
        Cw.d(4, objArr);
        f174s = z4.H.p(4, objArr);
        f175t = new float[]{1.0f, 1.0f, 1.0f, 0.0f, -0.1646f, 1.8814f, 1.4746f, -0.5714f, 0.0f};
        f176u = new float[]{1.1689f, 1.1689f, 1.1689f, 0.0f, -0.1881f, 2.1502f, 1.6853f, -0.653f, 0.0f};
    }

    public C0013m(p117p0.o oVar, z4.H h8, z4.H h9, boolean z7) {
        super(z7, 1);
        this.f177h = oVar;
        this.f178i = h8;
        this.f179j = h9;
        int[] iArr = {h8.size(), 16};
        Class cls = Float.TYPE;
        this.f180k = (float[][]) Array.newInstance((Class<?>) cls, iArr);
        this.f181l = (float[][]) Array.newInstance((Class<?>) cls, h9.size(), 16);
        this.f182m = AbstractC3164b.j();
        this.f183n = AbstractC3164b.j();
        this.f184o = new float[16];
        this.f186q = f174s;
        this.f187r = -1;
        int iMax = 9729;
        for (int i8 = 0; i8 < h8.size(); i8++) {
            iMax = Math.max(iMax, ((P) h8.get(i8)).c());
        }
        this.f185p = iMax;
    }

    public static C0013m j(Context context, z4.d0 d0Var, z4.d0 d0Var2, boolean z7) {
        return new C0013m(l(context, "shaders/vertex_shader_transformation_es2.glsl", d0Var2.isEmpty() ? "shaders/fragment_shader_copy_es2.glsl" : "shaders/fragment_shader_transformation_es2.glsl"), z4.H.s(d0Var), z4.H.s(d0Var2), z7);
    }

    public static C0013m k(Context context, z4.d0 d0Var, List list, C3126i c3126i, int i8) {
        String str;
        boolean zG = C3126i.g(c3126i);
        boolean z7 = i8 == 2;
        String str2 = zG ? "shaders/vertex_shader_transformation_es3.glsl" : "shaders/vertex_shader_transformation_es2.glsl";
        if (zG) {
            str = "shaders/fragment_shader_oetf_es3.glsl";
        } else if (z7) {
            str = "shaders/fragment_shader_transformation_sdr_oetf_es2.glsl";
        } else {
            str = list.isEmpty() ? "shaders/fragment_shader_copy_es2.glsl" : "shaders/fragment_shader_transformation_es2.glsl";
        }
        p117p0.o oVarL = l(context, str2, str);
        int i9 = c3126i.f26874c;
        if (zG) {
            H1.d(i9 == 7 || i9 == 6);
            oVarL.g(i9, "uOutputColorTransfer");
        } else if (z7) {
            H1.d(i9 == 3 || i9 == 10);
            oVarL.g(i9, "uOutputColorTransfer");
        }
        return new C0013m(oVarL, z4.H.s(d0Var), z4.H.s(list), zG);
    }

    public static p117p0.o l(Context context, String str, String str2) {
        try {
            p117p0.o oVar = new p117p0.o(context, str, str2);
            oVar.e("uTexTransformationMatrix", AbstractC3164b.j());
            return oVar;
        } catch (IOException | p117p0.p e8) {
            throw new o0(e8);
        }
    }

    public static C0013m m(p117p0.o oVar, C3126i c3126i, C3126i c3126i2, int i8, z4.d0 d0Var) {
        boolean zG = C3126i.g(c3126i);
        int i9 = c3126i.f26872a;
        boolean z7 = (i9 == 1 || i9 == 2) && c3126i2.f26872a == 6;
        int i10 = c3126i2.f26874c;
        if (zG) {
            if (i10 == 3) {
                i10 = 10;
            }
            H1.d(i10 == 1 || i10 == 10 || i10 == 6 || i10 == 7);
            oVar.g(i10, "uOutputColorTransfer");
        } else if (z7) {
            H1.d(i10 == 1 || i10 == 6 || i10 == 7);
            oVar.g(i10, "uOutputColorTransfer");
        } else {
            oVar.g(i8, "uSdrWorkingColorSpace");
            H1.d(i10 == 3 || i10 == 1);
            oVar.g(i10, "uOutputColorTransfer");
        }
        return new C0013m(oVar, d0Var, z4.d0.f31844K, zG || z7);
    }

    public static boolean o(float[][] fArr, float[][] fArr2) {
        boolean z7 = false;
        for (int i8 = 0; i8 < fArr.length; i8++) {
            float[] fArr3 = fArr[i8];
            float[] fArr4 = fArr2[i8];
            if (!Arrays.equals(fArr3, fArr4)) {
                H1.h("A 4x4 transformation matrix must have 16 elements", fArr4.length == 16);
                System.arraycopy(fArr4, 0, fArr3, 0, fArr4.length);
                z7 = true;
            }
        }
        return z7;
    }

    @Override // A0.AbstractC0001a
    public final p117p0.F g(int i8, int i9) {
        return Q.c(i8, i9, this.f178i);
    }

    @Override // A0.AbstractC0001a
    public final void h(int i8, long j8) throws o0 {
        p117p0.o oVar = this.f177h;
        z4.H h8 = this.f179j;
        int[] iArr = {h8.size(), 16};
        Class cls = Float.TYPE;
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) cls, iArr);
        if (h8.size() > 0) {
            O.I(h8.get(0));
            throw null;
        }
        boolean zO = o(this.f181l, fArr);
        float[] fArr2 = this.f183n;
        if (zO) {
            AbstractC3164b.F(fArr2);
            if (h8.size() > 0) {
                O.I(h8.get(0));
                throw null;
            }
        }
        z4.H h9 = this.f178i;
        float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) cls, h9.size(), 16);
        for (int i9 = 0; i9 < h9.size(); i9++) {
            fArr3[i9] = ((P) h9.get(i9)).b(j8);
        }
        float[][] fArr4 = this.f180k;
        boolean zO2 = o(fArr4, fArr3);
        float[] fArr5 = this.f182m;
        if (zO2) {
            AbstractC3164b.F(fArr5);
            this.f186q = f174s;
            int length = fArr4.length;
            int i10 = 0;
            while (true) {
                float[] fArr6 = this.f184o;
                if (i10 >= length) {
                    Matrix.invertM(fArr6, 0, fArr5, 0);
                    this.f186q = Q.e(fArr6, this.f186q);
                    break;
                }
                float[] fArr7 = fArr4[i10];
                Matrix.multiplyMM(fArr6, 0, fArr7, 0, this.f182m, 0);
                System.arraycopy(fArr6, 0, fArr5, 0, fArr6.length);
                z4.d0 d0VarA = Q.a(Q.e(fArr7, this.f186q));
                this.f186q = d0VarA;
                if (d0VarA.size() < 3) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        if (this.f186q.size() < 3) {
            return;
        }
        try {
            oVar.i();
            n();
            oVar.h(i8, this.f185p);
            oVar.e("uTransformationMatrix", fArr5);
            oVar.f(fArr2);
            oVar.d(AbstractC3164b.o(this.f186q));
            oVar.b();
            GLES20.glDrawArrays(6, 0, this.f186q.size());
            AbstractC3164b.e();
        } catch (p117p0.p e8) {
            throw new o0(e8);
        }
    }

    @Override // A0.AbstractC0001a
    public final boolean i() {
        return true;
    }

    @Override // A0.K
    public final void release() {
        try {
            this.f112a.b();
            try {
                GLES20.glDeleteProgram(this.f177h.f28111a);
                AbstractC3164b.e();
                int i8 = this.f187r;
                if (i8 != -1) {
                    GLES20.glDeleteTextures(1, new int[]{i8}, 0);
                    AbstractC3164b.e();
                }
            } catch (p117p0.p e8) {
                throw new o0((Throwable) e8);
            }
        } catch (p117p0.p e9) {
            throw new o0((Throwable) e9);
        }
    }

    public final void n() {
    }
}
