package androidx.media3.decoder.flac;

import W0.E;
import W0.G;
import W0.t;
import androidx.media3.extractor.FlacStreamMetadata;
import java.io.IOException;
import java.nio.ByteBuffer;
import p094m0.P;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
final class FlacDecoderJni {
    private static final int TEMP_BUFFER_SIZE = 8192;
    private ByteBuffer byteBufferData;
    private boolean endOfExtractorInput;
    private t extractorInput;
    private final long nativeDecoderContext;
    private byte[] tempBuffer;

    public FlacDecoderJni() throws f {
        if (!j.isAvailable()) {
            throw new f("Failed to load decoder native libraries.");
        }
        long jFlacInit = flacInit();
        this.nativeDecoderContext = jFlacInit;
        if (jFlacInit == 0) {
            throw new f("Failed to initialize decoder");
        }
    }

    private native FlacStreamMetadata flacDecodeMetadata(long j8);

    private native int flacDecodeToArray(long j8, byte[] bArr);

    private native int flacDecodeToBuffer(long j8, ByteBuffer byteBuffer);

    private native void flacFlush(long j8);

    private native long flacGetDecodePosition(long j8);

    private native long flacGetLastFrameFirstSampleIndex(long j8);

    private native long flacGetLastFrameTimestamp(long j8);

    private native long flacGetNextFrameFirstSampleIndex(long j8);

    private native boolean flacGetSeekPoints(long j8, long j9, long[] jArr);

    private native String flacGetStateString(long j8);

    private native long flacInit();

    private native boolean flacIsDecoderAtEndOfStream(long j8);

    private native void flacRelease(long j8);

    private native void flacReset(long j8, long j9);

    private int readFromExtractorInput(t tVar, byte[] bArr, int i8, int i9) {
        int iQ = tVar.q(bArr, i8, i9);
        if (iQ != -1) {
            return iQ;
        }
        this.endOfExtractorInput = true;
        return 0;
    }

    public void clearData() {
        this.byteBufferData = null;
        this.extractorInput = null;
    }

    public void decodeSample(ByteBuffer byteBuffer) throws g {
        byteBuffer.clear();
        int iFlacDecodeToBuffer = byteBuffer.isDirect() ? flacDecodeToBuffer(this.nativeDecoderContext, byteBuffer) : flacDecodeToArray(this.nativeDecoderContext, byteBuffer.array());
        if (iFlacDecodeToBuffer >= 0) {
            byteBuffer.limit(iFlacDecodeToBuffer);
        } else {
            if (!isDecoderAtEndOfInput()) {
                throw new g("Cannot decode FLAC frame");
            }
            byteBuffer.limit(0);
        }
    }

    public void decodeSampleWithBacktrackPosition(ByteBuffer byteBuffer, long j8) throws IOException, g {
        try {
            decodeSample(byteBuffer);
        } catch (IOException e8) {
            if (j8 >= 0) {
                reset(j8);
                t tVar = this.extractorInput;
                if (tVar != null) {
                    tVar.l(j8, e8);
                }
            }
            throw e8;
        }
    }

    public FlacStreamMetadata decodeStreamMetadata() throws P {
        FlacStreamMetadata flacStreamMetadataFlacDecodeMetadata = flacDecodeMetadata(this.nativeDecoderContext);
        if (flacStreamMetadataFlacDecodeMetadata != null) {
            return flacStreamMetadataFlacDecodeMetadata;
        }
        throw P.a("Failed to decode stream metadata", null);
    }

    public void flush() {
        flacFlush(this.nativeDecoderContext);
    }

    public long getDecodePosition() {
        return flacGetDecodePosition(this.nativeDecoderContext);
    }

    public long getLastFrameFirstSampleIndex() {
        return flacGetLastFrameFirstSampleIndex(this.nativeDecoderContext);
    }

    public long getLastFrameTimestamp() {
        return flacGetLastFrameTimestamp(this.nativeDecoderContext);
    }

    public long getNextFrameFirstSampleIndex() {
        return flacGetNextFrameFirstSampleIndex(this.nativeDecoderContext);
    }

    public E getSeekPoints(long j8) {
        long[] jArr = new long[4];
        if (!flacGetSeekPoints(this.nativeDecoderContext, j8, jArr)) {
            return null;
        }
        long j9 = jArr[0];
        G g8 = new G(j9, jArr[1]);
        long j10 = jArr[2];
        return new E(g8, j10 == j9 ? g8 : new G(j10, jArr[3]));
    }

    public String getStateString() {
        return flacGetStateString(this.nativeDecoderContext);
    }

    public boolean isDecoderAtEndOfInput() {
        return flacIsDecoderAtEndOfStream(this.nativeDecoderContext);
    }

    public boolean isEndOfData() {
        ByteBuffer byteBuffer = this.byteBufferData;
        if (byteBuffer != null) {
            return byteBuffer.remaining() == 0;
        }
        if (this.extractorInput != null) {
            return this.endOfExtractorInput;
        }
        return true;
    }

    public int read(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        ByteBuffer byteBuffer2 = this.byteBufferData;
        if (byteBuffer2 != null) {
            int iMin = Math.min(iRemaining, byteBuffer2.remaining());
            int iLimit = this.byteBufferData.limit();
            ByteBuffer byteBuffer3 = this.byteBufferData;
            byteBuffer3.limit(byteBuffer3.position() + iMin);
            byteBuffer.put(this.byteBufferData);
            this.byteBufferData.limit(iLimit);
            return iMin;
        }
        t tVar = this.extractorInput;
        if (tVar == null) {
            return -1;
        }
        byte[] bArr = this.tempBuffer;
        String str = M.f28050a;
        int iMin2 = Math.min(iRemaining, TEMP_BUFFER_SIZE);
        int fromExtractorInput = readFromExtractorInput(tVar, bArr, 0, iMin2);
        if (fromExtractorInput < 4) {
            fromExtractorInput += readFromExtractorInput(tVar, bArr, fromExtractorInput, iMin2 - fromExtractorInput);
        }
        int i8 = fromExtractorInput;
        byteBuffer.put(bArr, 0, i8);
        return i8;
    }

    public void release() {
        flacRelease(this.nativeDecoderContext);
    }

    public void reset(long j8) {
        flacReset(this.nativeDecoderContext, j8);
    }

    public void setData(t tVar) {
        this.byteBufferData = null;
        this.extractorInput = tVar;
        this.endOfExtractorInput = false;
        if (this.tempBuffer == null) {
            this.tempBuffer = new byte[TEMP_BUFFER_SIZE];
        }
    }

    public void setData(ByteBuffer byteBuffer) {
        this.byteBufferData = byteBuffer;
        this.extractorInput = null;
    }
}
