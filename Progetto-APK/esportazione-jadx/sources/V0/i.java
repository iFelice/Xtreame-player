package V0;

import B0.C0041c;
import U0.B;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Log;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http2.Http2;
import p094m0.C3136t;
import p117p0.AbstractC3164b;
import p117p0.E;
import p117p0.p;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class i implements B, a {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f7048O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public SurfaceTexture f7049P;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public byte[] f7052S;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AtomicBoolean f7040G = new AtomicBoolean();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicBoolean f7041H = new AtomicBoolean(true);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final g f7042I = new g();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0041c f7043J = new C0041c();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p016c.g f7044K = new p016c.g();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p016c.g f7045L = new p016c.g();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final float[] f7046M = new float[16];

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final float[] f7047N = new float[16];

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public volatile int f7050Q = 0;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f7051R = -1;

    @Override // V0.a
    public final void a(long j8, float[] fArr) {
        ((p016c.g) this.f7043J.f916J).b(fArr, j8);
    }

    @Override // U0.B
    public final void b(long j8, long j9, C3136t c3136t, MediaFormat mediaFormat) {
        int i8;
        int i9;
        int i10;
        ArrayList arrayListV;
        int i11 = 1;
        this.f7044K.b(Long.valueOf(j8), j9);
        byte[] bArr = c3136t.f27012C;
        int i12 = c3136t.f27013D;
        byte[] bArr2 = this.f7052S;
        int i13 = this.f7051R;
        this.f7052S = bArr;
        if (i12 == -1) {
            i12 = this.f7050Q;
        }
        this.f7051R = i12;
        if (i13 == i12 && Arrays.equals(bArr2, this.f7052S)) {
            return;
        }
        byte[] bArr3 = this.f7052S;
        f fVar = null;
        if (bArr3 != null) {
            int i14 = this.f7051R;
            E e8 = new E(bArr3);
            try {
                e8.M(4);
                int iL = e8.l();
                e8.L(0);
                if (iL == 1886547818) {
                    e8.M(8);
                    int i15 = e8.f28036b;
                    int i16 = e8.f28037c;
                    while (true) {
                        if (i15 < i16) {
                            int iL2 = e8.l() + i15;
                            if (iL2 > i15 && iL2 <= i16) {
                                int iL3 = e8.l();
                                if (iL3 != 2037673328 && iL3 != 1836279920) {
                                    e8.L(iL2);
                                    i15 = iL2;
                                }
                                e8.K(iL2);
                                arrayListV = E3.f.v(e8);
                            }
                        }
                        arrayListV = null;
                    }
                } else {
                    arrayListV = E3.f.v(e8);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (arrayListV != null) {
                int size = arrayListV.size();
                if (size == 1) {
                    e eVar = (e) arrayListV.get(0);
                    fVar = new f(eVar, eVar, i14);
                } else if (size == 2) {
                    fVar = new f((e) arrayListV.get(0), (e) arrayListV.get(1), i14);
                }
            }
        }
        if (fVar == null || !g.b(fVar)) {
            int i17 = this.f7051R;
            float radians = (float) Math.toRadians(180.0f);
            float radians2 = (float) Math.toRadians(360.0f);
            float f8 = radians / 36;
            float f9 = radians2 / 72;
            float[] fArr = new float[15984];
            float[] fArr2 = new float[10656];
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            for (int i21 = 36; i18 < i21; i21 = 36) {
                float f10 = radians / 2.0f;
                float f11 = (i18 * f8) - f10;
                int i22 = i18 + 1;
                float f12 = (i22 * f8) - f10;
                int i23 = 0;
                while (i23 < 73) {
                    float f13 = f12;
                    float f14 = f11;
                    int i24 = i22;
                    int i25 = i19;
                    int i26 = i20;
                    int i27 = 0;
                    int i28 = 2;
                    while (i27 < i28) {
                        float f15 = i23 * f9;
                        float f16 = f9;
                        int i29 = i23;
                        float f17 = radians;
                        double d6 = 50.0f;
                        int i30 = i17;
                        double d8 = (3.1415927f + f15) - (radians2 / 2.0f);
                        double d9 = i27 == 0 ? f14 : f13;
                        int i31 = i27;
                        float f18 = f8;
                        fArr[i25] = -((float) (Math.cos(d9) * Math.sin(d8) * d6));
                        int i32 = i18;
                        float[] fArr3 = fArr2;
                        fArr[i25 + 1] = (float) (Math.sin(d9) * d6);
                        int i33 = i25 + 3;
                        fArr[i25 + 2] = (float) (Math.cos(d9) * Math.cos(d8) * d6);
                        fArr3[i26] = f15 / radians2;
                        int i34 = i26 + 2;
                        fArr3[i26 + 1] = ((i32 + i31) * f18) / f17;
                        if (i29 == 0 && i31 == 0) {
                            i9 = i31;
                            i8 = i29;
                            i10 = 3;
                        } else {
                            i8 = i29;
                            i9 = i31;
                            i10 = 3;
                            if (i8 != 72 || i9 != 1) {
                                i26 = i34;
                                i25 = i33;
                            }
                            int i35 = i9 + 1;
                            i23 = i8;
                            fArr2 = fArr3;
                            f9 = f16;
                            radians = f17;
                            i17 = i30;
                            i18 = i32;
                            f8 = f18;
                            i28 = 2;
                            i27 = i35;
                        }
                        System.arraycopy(fArr, i25, fArr, i33, i10);
                        i25 += 6;
                        System.arraycopy(fArr3, i26, fArr3, i34, 2);
                        i26 += 4;
                        int i36 = i9 + 1;
                        i23 = i8;
                        fArr2 = fArr3;
                        f9 = f16;
                        radians = f17;
                        i17 = i30;
                        i18 = i32;
                        f8 = f18;
                        i28 = 2;
                        i27 = i36;
                    }
                    i23++;
                    i20 = i26;
                    i19 = i25;
                    f11 = f14;
                    i22 = i24;
                    radians = radians;
                    i17 = i17;
                    f8 = f8;
                    f12 = f13;
                }
                i18 = i22;
                i11 = 1;
            }
            int i37 = i17;
            p016c.g[] gVarArr = new p016c.g[i11];
            gVarArr[0] = new p016c.g(0, fArr, fArr2, i11);
            e eVar2 = new e(gVarArr);
            fVar = new f(eVar2, eVar2, i37);
        }
        this.f7045L.b(fVar, j9);
    }

    @Override // V0.a
    public final void c() {
        this.f7044K.f();
        C0041c c0041c = this.f7043J;
        ((p016c.g) c0041c.f916J).f();
        c0041c.f913G = false;
        this.f7041H.set(true);
    }

    public final void d(float[] fArr) {
        float[] fArr2;
        Object objI;
        GLES20.glClear(Http2.INITIAL_MAX_FRAME_SIZE);
        try {
            AbstractC3164b.e();
        } catch (p e8) {
            x.d("SceneRenderer", "Failed to draw a frame", e8);
        }
        if (this.f7040G.compareAndSet(true, false)) {
            SurfaceTexture surfaceTexture = this.f7049P;
            surfaceTexture.getClass();
            surfaceTexture.updateTexImage();
            try {
                AbstractC3164b.e();
            } catch (p e9) {
                x.d("SceneRenderer", "Failed to draw a frame", e9);
            }
            if (this.f7041H.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f7046M, 0);
            }
            long timestamp = this.f7049P.getTimestamp();
            p016c.g gVar = this.f7044K;
            synchronized (gVar) {
                objI = gVar.i(timestamp, false);
            }
            Long l4 = (Long) objI;
            if (l4 != null) {
                C0041c c0041c = this.f7043J;
                float[] fArr3 = this.f7046M;
                float[] fArr4 = (float[]) ((p016c.g) c0041c.f916J).k(l4.longValue());
                if (fArr4 != null) {
                    float[] fArr5 = (float[]) c0041c.f915I;
                    float f8 = fArr4[0];
                    float f9 = -fArr4[1];
                    float f10 = -fArr4[2];
                    float length = Matrix.length(f8, f9, f10);
                    if (length != 0.0f) {
                        Matrix.setRotateM(fArr5, 0, (float) Math.toDegrees(length), f8 / length, f9 / length, f10 / length);
                    } else {
                        Matrix.setIdentityM(fArr5, 0);
                    }
                    boolean z7 = c0041c.f913G;
                    Object obj = c0041c.f914H;
                    if (!z7) {
                        C0041c.d((float[]) obj, (float[]) c0041c.f915I);
                        c0041c.f913G = true;
                    }
                    Matrix.multiplyMM(fArr3, 0, (float[]) obj, 0, (float[]) c0041c.f915I, 0);
                }
            }
            f fVar = (f) this.f7045L.k(timestamp);
            if (fVar != null) {
                g gVar2 = this.f7042I;
                gVar2.getClass();
                if (g.b(fVar)) {
                    gVar2.f7031a = fVar.f7026c;
                    gVar2.f7032b = new p016c.g(fVar.f7024a.f7023a[0]);
                    if (!fVar.f7027d) {
                        new p016c.g(fVar.f7025b.f7023a[0]);
                    }
                    gVar2.getClass();
                }
            }
        }
        Matrix.multiplyMM(this.f7047N, 0, fArr, 0, this.f7046M, 0);
        g gVar3 = this.f7042I;
        int i8 = this.f7048O;
        float[] fArr6 = this.f7047N;
        p016c.g gVar4 = gVar3.f7032b;
        if (gVar4 == null) {
            return;
        }
        int i9 = gVar3.f7031a;
        if (i9 == 1) {
            fArr2 = g.f7029j;
        } else {
            fArr2 = i9 == 2 ? g.f7030k : g.f7028i;
        }
        GLES20.glUniformMatrix3fv(gVar3.f7035e, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(gVar3.f7034d, 1, false, fArr6, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i8);
        GLES20.glUniform1i(gVar3.f7038h, 0);
        try {
            AbstractC3164b.e();
        } catch (p e10) {
            Log.e("ProjectionRenderer", "Failed to bind uniforms", e10);
        }
        GLES20.glVertexAttribPointer(gVar3.f7036f, 3, 5126, false, 12, (Buffer) gVar4.f10556J);
        try {
            AbstractC3164b.e();
        } catch (p e11) {
            Log.e("ProjectionRenderer", "Failed to load position data", e11);
        }
        GLES20.glVertexAttribPointer(gVar3.f7037g, 2, 5126, false, 8, (Buffer) gVar4.f10557K);
        try {
            AbstractC3164b.e();
        } catch (p e12) {
            Log.e("ProjectionRenderer", "Failed to load texture data", e12);
        }
        GLES20.glDrawArrays(gVar4.f10555I, 0, gVar4.f10554H);
        try {
            AbstractC3164b.e();
        } catch (p e13) {
            Log.e("ProjectionRenderer", "Failed to render", e13);
        }
    }

    public final SurfaceTexture e() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            AbstractC3164b.e();
            this.f7042I.a();
            AbstractC3164b.e();
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            AbstractC3164b.e();
            int i8 = iArr[0];
            AbstractC3164b.c(36197, i8, 9729);
            this.f7048O = i8;
        } catch (p e8) {
            x.d("SceneRenderer", "Failed to initialize the renderer", e8);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f7048O);
        this.f7049P = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: V0.h
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f7039G.f7040G.set(true);
            }
        });
        return this.f7049P;
    }
}
