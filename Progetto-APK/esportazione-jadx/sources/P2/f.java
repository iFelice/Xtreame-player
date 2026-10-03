package P2;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class f extends InputStream {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final ArrayDeque f5888I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public InputStream f5889G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public IOException f5890H;

    static {
        char[] cArr = o.f5906a;
        f5888I = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f5889G.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5889G.close();
    }

    public final void k() {
        this.f5890H = null;
        this.f5889G = null;
        ArrayDeque arrayDeque = f5888I;
        synchronized (arrayDeque) {
            arrayDeque.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final void mark(int i8) {
        this.f5889G.mark(i8);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f5889G.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f5889G.read();
        } catch (IOException e8) {
            this.f5890H = e8;
            throw e8;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f5889G.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j8) throws IOException {
        try {
            return this.f5889G.skip(j8);
        } catch (IOException e8) {
            this.f5890H = e8;
            throw e8;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f5889G.read(bArr);
        } catch (IOException e8) {
            this.f5890H = e8;
            throw e8;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) throws IOException {
        try {
            return this.f5889G.read(bArr, i8, i9);
        } catch (IOException e8) {
            this.f5890H = e8;
            throw e8;
        }
    }
}
