package U0;

import android.content.Context;
import android.opengl.GLSurfaceView;
import androidx.media3.decoder.VideoDecoderOutputBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class z extends GLSurfaceView implements A {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f6896H = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final y f6897G;

    public z(Context context) {
        super(context, null);
        y yVar = new y(this);
        this.f6897G = yVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(yVar);
        setRenderMode(0);
    }

    @Override // U0.A
    public void setOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        y yVar = this.f6897G;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (VideoDecoderOutputBuffer) yVar.f6891L.getAndSet(videoDecoderOutputBuffer);
        if (videoDecoderOutputBuffer2 != null) {
            videoDecoderOutputBuffer2.release();
        }
        yVar.f6886G.requestRender();
    }

    @Deprecated
    public A getVideoDecoderOutputBufferRenderer() {
        return this;
    }
}
