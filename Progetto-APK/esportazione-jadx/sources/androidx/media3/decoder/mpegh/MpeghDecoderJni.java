package androidx.media3.decoder.mpegh;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class MpeghDecoderJni {
    private long decoderHandle;

    public native void destroy();

    public native void flush();

    public native void flushAndGet();

    public native int getNumChannels();

    public native long getPts();

    public native int getSamplerate();

    public native int getSamples(ByteBuffer byteBuffer, int i8);

    public native void init(int i8, byte[] bArr, int i9);

    public native void process(ByteBuffer byteBuffer, int i8, long j8);
}
