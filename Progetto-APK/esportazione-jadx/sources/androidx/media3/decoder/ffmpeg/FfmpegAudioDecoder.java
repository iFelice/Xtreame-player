package androidx.media3.decoder.ffmpeg;

import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.http2.Settings;
import p094m0.C3136t;
import p117p0.E;
import p117p0.M;
import p171w0.e;
import p171w0.g;
import p171w0.h;
import p171w0.i;
import p171w0.k;

/* JADX INFO: loaded from: classes.dex */
final class FfmpegAudioDecoder extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f9399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f9402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile int f9404g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile int f9405h;

    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public FfmpegAudioDecoder(C3136t c3136t, int i8, boolean z7) throws p179x0.a {
        byte[] bArr;
        byte[] bArrArray;
        super(new g[16], new SimpleDecoderOutputBuffer[16]);
        if (!FfmpegLibrary.f9406a.isAvailable()) {
            throw new p179x0.a("Failed to load decoder native libraries.");
        }
        c3136t.f27041o.getClass();
        String str = c3136t.f27041o;
        String strA = FfmpegLibrary.a(str);
        strA.getClass();
        this.f9398a = strA;
        byte b8 = -1;
        switch (str.hashCode()) {
            case -1003765268:
                if (str.equals("audio/vorbis")) {
                    b8 = 0;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b8 = 1;
                }
                break;
            case 1504470054:
                if (str.equals("audio/alac")) {
                    b8 = 2;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b8 = 3;
                }
                break;
        }
        List list = c3136t.f27044r;
        if (b8 != 0) {
            if (b8 == 1) {
                bArrArray = (byte[]) list.get(0);
            } else if (b8 == 2) {
                byte[] bArr2 = (byte[]) list.get(0);
                int length = bArr2.length + 12;
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
                byteBufferAllocate.putInt(length);
                byteBufferAllocate.putInt(1634492771);
                byteBufferAllocate.putInt(0);
                byteBufferAllocate.put(bArr2, 0, bArr2.length);
                bArrArray = byteBufferAllocate.array();
            } else if (b8 != 3) {
                bArrArray = null;
            } else {
                bArrArray = (byte[]) list.get(0);
            }
            bArr = bArrArray;
        } else {
            byte[] bArr3 = (byte[]) list.get(0);
            byte[] bArr4 = (byte[]) list.get(1);
            bArr = new byte[bArr3.length + bArr4.length + 6];
            bArr[0] = (byte) (bArr3.length >> 8);
            bArr[1] = (byte) (bArr3.length & 255);
            System.arraycopy(bArr3, 0, bArr, 2, bArr3.length);
            bArr[bArr3.length + 2] = 0;
            bArr[bArr3.length + 3] = 0;
            bArr[bArr3.length + 4] = (byte) (bArr4.length >> 8);
            bArr[bArr3.length + 5] = (byte) (bArr4.length & 255);
            System.arraycopy(bArr4, 0, bArr, bArr3.length + 6, bArr4.length);
        }
        this.f9399b = bArr;
        this.f9400c = z7 ? 4 : 2;
        this.f9401d = z7 ? 131070 : Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        long jFfmpegInitialize = ffmpegInitialize(strA, bArr, z7, c3136t.f27017H, c3136t.f27016G);
        this.f9402e = jFfmpegInitialize;
        if (jFfmpegInitialize == 0) {
            throw new p179x0.a("Initialization failed.");
        }
        setInitialInputBufferSize(i8);
    }

    private native int ffmpegDecode(long j8, ByteBuffer byteBuffer, int i8, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, ByteBuffer byteBuffer2, int i9);

    private native int ffmpegGetChannelCount(long j8);

    private native int ffmpegGetSampleRate(long j8);

    private native long ffmpegInitialize(String str, byte[] bArr, boolean z7, int i8, int i9);

    private native void ffmpegRelease(long j8);

    private native long ffmpegReset(long j8, byte[] bArr);

    private ByteBuffer growOutputBuffer(SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, int i8) {
        this.f9401d = i8;
        return simpleDecoderOutputBuffer.grow(i8);
    }

    @Override // p171w0.k
    public final g createInputBuffer() {
        return new g(2, FfmpegLibrary.b());
    }

    @Override // p171w0.k
    public final i createOutputBuffer() {
        return new SimpleDecoderOutputBuffer(new h() { // from class: androidx.media3.decoder.ffmpeg.b
            @Override // p171w0.h
            public final void c(i iVar) {
                this.f9409G.releaseOutputBuffer((SimpleDecoderOutputBuffer) iVar);
            }
        });
    }

    @Override // p171w0.k
    public final e createUnexpectedDecodeException(Throwable th) {
        return new p179x0.a("Unexpected decode error", th);
    }

    @Override // p171w0.k
    public final e decode(g gVar, i iVar, boolean z7) {
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) iVar;
        if (z7) {
            long jFfmpegReset = ffmpegReset(this.f9402e, this.f9399b);
            this.f9402e = jFfmpegReset;
            if (jFfmpegReset == 0) {
                return new p179x0.a("Error resetting (see logcat).");
            }
        }
        ByteBuffer byteBuffer = gVar.f30904I;
        String str = M.f28050a;
        int iFfmpegDecode = ffmpegDecode(this.f9402e, byteBuffer, byteBuffer.limit(), simpleDecoderOutputBuffer, simpleDecoderOutputBuffer.init(gVar.f30906K, this.f9401d), this.f9401d);
        if (iFfmpegDecode == -2) {
            return new p179x0.a("Error decoding (see logcat).");
        }
        if (iFfmpegDecode == -1 || iFfmpegDecode == 0) {
            simpleDecoderOutputBuffer.shouldBeSkipped = true;
        } else {
            if (!this.f9403f) {
                this.f9404g = ffmpegGetChannelCount(this.f9402e);
                this.f9405h = ffmpegGetSampleRate(this.f9402e);
                if (this.f9405h == 0 && "alac".equals(this.f9398a)) {
                    this.f9399b.getClass();
                    E e8 = new E(this.f9399b);
                    e8.L(this.f9399b.length - 4);
                    this.f9405h = e8.D();
                }
                this.f9403f = true;
            }
            ByteBuffer byteBuffer2 = simpleDecoderOutputBuffer.data;
            byteBuffer2.getClass();
            byteBuffer2.position(0);
            byteBuffer2.limit(iFfmpegDecode);
        }
        return null;
    }

    @Override // p171w0.d
    public final String getName() {
        return "ffmpeg" + FfmpegLibrary.c() + "-" + this.f9398a;
    }

    @Override // p171w0.k, p171w0.d
    public final void release() {
        super.release();
        ffmpegRelease(this.f9402e);
        this.f9402e = 0L;
    }
}
