package p143s2;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class h extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final a f30086G;

    public h(a aVar, int i8) {
        this.f30086G = aVar;
        ((ByteArrayOutputStream) this).buf = aVar.a(Math.max(i8, 256));
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f30086G.b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public final void finalize() {
        this.f30086G.b(((ByteArrayOutputStream) this).buf);
    }

    public final void k(int i8) {
        int i9 = ((ByteArrayOutputStream) this).count;
        if (i9 + i8 <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        int i10 = (i9 + i8) * 2;
        a aVar = this.f30086G;
        byte[] bArrA = aVar.a(i10);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArrA, 0, ((ByteArrayOutputStream) this).count);
        aVar.b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = bArrA;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(int i8) {
        k(1);
        super.write(i8);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i8, int i9) {
        k(i9);
        super.write(bArr, i8, i9);
    }
}
