package androidx.media3.decoder;

import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p171w0.h;
import p171w0.i;

/* JADX INFO: loaded from: classes.dex */
public class SimpleDecoderOutputBuffer extends i {
    public ByteBuffer data;
    private final h owner;

    public SimpleDecoderOutputBuffer(h hVar) {
        this.owner = hVar;
    }

    @Override // p171w0.i, p171w0.a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public ByteBuffer grow(int i8) {
        ByteBuffer byteBuffer = this.data;
        byteBuffer.getClass();
        H1.d(i8 >= byteBuffer.limit());
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i8).order(ByteOrder.nativeOrder());
        int iPosition = byteBuffer.position();
        byteBuffer.position(0);
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.position(iPosition);
        byteBufferOrder.limit(i8);
        this.data = byteBufferOrder;
        return byteBufferOrder;
    }

    public ByteBuffer init(long j8, int i8) {
        this.timeUs = j8;
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer == null || byteBuffer.capacity() < i8) {
            this.data = ByteBuffer.allocateDirect(i8).order(ByteOrder.nativeOrder());
        }
        this.data.position(0);
        this.data.limit(i8);
        return this.data;
    }

    @Override // p171w0.i
    public void release() {
        this.owner.c(this);
    }
}
