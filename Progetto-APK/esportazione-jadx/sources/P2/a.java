package P2;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class a extends InputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ByteBuffer f5878G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f5879H = -1;

    public a(ByteBuffer byteBuffer) {
        this.f5878G = byteBuffer;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f5878G.remaining();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i8) {
        this.f5879H = this.f5878G.position();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.f5878G;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        int i8 = this.f5879H;
        if (i8 == -1) {
            throw new IOException("Cannot reset to unset mark position");
        }
        this.f5878G.position(i8);
    }

    @Override // java.io.InputStream
    public final long skip(long j8) {
        ByteBuffer byteBuffer = this.f5878G;
        if (!byteBuffer.hasRemaining()) {
            return -1L;
        }
        long jMin = Math.min(j8, byteBuffer.remaining());
        byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
        return jMin;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) {
        ByteBuffer byteBuffer = this.f5878G;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int iMin = Math.min(i9, byteBuffer.remaining());
        byteBuffer.get(bArr, i8, iMin);
        return iMin;
    }
}
