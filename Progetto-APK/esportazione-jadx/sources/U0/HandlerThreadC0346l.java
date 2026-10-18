package U0;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.google.android.gms.internal.ads.C0997Xm;
import com.google.android.gms.internal.ads.C1595l;
import com.google.android.gms.internal.ads.RunnableC0797Jm;
import com.google.android.gms.internal.ads.Zo;
import java.util.Locale;
import p117p0.AbstractC3164b;
import p117p0.RunnableC3174l;

/* JADX INFO: renamed from: U0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class HandlerThreadC0346l extends HandlerThread implements Handler.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6813G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Handler f6814H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Error f6815I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public RuntimeException f6816J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f6817K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Surface f6818L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HandlerThreadC0346l(int i8) {
        super("ExoPlayer:PlaceholderSurface");
        this.f6813G = i8;
    }

    private void a(Message message) {
        int i8 = message.what;
        try {
            if (i8 != 1) {
                if (i8 != 2) {
                    return;
                }
                try {
                    c();
                } catch (Throwable th) {
                    try {
                        p117p0.x.d("PlaceholderSurface", "Failed to release placeholder surface", th);
                    } finally {
                        quit();
                    }
                }
                return;
            }
            try {
                b(message.arg1);
                synchronized (this) {
                    notify();
                }
            } catch (Error e8) {
                p117p0.x.d("PlaceholderSurface", "Failed to initialize placeholder surface", e8);
                this.f6815I = e8;
                synchronized (this) {
                    notify();
                }
            } catch (RuntimeException e9) {
                p117p0.x.d("PlaceholderSurface", "Failed to initialize placeholder surface", e9);
                this.f6816J = e9;
                synchronized (this) {
                    notify();
                }
            } catch (p117p0.p e10) {
                p117p0.x.d("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                this.f6816J = new IllegalStateException(e10);
                synchronized (this) {
                    notify();
                }
            }
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }

    public final void b(int i8) throws p117p0.p {
        EGLSurface eGLSurfaceEglCreatePbufferSurface;
        ((RunnableC3174l) this.f6817K).getClass();
        RunnableC3174l runnableC3174l = (RunnableC3174l) this.f6817K;
        runnableC3174l.getClass();
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        AbstractC3164b.f("eglGetDisplay failed", eGLDisplayEglGetDisplay != null);
        int[] iArr = new int[2];
        AbstractC3164b.f("eglInitialize failed", EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1));
        runnableC3174l.f28097I = eGLDisplayEglGetDisplay;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr2 = new int[1];
        boolean zEglChooseConfig = EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, RunnableC3174l.f28094M, 0, eGLConfigArr, 0, 1, iArr2, 0);
        boolean z7 = zEglChooseConfig && iArr2[0] > 0 && eGLConfigArr[0] != null;
        Object[] objArr = {Boolean.valueOf(zEglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]};
        String str = p117p0.M.f28050a;
        AbstractC3164b.f(String.format(Locale.US, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", objArr), z7);
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(runnableC3174l.f28097I, eGLConfig, EGL14.EGL_NO_CONTEXT, i8 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        AbstractC3164b.f("eglCreateContext failed", eGLContextEglCreateContext != null);
        runnableC3174l.f28098J = eGLContextEglCreateContext;
        EGLDisplay eGLDisplay = runnableC3174l.f28097I;
        if (i8 == 1) {
            eGLSurfaceEglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i8 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            AbstractC3164b.f("eglCreatePbufferSurface failed", eGLSurfaceEglCreatePbufferSurface != null);
        }
        AbstractC3164b.f("eglMakeCurrent failed", EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext));
        runnableC3174l.f28099K = eGLSurfaceEglCreatePbufferSurface;
        int[] iArr3 = runnableC3174l.f28096H;
        GLES20.glGenTextures(1, iArr3, 0);
        AbstractC3164b.e();
        SurfaceTexture surfaceTexture = new SurfaceTexture(iArr3[0]);
        runnableC3174l.f28100L = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(runnableC3174l);
        SurfaceTexture surfaceTexture2 = ((RunnableC3174l) this.f6817K).f28100L;
        surfaceTexture2.getClass();
        this.f6818L = new C0347m(this, surfaceTexture2, i8 != 0);
    }

    public final void c() {
        ((RunnableC3174l) this.f6817K).getClass();
        RunnableC3174l runnableC3174l = (RunnableC3174l) this.f6817K;
        runnableC3174l.f28095G.removeCallbacks(runnableC3174l);
        try {
            SurfaceTexture surfaceTexture = runnableC3174l.f28100L;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, runnableC3174l.f28096H, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = runnableC3174l.f28097I;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = runnableC3174l.f28097I;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = runnableC3174l.f28099K;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(runnableC3174l.f28097I, runnableC3174l.f28099K);
            }
            EGLContext eGLContext = runnableC3174l.f28098J;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(runnableC3174l.f28097I, eGLContext);
            }
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay3 = runnableC3174l.f28097I;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(runnableC3174l.f28097I);
            }
            runnableC3174l.f28097I = null;
            runnableC3174l.f28098J = null;
            runnableC3174l.f28099K = null;
            runnableC3174l.f28100L = null;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f6813G) {
            case 0:
                a(message);
                return true;
            default:
                int i8 = message.what;
                try {
                    if (i8 != 1) {
                        if (i8 == 2) {
                            try {
                                RunnableC0797Jm runnableC0797Jm = (RunnableC0797Jm) this.f6817K;
                                runnableC0797Jm.getClass();
                                runnableC0797Jm.b();
                            } catch (Throwable th) {
                                try {
                                    Zo.d("PlaceholderSurface", "Failed to release placeholder surface", th);
                                } finally {
                                    quit();
                                }
                            }
                        }
                        break;
                    } else {
                        try {
                            try {
                                try {
                                    int i9 = message.arg1;
                                    RunnableC0797Jm runnableC0797Jm2 = (RunnableC0797Jm) this.f6817K;
                                    runnableC0797Jm2.getClass();
                                    runnableC0797Jm2.a(i9);
                                    SurfaceTexture surfaceTexture = ((RunnableC0797Jm) this.f6817K).f14202L;
                                    surfaceTexture.getClass();
                                    this.f6818L = new C1595l(this, surfaceTexture, i9 != 0);
                                    synchronized (this) {
                                        notify();
                                    }
                                } catch (RuntimeException e8) {
                                    Zo.d("PlaceholderSurface", "Failed to initialize placeholder surface", e8);
                                    this.f6816J = e8;
                                    synchronized (this) {
                                        notify();
                                    }
                                }
                            } catch (Error e9) {
                                Zo.d("PlaceholderSurface", "Failed to initialize placeholder surface", e9);
                                this.f6815I = e9;
                                synchronized (this) {
                                    notify();
                                }
                            }
                        } catch (C0997Xm e10) {
                            Zo.d("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                            this.f6816J = new IllegalStateException(e10);
                            synchronized (this) {
                                notify();
                            }
                        }
                        break;
                    }
                    return true;
                } catch (Throwable th2) {
                    synchronized (this) {
                        notify();
                        throw th2;
                    }
                }
        }
    }
}
