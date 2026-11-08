package K0;

import D0.U;
import U0.C0344j;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class A implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f4304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i f4305b;

    public A(MediaCodec mediaCodec, i iVar) {
        this.f4304a = mediaCodec;
        this.f4305b = iVar;
        if (Build.VERSION.SDK_INT < 35 || iVar == null) {
            return;
        }
        iVar.a(mediaCodec);
    }

    @Override // K0.l
    public final void b(int i8, p171w0.c cVar, long j8, int i9) {
        this.f4304a.queueSecureInputBuffer(i8, 0, cVar.f30900i, j8, i9);
    }

    @Override // K0.l
    public final void d(Bundle bundle) {
        this.f4304a.setParameters(bundle);
    }

    @Override // K0.l
    public final void e(long j8, int i8, int i9, int i10) {
        this.f4304a.queueInputBuffer(i8, 0, i9, j8, i10);
    }

    @Override // K0.l
    public final void f(int i8) {
        this.f4304a.releaseOutputBuffer(i8, false);
    }

    @Override // K0.l
    public final void flush() {
        this.f4304a.flush();
    }

    @Override // K0.l
    public final void g(C0344j c0344j, Handler handler) {
        this.f4304a.setOnFrameRenderedListener(new C0227a(this, c0344j, 1), handler);
    }

    @Override // K0.l
    public final MediaFormat h() {
        return this.f4304a.getOutputFormat();
    }

    @Override // K0.l
    public final void i() {
        this.f4304a.detachOutputSurface();
    }

    @Override // K0.l
    public final void j(int i8, long j8) {
        this.f4304a.releaseOutputBuffer(i8, j8);
    }

    @Override // K0.l
    public final int k() {
        return this.f4304a.dequeueInputBuffer(0L);
    }

    @Override // K0.l
    public final int l(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f4304a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // K0.l
    public final void m(int i8) {
        this.f4304a.setVideoScalingMode(i8);
    }

    @Override // K0.l
    public final /* synthetic */ boolean n(U u7) {
        return false;
    }

    @Override // K0.l
    public final ByteBuffer o(int i8) {
        return this.f4304a.getInputBuffer(i8);
    }

    @Override // K0.l
    public final void p(Surface surface) {
        this.f4304a.setOutputSurface(surface);
    }

    @Override // K0.l
    public final ByteBuffer q(int i8) {
        return this.f4304a.getOutputBuffer(i8);
    }

    @Override // K0.l
    public final void release() {
        i iVar = this.f4305b;
        MediaCodec mediaCodec = this.f4304a;
        try {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 30 && i8 < 33) {
                mediaCodec.stop();
            }
        } finally {
            if (Build.VERSION.SDK_INT >= 35 && iVar != null) {
                iVar.c(mediaCodec);
            }
            mediaCodec.release();
        }
    }
}
