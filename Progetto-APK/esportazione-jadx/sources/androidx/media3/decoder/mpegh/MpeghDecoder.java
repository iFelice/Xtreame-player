package androidx.media3.decoder.mpegh;

import B0.C0073x;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import java.nio.ByteBuffer;
import java.util.Objects;
import p094m0.C3136t;
import p117p0.M;
import p171w0.g;
import p171w0.k;

/* JADX INFO: loaded from: classes.dex */
public final class MpeghDecoder extends k {
    private static final int DEFAULT_INPUT_BUFFER_SIZE = 12288;
    private static final int TARGET_LAYOUT_CICP = 2;
    private MpeghDecoderJni decoder;
    private int outChannels;
    private long outPtsUs;
    private int outSampleRate;
    private final ByteBuffer tmpOutputBuffer;

    public MpeghDecoder(C3136t c3136t, int i8, int i9) throws MpeghDecoderException {
        super(new g[i8], new SimpleDecoderOutputBuffer[i9]);
        if (!MpeghLibrary.isAvailable()) {
            throw new MpeghDecoderException("Failed to load decoder native libraries.");
        }
        byte[] bArr = new byte[0];
        if (!c3136t.f27044r.isEmpty() && Objects.equals(c3136t.f27041o, "audio/mha1")) {
            bArr = (byte[]) c3136t.f27044r.get(0);
        }
        MpeghDecoderJni mpeghDecoderJni = new MpeghDecoderJni();
        this.decoder = mpeghDecoderJni;
        mpeghDecoderJni.init(2, bArr, bArr.length);
        int i10 = c3136t.f27042p;
        setInitialInputBufferSize(i10 == -1 ? DEFAULT_INPUT_BUFFER_SIZE : i10);
        this.tmpOutputBuffer = ByteBuffer.allocateDirect(884736);
    }

    @Override // p171w0.k
    public g createInputBuffer() {
        return new g(2, 0);
    }

    @Override // p171w0.k
    public MpeghDecoderException decode(g gVar, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, boolean z7) {
        int samples;
        if (z7) {
            try {
                this.decoder.flush();
            } catch (MpeghDecoderException e8) {
                return e8;
            }
        }
        ByteBuffer byteBuffer = gVar.f30904I;
        String str = M.f28050a;
        try {
            this.decoder.process(byteBuffer, byteBuffer.limit(), gVar.f30906K);
            this.tmpOutputBuffer.clear();
            int i8 = 0;
            int i9 = 0;
            do {
                try {
                    samples = this.decoder.getSamples(this.tmpOutputBuffer, i8);
                    i8 += samples;
                    if (i9 == 0 && samples > 0) {
                        this.outPtsUs = this.decoder.getPts();
                        this.outChannels = this.decoder.getNumChannels();
                        this.outSampleRate = this.decoder.getSamplerate();
                    }
                    i9++;
                } catch (MpeghDecoderException e9) {
                    return e9;
                }
            } while (samples > 0);
            this.tmpOutputBuffer.limit(i8);
            if (i8 <= 0) {
                simpleDecoderOutputBuffer.shouldBeSkipped = true;
                return null;
            }
            simpleDecoderOutputBuffer.clear();
            simpleDecoderOutputBuffer.init(this.outPtsUs, i8);
            simpleDecoderOutputBuffer.data.asShortBuffer().put(this.tmpOutputBuffer.asShortBuffer());
            simpleDecoderOutputBuffer.data.rewind();
            return null;
        } catch (MpeghDecoderException e10) {
            return e10;
        }
    }

    public int getChannelCount() {
        return this.outChannels;
    }

    @Override // p171w0.d
    public String getName() {
        return "libmpegh";
    }

    public int getSampleRate() {
        return this.outSampleRate;
    }

    @Override // p171w0.k, p171w0.d
    public void release() {
        super.release();
        MpeghDecoderJni mpeghDecoderJni = this.decoder;
        if (mpeghDecoderJni != null) {
            mpeghDecoderJni.destroy();
            this.decoder = null;
        }
    }

    @Override // p171w0.k
    public SimpleDecoderOutputBuffer createOutputBuffer() {
        return new SimpleDecoderOutputBuffer(new C0073x(this, 3));
    }

    @Override // p171w0.k
    public MpeghDecoderException createUnexpectedDecodeException(Throwable th) {
        return new MpeghDecoderException("Unexpected decode error", th);
    }
}
