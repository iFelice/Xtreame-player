package androidx.media3.decoder.opus;

import B0.C0073x;
import D0.C0129t;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import p117p0.M;
import p171w0.c;
import p171w0.e;
import p171w0.g;
import p171w0.i;
import p171w0.k;
import p179x0.a;

/* JADX INFO: loaded from: classes.dex */
public final class OpusDecoder extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f9432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CryptoConfig f9434c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f9435d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f9436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f9437f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f9438g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9439h;

    public OpusDecoder(int i8, List list, CryptoConfig cryptoConfig, boolean z7) throws a {
        int i9;
        int i10;
        int i11;
        super(new g[16], new SimpleDecoderOutputBuffer[16]);
        if (!OpusLibrary.f9440a.isAvailable()) {
            throw new a("Failed to load decoder native libraries");
        }
        this.f9434c = cryptoConfig;
        if (cryptoConfig != null && !OpusLibrary.opusIsSecureDecodeSupported()) {
            throw new a("Opus decoder does not support secure decode");
        }
        int size = list.size();
        if (size != 1 && size != 3) {
            throw new a("Invalid initialization data size");
        }
        if (size == 3 && (((byte[]) list.get(1)).length != 8 || ((byte[]) list.get(2)).length != 8)) {
            throw new a("Invalid pre-skip or seek pre-roll");
        }
        if (list.size() == 3) {
            i9 = (int) ((ByteBuffer.wrap((byte[]) list.get(1)).order(ByteOrder.nativeOrder()).getLong() * 48000) / 1000000000);
        } else {
            byte[] bArr = (byte[]) list.get(0);
            i9 = (bArr[10] & 255) | ((bArr[11] & 255) << 8);
        }
        this.f9435d = i9;
        this.f9436e = list.size() == 3 ? (int) ((ByteBuffer.wrap((byte[]) list.get(2)).order(ByteOrder.nativeOrder()).getLong() * 48000) / 1000000000) : 3840;
        this.f9439h = i9;
        byte[] bArr2 = (byte[]) list.get(0);
        if (bArr2.length < 19) {
            throw new a("Invalid header length");
        }
        int i12 = bArr2[9] & 255;
        this.f9433b = i12;
        short s7 = (short) ((bArr2[16] & 255) | ((bArr2[17] & 255) << 8));
        byte[] bArr3 = new byte[Math.max(i12, 8)];
        if (bArr2[18] == 0) {
            if (i12 > 2) {
                throw new a("Invalid header, missing stream map");
            }
            int i13 = i12 == 2 ? 1 : 0;
            bArr3[0] = 0;
            bArr3[1] = 1;
            i11 = i13;
            i10 = 1;
        } else {
            if (bArr2.length < i12 + 21) {
                throw new a("Invalid header length");
            }
            int i14 = bArr2[19] & 255;
            int i15 = bArr2[20] & 255;
            System.arraycopy(bArr2, 21, bArr3, 0, i12);
            i10 = i14;
            i11 = i15;
        }
        long jOpusInit = opusInit(48000, i12, i10, i11, s7, bArr3);
        this.f9437f = jOpusInit;
        if (jOpusInit == 0) {
            throw new a("Failed to initialize decoder");
        }
        setInitialInputBufferSize(i8);
        this.f9432a = z7;
        if (z7) {
            opusSetFloatOutput();
        }
    }

    private native void opusClose(long j8);

    private native int opusDecode(long j8, long j9, ByteBuffer byteBuffer, int i8, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer);

    private native int opusGetErrorCode(long j8);

    private native String opusGetErrorMessage(long j8);

    private native long opusInit(int i8, int i9, int i10, int i11, int i12, byte[] bArr);

    private native void opusReset(long j8);

    private native int opusSecureDecode(long j8, long j9, ByteBuffer byteBuffer, int i8, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, int i9, CryptoConfig cryptoConfig, int i10, byte[] bArr, byte[] bArr2, int i11, int[] iArr, int[] iArr2);

    private native void opusSetFloatOutput();

    @Override // p171w0.k
    public final g createInputBuffer() {
        return new g(2, 0);
    }

    @Override // p171w0.k
    public final i createOutputBuffer() {
        return new SimpleDecoderOutputBuffer(new C0073x(this, 4));
    }

    @Override // p171w0.k
    public final e createUnexpectedDecodeException(Throwable th) {
        return new a("Unexpected decode error", th);
    }

    @Override // p171w0.k
    public final e decode(g gVar, i iVar, boolean z7) {
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer;
        g gVar2;
        OpusDecoder opusDecoder;
        int iOpusDecode;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = (SimpleDecoderOutputBuffer) iVar;
        long j8 = this.f9437f;
        if (z7) {
            opusReset(j8);
            this.f9439h = gVar.f30906K == 0 ? this.f9435d : this.f9436e;
        }
        ByteBuffer byteBuffer = gVar.f30904I;
        String str = M.f28050a;
        if (gVar.getFlag(1073741824)) {
            long j9 = gVar.f30906K;
            int iLimit = byteBuffer.limit();
            c cVar = gVar.f30903H;
            int i8 = cVar.f30894c;
            byte[] bArr = cVar.f30893b;
            bArr.getClass();
            byte[] bArr2 = cVar.f30892a;
            bArr2.getClass();
            simpleDecoderOutputBuffer = simpleDecoderOutputBuffer2;
            iOpusDecode = opusSecureDecode(this.f9437f, j9, byteBuffer, iLimit, simpleDecoderOutputBuffer2, 48000, this.f9434c, i8, bArr, bArr2, cVar.f30897f, cVar.f30895d, cVar.f30896e);
            opusDecoder = this;
            gVar2 = gVar;
        } else {
            simpleDecoderOutputBuffer = simpleDecoderOutputBuffer2;
            gVar2 = gVar;
            opusDecoder = this;
            iOpusDecode = opusDecode(opusDecoder.f9437f, gVar2.f30906K, byteBuffer, byteBuffer.limit(), simpleDecoderOutputBuffer);
        }
        if (iOpusDecode < 0) {
            if (iOpusDecode != -2) {
                return new a("Decode error: " + opusDecoder.opusGetErrorMessage(iOpusDecode));
            }
            String str2 = "Drm error: " + opusDecoder.opusGetErrorMessage(j8);
            opusDecoder.opusGetErrorCode(j8);
            return new a(str2, new C0129t(str2));
        }
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer3 = simpleDecoderOutputBuffer;
        ByteBuffer byteBuffer2 = simpleDecoderOutputBuffer3.data;
        int i9 = 0;
        byteBuffer2.position(0);
        byteBuffer2.limit(iOpusDecode);
        int i10 = opusDecoder.f9439h;
        boolean z8 = opusDecoder.f9432a;
        int i11 = opusDecoder.f9433b;
        if (i10 > 0) {
            int i12 = i11 * (z8 ? 4 : 2);
            int i13 = i10 * i12;
            if (iOpusDecode <= i13) {
                opusDecoder.f9439h = i10 - (iOpusDecode / i12);
                simpleDecoderOutputBuffer3.shouldBeSkipped = true;
                byteBuffer2.position(iOpusDecode);
            } else {
                opusDecoder.f9439h = 0;
                byteBuffer2.position(i13);
            }
        } else if (opusDecoder.f9438g && gVar.hasSupplementalData()) {
            ByteBuffer byteBuffer3 = gVar2.f30907L;
            if (byteBuffer3 != null && byteBuffer3.remaining() == 8) {
                long j10 = byteBuffer3.order(ByteOrder.LITTLE_ENDIAN).getLong();
                if (j10 >= 0) {
                    i9 = (int) ((j10 * 48000) / 1000000000);
                }
            }
            if (i9 > 0) {
                int i14 = i9 * i11 * (z8 ? 4 : 2);
                if (iOpusDecode >= i14) {
                    byteBuffer2.limit(iOpusDecode - i14);
                }
            }
        }
        return null;
    }

    @Override // p171w0.d
    public final String getName() {
        StringBuilder sb = new StringBuilder("libopus");
        sb.append(OpusLibrary.f9440a.isAvailable() ? OpusLibrary.opusGetVersion() : null);
        return sb.toString();
    }

    @Override // p171w0.k, p171w0.d
    public final void release() {
        super.release();
        opusClose(this.f9437f);
    }
}
