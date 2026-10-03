package androidx.media3.decoder.vp9;

import B0.C0073x;
import D0.C0129t;
import android.view.Surface;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import java.nio.ByteBuffer;
import p117p0.M;
import p171w0.c;
import p171w0.e;
import p171w0.g;
import p171w0.i;
import p171w0.k;
import p179x0.a;

/* JADX INFO: loaded from: classes.dex */
public final class VpxDecoder extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CryptoConfig f9442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f9443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer f9444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile int f9445d;

    public VpxDecoder(int i8, int i9, int i10, CryptoConfig cryptoConfig, int i11) throws a {
        super(new g[i8], new VideoDecoderOutputBuffer[i9]);
        if (!VpxLibrary.f9446a.isAvailable()) {
            throw new a("Failed to load decoder native libraries.");
        }
        this.f9442a = cryptoConfig;
        if (cryptoConfig != null && !VpxLibrary.vpxIsSecureDecodeSupported()) {
            throw new a("Vpx decoder does not support secure decode.");
        }
        long jVpxInit = vpxInit(false, false, i11);
        this.f9443b = jVpxInit;
        if (jVpxInit == 0) {
            throw new a("Failed to initialize decoder");
        }
        setInitialInputBufferSize(i10);
    }

    private native long vpxClose(long j8);

    private native long vpxDecode(long j8, ByteBuffer byteBuffer, int i8);

    private native int vpxGetErrorCode(long j8);

    private native String vpxGetErrorMessage(long j8);

    private native int vpxGetFrame(long j8, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    private native long vpxInit(boolean z7, boolean z8, int i8);

    private native int vpxReleaseFrame(long j8, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    private native int vpxRenderFrame(long j8, Surface surface, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    private native long vpxSecureDecode(long j8, ByteBuffer byteBuffer, int i8, CryptoConfig cryptoConfig, int i9, byte[] bArr, byte[] bArr2, int i10, int[] iArr, int[] iArr2);

    @Override // p171w0.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void releaseOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        if (this.f9445d == 1 && !videoDecoderOutputBuffer.shouldBeSkipped) {
            vpxReleaseFrame(this.f9443b, videoDecoderOutputBuffer);
        }
        super.releaseOutputBuffer(videoDecoderOutputBuffer);
    }

    @Override // p171w0.k
    public final g createInputBuffer() {
        return new g(2, 0);
    }

    @Override // p171w0.k
    public final i createOutputBuffer() {
        return new VideoDecoderOutputBuffer(new C0073x(this, 5));
    }

    @Override // p171w0.k
    public final e createUnexpectedDecodeException(Throwable th) {
        return new a("Unexpected decode error", th);
    }

    public final void d(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws a {
        if (vpxRenderFrame(this.f9443b, surface, videoDecoderOutputBuffer) == -1) {
            throw new a("Buffer render failed.");
        }
    }

    @Override // p171w0.k
    public final e decode(g gVar, i iVar, boolean z7) {
        long jVpxDecode;
        ByteBuffer byteBuffer;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) iVar;
        if (z7 && (byteBuffer = this.f9444c) != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = gVar.f30904I;
        String str = M.f28050a;
        int iLimit = byteBuffer2.limit();
        c cVar = gVar.f30903H;
        if (gVar.getFlag(1073741824)) {
            long j8 = this.f9443b;
            CryptoConfig cryptoConfig = this.f9442a;
            int i8 = cVar.f30894c;
            byte[] bArr = cVar.f30893b;
            bArr.getClass();
            byte[] bArr2 = cVar.f30892a;
            bArr2.getClass();
            jVpxDecode = vpxSecureDecode(j8, byteBuffer2, iLimit, cryptoConfig, i8, bArr, bArr2, cVar.f30897f, cVar.f30895d, cVar.f30896e);
        } else {
            jVpxDecode = vpxDecode(this.f9443b, byteBuffer2, iLimit);
        }
        if (jVpxDecode != 0) {
            if (jVpxDecode != -2) {
                return new a("Decode error: " + vpxGetErrorMessage(this.f9443b));
            }
            String str2 = "Drm error: " + vpxGetErrorMessage(this.f9443b);
            vpxGetErrorCode(this.f9443b);
            return new a(str2, new C0129t(str2));
        }
        if (gVar.hasSupplementalData()) {
            ByteBuffer byteBuffer3 = gVar.f30907L;
            byteBuffer3.getClass();
            int iRemaining = byteBuffer3.remaining();
            if (iRemaining > 0) {
                ByteBuffer byteBuffer4 = this.f9444c;
                if (byteBuffer4 == null || byteBuffer4.capacity() < iRemaining) {
                    this.f9444c = ByteBuffer.allocate(iRemaining);
                } else {
                    this.f9444c.clear();
                }
                this.f9444c.put(byteBuffer3);
                this.f9444c.flip();
            }
        }
        if (isAtLeastOutputStartTimeUs(gVar.f30906K)) {
            videoDecoderOutputBuffer.init(gVar.f30906K, this.f9445d, this.f9444c);
            int iVpxGetFrame = vpxGetFrame(this.f9443b, videoDecoderOutputBuffer);
            if (iVpxGetFrame == 1) {
                videoDecoderOutputBuffer.shouldBeSkipped = true;
            } else if (iVpxGetFrame == -1) {
                return new a("Buffer initialization failed.");
            }
            videoDecoderOutputBuffer.format = gVar.f30902G;
        } else {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
        }
        return null;
    }

    @Override // p171w0.d
    public final String getName() {
        return "libvpx" + VpxLibrary.a();
    }

    @Override // p171w0.k, p171w0.d
    public final void release() {
        super.release();
        this.f9444c = null;
        vpxClose(this.f9443b);
    }
}
