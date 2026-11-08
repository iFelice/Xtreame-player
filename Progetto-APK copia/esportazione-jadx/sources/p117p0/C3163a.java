package p117p0;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: renamed from: p0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3163a extends OutputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final FileOutputStream f28063G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f28064H = false;

    public C3163a(File file) {
        this.f28063G = new FileOutputStream(file);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileOutputStream fileOutputStream = this.f28063G;
        if (this.f28064H) {
            return;
        }
        this.f28064H = true;
        flush();
        try {
            fileOutputStream.getFD().sync();
        } catch (IOException e8) {
            x.g("AtomicFile", "Failed to sync file descriptor:", e8);
        }
        fileOutputStream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.f28063G.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i8) throws IOException {
        this.f28063G.write(i8);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.f28063G.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i8, int i9) throws IOException {
        this.f28063G.write(bArr, i8, i9);
    }
}
