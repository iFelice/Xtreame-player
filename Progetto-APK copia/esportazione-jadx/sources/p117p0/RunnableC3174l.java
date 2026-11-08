package p117p0;

import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;

/* JADX INFO: renamed from: p0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3174l implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final int[] f28094M = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Handler f28095G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int[] f28096H = new int[1];

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public EGLDisplay f28097I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public EGLContext f28098J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public EGLSurface f28099K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public SurfaceTexture f28100L;

    public RunnableC3174l(Handler handler) {
        this.f28095G = handler;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f28095G.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.f28100L;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }
}
