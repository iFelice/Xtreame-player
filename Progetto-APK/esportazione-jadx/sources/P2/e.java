package P2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class e extends FilterInputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f5886G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f5887H;

    public e(InputStream inputStream, long j8) {
        super(inputStream);
        this.f5886G = j8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        return (int) Math.max(this.f5886G - ((long) this.f5887H), ((FilterInputStream) this).in.available());
    }

    public final void k(int i8) throws IOException {
        if (i8 >= 0) {
            this.f5887H += i8;
            return;
        }
        long j8 = this.f5887H;
        long j9 = this.f5886G;
        if (j9 - j8 <= 0) {
            return;
        }
        StringBuilder sbD = p148t.a.d("Failed to read all expected data, expected: ", j9, ", but read: ");
        sbD.append(this.f5887H);
        throw new IOException(sbD.toString());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        int i8;
        i8 = super.read();
        k(i8 >= 0 ? 1 : -1);
        return i8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i8, int i9) {
        int i10;
        i10 = super.read(bArr, i8, i9);
        k(i10);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}
