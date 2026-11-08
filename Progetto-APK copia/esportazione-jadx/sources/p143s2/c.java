package p143s2;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f30075G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f30076H;

    public c(BufferedInputStream bufferedInputStream, long j8) {
        super(bufferedInputStream);
        this.f30075G = j8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i8 = super.read();
        if (i8 != -1) {
            this.f30076H++;
        }
        return i8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) throws IOException {
        int i10 = super.read(bArr, i8, i9);
        if (i10 != -1) {
            this.f30076H += (long) i10;
        }
        return i10;
    }
}
