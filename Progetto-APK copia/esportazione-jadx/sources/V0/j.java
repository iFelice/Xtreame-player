package V0;

import U0.r;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes.dex */
public final class j implements GLSurfaceView.Renderer, c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final i f7053G;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final float[] f7056J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final float[] f7057K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final float[] f7058L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public float f7059M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public float f7060N;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ k f7063Q;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final float[] f7054H = new float[16];

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final float[] f7055I = new float[16];

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final float[] f7061O = new float[16];

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final float[] f7062P = new float[16];

    public j(k kVar, i iVar) {
        this.f7063Q = kVar;
        float[] fArr = new float[16];
        this.f7056J = fArr;
        float[] fArr2 = new float[16];
        this.f7057K = fArr2;
        float[] fArr3 = new float[16];
        this.f7058L = fArr3;
        this.f7053G = iVar;
        Matrix.setIdentityM(fArr, 0);
        Matrix.setIdentityM(fArr2, 0);
        Matrix.setIdentityM(fArr3, 0);
        this.f7060N = 3.1415927f;
    }

    @Override // V0.c
    public final synchronized void a(float[] fArr, float f8) {
        float[] fArr2 = this.f7056J;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        float f9 = -f8;
        this.f7060N = f9;
        Matrix.setRotateM(this.f7057K, 0, -this.f7059M, (float) Math.cos(f9), (float) Math.sin(this.f7060N), 0.0f);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            Matrix.multiplyMM(this.f7062P, 0, this.f7056J, 0, this.f7058L, 0);
            Matrix.multiplyMM(this.f7061O, 0, this.f7057K, 0, this.f7062P, 0);
        }
        Matrix.multiplyMM(this.f7055I, 0, this.f7054H, 0, this.f7061O, 0);
        this.f7053G.d(this.f7055I);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i8, int i9) {
        GLES20.glViewport(0, 0, i8, i9);
        float f8 = i8 / i9;
        Matrix.perspectiveM(this.f7054H, 0, f8 > 1.0f ? (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f8))) * 2.0d) : 90.0f, f8, 0.1f, 100.0f);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        k kVar = this.f7063Q;
        kVar.f7069K.post(new r(4, kVar, this.f7053G.e()));
    }
}
