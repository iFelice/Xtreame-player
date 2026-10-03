package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.HandlerThread;
import android.util.Log;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Me, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0834Me extends Thread implements SurfaceTexture.OnFrameAvailableListener, InterfaceC0804Ke {

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final float[] f14713h0 = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0819Le f14714G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final float[] f14715H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final float[] f14716I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final float[] f14717J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final float[] f14718K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final float[] f14719L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final float[] f14720M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final float[] f14721N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public float f14722O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public float f14723P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public float f14724Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f14725R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f14726S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public SurfaceTexture f14727T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public SurfaceTexture f14728U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f14729V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f14730W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f14731X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final FloatBuffer f14732Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final CountDownLatch f14733Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Object f14734a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public EGL10 f14735b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public EGLDisplay f14736c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public EGLContext f14737d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public EGLSurface f14738e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public volatile boolean f14739f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public volatile boolean f14740g0;

    public C0834Me(Context context) {
        super("SphericalVideoProcessor");
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.f14732Y = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(f14713h0).position(0);
        this.f14715H = new float[9];
        this.f14716I = new float[9];
        this.f14717J = new float[9];
        this.f14718K = new float[9];
        this.f14719L = new float[9];
        this.f14720M = new float[9];
        this.f14721N = new float[9];
        this.f14722O = Float.NaN;
        C0819Le c0819Le = new C0819Le(context);
        this.f14714G = c0819Le;
        c0819Le.f14523h = this;
        this.f14733Z = new CountDownLatch(1);
        this.f14734a0 = new Object();
    }

    public static final void f(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            Log.e("SphericalVideoRenderer", str + ": glError " + iGlGetError);
        }
    }

    public static final void g(float[] fArr, float[] fArr2, float[] fArr3) {
        float f8 = fArr2[0] * fArr3[0];
        float f9 = fArr2[1];
        float f10 = fArr3[3];
        float f11 = fArr2[2];
        float f12 = fArr3[6];
        fArr[0] = f8 + (f9 * f10) + (f11 * f12);
        float f13 = fArr2[0];
        float f14 = fArr3[1] * f13;
        float f15 = fArr3[4];
        float f16 = fArr3[7];
        fArr[1] = f14 + (f9 * f15) + (f11 * f16);
        float f17 = f13 * fArr3[2];
        float f18 = fArr2[1];
        float f19 = fArr3[5];
        float f20 = fArr3[8];
        fArr[2] = f17 + (f18 * f19) + (f11 * f20);
        float f21 = fArr2[3];
        float f22 = fArr3[0];
        float f23 = fArr2[4];
        float f24 = fArr2[5];
        fArr[3] = (f21 * f22) + (f10 * f23) + (f24 * f12);
        float f25 = fArr2[3];
        float f26 = fArr3[1];
        fArr[4] = (f25 * f26) + (f23 * f15) + (f24 * f16);
        float f27 = fArr3[2];
        fArr[5] = (f25 * f27) + (fArr2[4] * f19) + (f24 * f20);
        float f28 = fArr2[6] * f22;
        float f29 = fArr2[7];
        float f30 = fArr3[3] * f29;
        float f31 = fArr2[8];
        fArr[6] = f28 + f30 + (f12 * f31);
        float f32 = fArr2[6];
        float f33 = f16 * f31;
        fArr[7] = f33 + (f29 * fArr3[4]) + (f26 * f32);
        fArr[8] = (f32 * f27) + (fArr2[7] * fArr3[5]) + (f31 * f20);
    }

    public static final void h(float[] fArr, float f8) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d6 = f8;
        fArr[4] = (float) Math.cos(d6);
        fArr[5] = (float) (-Math.sin(d6));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d6);
        fArr[8] = (float) Math.cos(d6);
    }

    public static final void i(float[] fArr, float f8) {
        double d6 = f8;
        fArr[0] = (float) Math.cos(d6);
        fArr[1] = (float) (-Math.sin(d6));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d6);
        fArr[4] = (float) Math.cos(d6);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public static final int j(int i8, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i8);
        f("createShader");
        if (iGlCreateShader != 0) {
            GLES20.glShaderSource(iGlCreateShader, str);
            f("shaderSource");
            GLES20.glCompileShader(iGlCreateShader);
            f("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            f("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", "Could not compile shader " + i8 + ":");
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(iGlCreateShader));
                GLES20.glDeleteShader(iGlCreateShader);
                f("deleteShader");
                return 0;
            }
        }
        return iGlCreateShader;
    }

    public final void a() {
        synchronized (this.f14734a0) {
            this.f14734a0.notifyAll();
        }
    }

    public final void b(int i8, int i9) {
        synchronized (this.f14734a0) {
            this.f14726S = i8;
            this.f14725R = i9;
            this.f14739f0 = true;
            this.f14734a0.notifyAll();
        }
    }

    public final void c() {
        synchronized (this.f14734a0) {
            this.f14740g0 = true;
            this.f14728U = null;
            this.f14734a0.notifyAll();
        }
    }

    public final void d(float f8, float f9) {
        int i8 = this.f14726S;
        int i9 = this.f14725R;
        if (i8 <= i9) {
            i8 = i9;
        }
        float f10 = i8;
        this.f14723P -= (f8 * 1.7453293f) / f10;
        float f11 = this.f14724Q - ((f9 * 1.7453293f) / f10);
        this.f14724Q = f11;
        if (f11 < -1.5707964f) {
            this.f14724Q = -1.5707964f;
            f11 = -1.5707964f;
        }
        if (f11 > 1.5707964f) {
            this.f14724Q = 1.5707964f;
        }
    }

    public final void e() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.f14738e0;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            this.f14735b0.eglMakeCurrent(this.f14736c0, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            this.f14735b0.eglDestroySurface(this.f14736c0, this.f14738e0);
            this.f14738e0 = null;
        }
        EGLContext eGLContext = this.f14737d0;
        if (eGLContext != null) {
            this.f14735b0.eglDestroyContext(this.f14736c0, eGLContext);
            this.f14737d0 = null;
        }
        EGLDisplay eGLDisplay = this.f14736c0;
        if (eGLDisplay != null) {
            this.f14735b0.eglTerminate(eGLDisplay);
            this.f14736c0 = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f14731X++;
        synchronized (this.f14734a0) {
            this.f14734a0.notifyAll();
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:6:0x0027  */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z7;
        int iGlCreateProgram;
        char c8 = '\b';
        float f8 = 0.0f;
        if (this.f14728U == null) {
            p120p3.h.d("SphericalVideoProcessor started with no output texture.");
            this.f14733Z.countDown();
            return;
        }
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.f14735b0 = egl10;
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.f14736c0 = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
            z7 = false;
        } else {
            if (this.f14735b0.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                int[] iArr = new int[1];
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                EGLConfig eGLConfig = (this.f14735b0.eglChooseConfig(this.f14736c0, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) && iArr[0] > 0) ? eGLConfigArr[0] : null;
                if (eGLConfig == null) {
                    z7 = false;
                } else {
                    EGL10 egl11 = this.f14735b0;
                    EGLDisplay eGLDisplay = this.f14736c0;
                    EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
                    EGLContext eGLContextEglCreateContext = egl11.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, new int[]{12440, 2, 12344});
                    this.f14737d0 = eGLContextEglCreateContext;
                    if (eGLContextEglCreateContext == null || eGLContextEglCreateContext == eGLContext) {
                        z7 = false;
                    } else {
                        EGLSurface eGLSurfaceEglCreateWindowSurface = this.f14735b0.eglCreateWindowSurface(this.f14736c0, eGLConfig, this.f14728U, null);
                        this.f14738e0 = eGLSurfaceEglCreateWindowSurface;
                        if (eGLSurfaceEglCreateWindowSurface == null || eGLSurfaceEglCreateWindowSurface == EGL10.EGL_NO_SURFACE || !this.f14735b0.eglMakeCurrent(this.f14736c0, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, this.f14737d0)) {
                            z7 = false;
                        } else {
                            z7 = true;
                        }
                    }
                }
            } else {
                z7 = false;
            }
        }
        J7 j8 = Q7.f15797c1;
        C3099q c3099q = C3099q.f26624d;
        int iJ = j(35633, !((String) c3099q.f26627c.a(j8)).equals(j8.e()) ? (String) c3099q.f26627c.a(j8) : "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}");
        if (iJ == 0) {
            iGlCreateProgram = 0;
        } else {
            J7 j9 = Q7.f15806d1;
            int iJ2 = j(35632, !((String) c3099q.f26627c.a(j9)).equals(j9.e()) ? (String) c3099q.f26627c.a(j9) : "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}");
            if (iJ2 == 0) {
                iGlCreateProgram = 0;
            } else {
                iGlCreateProgram = GLES20.glCreateProgram();
                f("createProgram");
                if (iGlCreateProgram != 0) {
                    GLES20.glAttachShader(iGlCreateProgram, iJ);
                    f("attachShader");
                    GLES20.glAttachShader(iGlCreateProgram, iJ2);
                    f("attachShader");
                    GLES20.glLinkProgram(iGlCreateProgram);
                    f("linkProgram");
                    int[] iArr2 = new int[1];
                    GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr2, 0);
                    f("getProgramiv");
                    if (iArr2[0] != 1) {
                        Log.e("SphericalVideoRenderer", "Could not link program: ");
                        Log.e("SphericalVideoRenderer", GLES20.glGetProgramInfoLog(iGlCreateProgram));
                        GLES20.glDeleteProgram(iGlCreateProgram);
                        f("deleteProgram");
                        iGlCreateProgram = 0;
                    } else {
                        GLES20.glValidateProgram(iGlCreateProgram);
                        f("validateProgram");
                    }
                }
            }
        }
        this.f14729V = iGlCreateProgram;
        GLES20.glUseProgram(iGlCreateProgram);
        f("useProgram");
        int iGlGetAttribLocation = GLES20.glGetAttribLocation(this.f14729V, "aPosition");
        GLES20.glVertexAttribPointer(iGlGetAttribLocation, 3, 5126, false, 12, (Buffer) this.f14732Y);
        f("vertexAttribPointer");
        GLES20.glEnableVertexAttribArray(iGlGetAttribLocation);
        f("enableVertexAttribArray");
        int[] iArr3 = new int[1];
        GLES20.glGenTextures(1, iArr3, 0);
        f("genTextures");
        int i8 = iArr3[0];
        GLES20.glBindTexture(36197, i8);
        f("bindTextures");
        GLES20.glTexParameteri(36197, 10240, 9729);
        f("texParameteri");
        GLES20.glTexParameteri(36197, 10241, 9729);
        f("texParameteri");
        GLES20.glTexParameteri(36197, 10242, 33071);
        f("texParameteri");
        GLES20.glTexParameteri(36197, 10243, 33071);
        f("texParameteri");
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(this.f14729V, "uVMat");
        this.f14730W = iGlGetUniformLocation;
        GLES20.glUniformMatrix3fv(iGlGetUniformLocation, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
        int i9 = this.f14729V;
        if (!z7 || i9 == 0) {
            String strConcat = "EGL initialization failed: ".concat(String.valueOf(GLUtils.getEGLErrorString(this.f14735b0.eglGetError())));
            p120p3.h.d(strConcat);
            p083k3.l.f25980A.f25987g.i("SphericalVideoProcessor.run.1", new Throwable(strConcat));
            e();
            this.f14733Z.countDown();
            return;
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(i8);
        this.f14727T = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
        this.f14733Z.countDown();
        C0819Le c0819Le = this.f14714G;
        if (c0819Le.f14522g == null) {
            SensorManager sensorManager = c0819Le.f14516a;
            Sensor defaultSensor = sensorManager.getDefaultSensor(11);
            if (defaultSensor == null) {
                p120p3.h.d("No Sensor of TYPE_ROTATION_VECTOR");
            } else {
                HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
                handlerThread.start();
                E1.W w7 = new E1.W(handlerThread.getLooper(), 1);
                c0819Le.f14522g = w7;
                if (!sensorManager.registerListener(c0819Le, defaultSensor, 0, w7)) {
                    p120p3.h.d("SensorManager.registerListener failed.");
                    c0819Le.b();
                }
            }
        }
        try {
            try {
                this.f14739f0 = true;
                while (!this.f14740g0) {
                    while (this.f14731X > 0) {
                        this.f14727T.updateTexImage();
                        this.f14731X--;
                    }
                    if (this.f14714G.c(this.f14715H)) {
                        if (Float.isNaN(this.f14722O)) {
                            float[] fArr = this.f14715H;
                            float[] fArr2 = {0.0f, 1.0f, 0.0f};
                            float f9 = fArr[0];
                            float f10 = fArr2[0];
                            float f11 = fArr[1];
                            float f12 = fArr2[1];
                            float f13 = (fArr[2] * f8) + (f11 * f12) + (f9 * f10);
                            float f14 = (fArr[5] * f8) + (fArr[3] * f10) + (fArr[4] * f12);
                            float f15 = fArr[6];
                            float f16 = fArr[7];
                            float f17 = fArr[c8];
                            this.f14722O = -(((float) Math.atan2(f14, f13)) - 1.5707964f);
                        }
                        i(this.f14720M, this.f14722O + this.f14723P);
                    } else {
                        h(this.f14715H, -1.5707964f);
                        i(this.f14720M, this.f14723P);
                    }
                    h(this.f14716I, 1.5707964f);
                    g(this.f14717J, this.f14720M, this.f14716I);
                    g(this.f14718K, this.f14715H, this.f14717J);
                    h(this.f14719L, this.f14724Q);
                    g(this.f14721N, this.f14719L, this.f14718K);
                    GLES20.glUniformMatrix3fv(this.f14730W, 1, false, this.f14721N, 0);
                    GLES20.glDrawArrays(5, 0, 4);
                    f("drawArrays");
                    GLES20.glFinish();
                    this.f14735b0.eglSwapBuffers(this.f14736c0, this.f14738e0);
                    if (this.f14739f0) {
                        GLES20.glViewport(0, 0, this.f14726S, this.f14725R);
                        f("viewport");
                        int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(this.f14729V, "uFOVx");
                        int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(this.f14729V, "uFOVy");
                        int i10 = this.f14726S;
                        int i11 = this.f14725R;
                        if (i10 > i11) {
                            GLES20.glUniform1f(iGlGetUniformLocation2, 0.87266463f);
                            GLES20.glUniform1f(iGlGetUniformLocation3, (this.f14725R * 0.87266463f) / this.f14726S);
                        } else {
                            GLES20.glUniform1f(iGlGetUniformLocation2, (i10 * 0.87266463f) / i11);
                            GLES20.glUniform1f(iGlGetUniformLocation3, 0.87266463f);
                        }
                        this.f14739f0 = false;
                    }
                    try {
                        synchronized (this.f14734a0) {
                            try {
                                if (!this.f14740g0 && !this.f14739f0 && this.f14731X == 0) {
                                    this.f14734a0.wait();
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } catch (InterruptedException unused) {
                    }
                    c8 = '\b';
                    f8 = 0.0f;
                }
            } catch (IllegalStateException unused2) {
                p120p3.h.g("SphericalVideoProcessor halted unexpectedly.");
            } catch (Throwable th2) {
                p120p3.h.e("SphericalVideoProcessor died.", th2);
                p083k3.l.f25980A.f25987g.i("SphericalVideoProcessor.run.2", th2);
            }
            this.f14714G.b();
            this.f14727T.setOnFrameAvailableListener(null);
            this.f14727T = null;
            e();
        } catch (Throwable th3) {
            this.f14714G.b();
            this.f14727T.setOnFrameAvailableListener(null);
            this.f14727T = null;
            e();
            throw th3;
        }
    }
}
