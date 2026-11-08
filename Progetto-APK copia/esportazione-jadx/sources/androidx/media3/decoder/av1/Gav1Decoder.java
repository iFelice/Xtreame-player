package androidx.media3.decoder.av1;

import B0.C0073x;
import android.view.Surface;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import java.nio.ByteBuffer;
import p117p0.M;
import p171w0.e;
import p171w0.g;
import p171w0.i;
import p171w0.k;
import p179x0.a;
import p179x0.c;

/* JADX INFO: loaded from: classes.dex */
public final class Gav1Decoder extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile int f9397b;

    public Gav1Decoder(int i8, int i9, int i10, int i11) throws a {
        super(new g[i8], new VideoDecoderOutputBuffer[i9]);
        if (!c.f31179a.isAvailable()) {
            throw new a("Failed to load decoder native library.");
        }
        if (i11 == 0 && (i11 = gav1GetThreads()) <= 0) {
            i11 = Runtime.getRuntime().availableProcessors();
        }
        long jGav1Init = gav1Init(i11);
        this.f9396a = jGav1Init;
        if (jGav1Init != 0 && gav1CheckError(jGav1Init) != 0) {
            setInitialInputBufferSize(i10);
        } else {
            throw new a("Failed to initialize decoder. Error: " + gav1GetErrorMessage(jGav1Init));
        }
    }

    private native int gav1CheckError(long j8);

    private native void gav1Close(long j8);

    private native int gav1Decode(long j8, ByteBuffer byteBuffer, int i8);

    private native String gav1GetErrorMessage(long j8);

    private native int gav1GetFrame(long j8, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z7);

    private native int gav1GetThreads();

    private native long gav1Init(int i8);

    private native void gav1ReleaseFrame(long j8, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    private native int gav1RenderFrame(long j8, Surface surface, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    @Override // p171w0.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void releaseOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        if (videoDecoderOutputBuffer.mode == 1 && !videoDecoderOutputBuffer.shouldBeSkipped) {
            gav1ReleaseFrame(this.f9396a, videoDecoderOutputBuffer);
        }
        super.releaseOutputBuffer(videoDecoderOutputBuffer);
    }

    @Override // p171w0.k
    public final g createInputBuffer() {
        return new g(2, 0);
    }

    @Override // p171w0.k
    public final i createOutputBuffer() {
        return new VideoDecoderOutputBuffer(new C0073x(this, 1));
    }

    @Override // p171w0.k
    public final e createUnexpectedDecodeException(Throwable th) {
        return new a("Unexpected decode error", th);
    }

    public final void d(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws a {
        if (videoDecoderOutputBuffer.mode != 1) {
            throw new a("Invalid output mode.");
        }
        long j8 = this.f9396a;
        if (gav1RenderFrame(j8, surface, videoDecoderOutputBuffer) != 0) {
            return;
        }
        throw new a("Buffer render error: " + gav1GetErrorMessage(j8));
    }

    @Override // p171w0.k
    public final e decode(g gVar, i iVar, boolean z7) {
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) iVar;
        ByteBuffer byteBuffer = gVar.f30904I;
        String str = M.f28050a;
        if (gav1Decode(this.f9396a, byteBuffer, byteBuffer.limit()) == 0) {
            return new a("gav1Decode error: " + gav1GetErrorMessage(this.f9396a));
        }
        boolean z8 = !isAtLeastOutputStartTimeUs(gVar.f30906K);
        if (!z8) {
            videoDecoderOutputBuffer.init(gVar.f30906K, this.f9397b, null);
        }
        int iGav1GetFrame = gav1GetFrame(this.f9396a, videoDecoderOutputBuffer, z8);
        if (iGav1GetFrame == 0) {
            return new a("gav1GetFrame error: " + gav1GetErrorMessage(this.f9396a));
        }
        if (iGav1GetFrame == 2) {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
        }
        if (!z8) {
            videoDecoderOutputBuffer.format = gVar.f30902G;
        }
        return null;
    }

    @Override // p171w0.d
    public final String getName() {
        return "libgav1";
    }

    @Override // p171w0.k, p171w0.d
    public final void release() {
        super.release();
        gav1Close(this.f9396a);
    }
}
