package androidx.media3.decoder.flac;

import B0.C0073x;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.extractor.FlacStreamMetadata;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import p094m0.P;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class e extends p171w0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FlacStreamMetadata f9417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlacDecoderJni f9418b;

    public e(int i8, List list) throws f {
        super(new p171w0.g[16], new SimpleDecoderOutputBuffer[16]);
        if (list.size() != 1) {
            throw new f("Initialization data must be of length 1");
        }
        FlacDecoderJni flacDecoderJni = new FlacDecoderJni();
        this.f9418b = flacDecoderJni;
        flacDecoderJni.setData(ByteBuffer.wrap((byte[]) list.get(0)));
        try {
            FlacStreamMetadata flacStreamMetadataDecodeStreamMetadata = flacDecoderJni.decodeStreamMetadata();
            this.f9417a = flacStreamMetadataDecodeStreamMetadata;
            setInitialInputBufferSize(i8 == -1 ? flacStreamMetadataDecodeStreamMetadata.maxFrameSize : i8);
        } catch (P e8) {
            throw new f("Failed to decode StreamInfo", e8);
        } catch (IOException e9) {
            throw new IllegalStateException(e9);
        }
    }

    @Override // p171w0.k
    public final p171w0.g createInputBuffer() {
        return new p171w0.g(1, 0);
    }

    @Override // p171w0.k
    public final p171w0.i createOutputBuffer() {
        return new SimpleDecoderOutputBuffer(new C0073x(this, 2));
    }

    @Override // p171w0.k
    public final p171w0.e createUnexpectedDecodeException(Throwable th) {
        return new f("Unexpected decode error", th);
    }

    @Override // p171w0.k
    public final p171w0.e decode(p171w0.g gVar, p171w0.i iVar, boolean z7) {
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) iVar;
        FlacDecoderJni flacDecoderJni = this.f9418b;
        if (z7) {
            flacDecoderJni.flush();
        }
        ByteBuffer byteBuffer = gVar.f30904I;
        String str = M.f28050a;
        flacDecoderJni.setData(byteBuffer);
        try {
            flacDecoderJni.decodeSample(simpleDecoderOutputBuffer.init(gVar.f30906K, this.f9417a.getMaxDecodedFrameSize()));
            return null;
        } catch (g e8) {
            return new f("Frame decoding failed", e8);
        } catch (IOException e9) {
            throw new IllegalStateException(e9);
        }
    }

    @Override // p171w0.d
    public final String getName() {
        return "libflac";
    }

    @Override // p171w0.k, p171w0.d
    public final void release() {
        super.release();
        this.f9418b.release();
    }
}
