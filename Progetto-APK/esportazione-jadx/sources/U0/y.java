package U0;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.Log;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import com.google.android.gms.internal.measurement.H1;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import okhttp3.internal.http2.Http2;
import p117p0.AbstractC3164b;

/* JADX INFO: loaded from: classes.dex */
public final class y implements GLSurfaceView.Renderer {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final float[] f6881Q = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final float[] f6882R = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final float[] f6883S = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final String[] f6884T = {"y_tex", "u_tex", "v_tex"};

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final FloatBuffer f6885U = AbstractC3164b.l(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final GLSurfaceView f6886G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int[] f6887H = new int[3];

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int[] f6888I = new int[3];

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int[] f6889J = new int[3];

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int[] f6890K = new int[3];

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final AtomicReference f6891L = new AtomicReference();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final FloatBuffer[] f6892M = new FloatBuffer[3];

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public p117p0.o f6893N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f6894O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public VideoDecoderOutputBuffer f6895P;

    public y(GLSurfaceView gLSurfaceView) {
        this.f6886G = gLSurfaceView;
        for (int i8 = 0; i8 < 3; i8++) {
            int[] iArr = this.f6889J;
            this.f6890K[i8] = -1;
            iArr[i8] = -1;
        }
    }

    public final void a() {
        int[] iArr = this.f6887H;
        try {
            GLES20.glGenTextures(3, iArr, 0);
            for (int i8 = 0; i8 < 3; i8++) {
                p117p0.o oVar = this.f6893N;
                GLES20.glUniform1i(GLES20.glGetUniformLocation(oVar.f28111a, f6884T[i8]), i8);
                GLES20.glActiveTexture(33984 + i8);
                AbstractC3164b.c(3553, iArr[i8], 9729);
            }
            AbstractC3164b.e();
        } catch (p117p0.p e8) {
            Log.e("VideoDecoderGLSV", "Failed to set up the textures", e8);
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onDrawFrame(GL10 gl10) {
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) this.f6891L.getAndSet(null);
        if (videoDecoderOutputBuffer == null && this.f6895P == null) {
            return;
        }
        if (videoDecoderOutputBuffer != null) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f6895P;
            if (videoDecoderOutputBuffer2 != null) {
                videoDecoderOutputBuffer2.release();
            }
            this.f6895P = videoDecoderOutputBuffer;
        }
        VideoDecoderOutputBuffer videoDecoderOutputBuffer3 = this.f6895P;
        videoDecoderOutputBuffer3.getClass();
        float[] fArr = f6882R;
        int i8 = videoDecoderOutputBuffer3.colorspace;
        if (i8 == 1) {
            fArr = f6881Q;
        } else if (i8 == 3) {
            fArr = f6883S;
        }
        GLES20.glUniformMatrix3fv(this.f6894O, 1, false, fArr, 0);
        int[] iArr = videoDecoderOutputBuffer3.yuvStrides;
        iArr.getClass();
        ByteBuffer[] byteBufferArr = videoDecoderOutputBuffer3.yuvPlanes;
        byteBufferArr.getClass();
        for (int i9 = 0; i9 < 3; i9++) {
            int i10 = videoDecoderOutputBuffer3.height;
            if (i9 != 0) {
                i10 = (i10 + 1) / 2;
            }
            int i11 = i10;
            GLES20.glActiveTexture(33984 + i9);
            GLES20.glBindTexture(3553, this.f6887H[i9]);
            GLES20.glPixelStorei(3317, 1);
            GLES20.glTexImage2D(3553, 0, 6409, iArr[i9], i11, 0, 6409, 5121, byteBufferArr[i9]);
        }
        int i12 = videoDecoderOutputBuffer3.width;
        int i13 = (i12 + 1) / 2;
        int[] iArr2 = {i12, i13, i13};
        for (int i14 = 0; i14 < 3; i14++) {
            int[] iArr3 = this.f6889J;
            int i15 = iArr3[i14];
            int i16 = iArr2[i14];
            int[] iArr4 = this.f6890K;
            if (i15 != i16 || iArr4[i14] != iArr[i14]) {
                H1.i(iArr[i14] != 0);
                float f8 = iArr2[i14] / iArr[i14];
                FloatBuffer floatBufferL = AbstractC3164b.l(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f8, 0.0f, f8, 1.0f});
                FloatBuffer[] floatBufferArr = this.f6892M;
                floatBufferArr[i14] = floatBufferL;
                GLES20.glVertexAttribPointer(this.f6888I[i14], 2, 5126, false, 0, (Buffer) floatBufferArr[i14]);
                iArr3[i14] = iArr2[i14];
                iArr4[i14] = iArr[i14];
            }
        }
        GLES20.glClear(Http2.INITIAL_MAX_FRAME_SIZE);
        GLES20.glDrawArrays(5, 0, 4);
        try {
            AbstractC3164b.e();
        } catch (p117p0.p e8) {
            Log.e("VideoDecoderGLSV", "Failed to draw a frame", e8);
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceChanged(GL10 gl10, int i8, int i9) {
        GLES20.glViewport(0, 0, i8, i9);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        int[] iArr = this.f6888I;
        try {
            p117p0.o oVar = new p117p0.o("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
            this.f6893N = oVar;
            GLES20.glVertexAttribPointer(oVar.c("in_pos"), 2, 5126, false, 0, (Buffer) f6885U);
            iArr[0] = this.f6893N.c("in_tc_y");
            iArr[1] = this.f6893N.c("in_tc_u");
            iArr[2] = this.f6893N.c("in_tc_v");
            this.f6894O = GLES20.glGetUniformLocation(this.f6893N.f28111a, "mColorConversion");
            AbstractC3164b.e();
            a();
            AbstractC3164b.e();
        } catch (p117p0.p e8) {
            Log.e("VideoDecoderGLSV", "Failed to set up the textures and program", e8);
        }
    }
}
