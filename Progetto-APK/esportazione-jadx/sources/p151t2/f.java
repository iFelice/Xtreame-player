package p151t2;

import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Closeable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InputStream f30291G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Charset f30292H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public byte[] f30293I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f30294J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f30295K;

    public f(FileInputStream fileInputStream, Charset charset) {
        if (charset == null) {
            throw null;
        }
        if (!charset.equals(g.f30296a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f30291G = fileInputStream;
        this.f30292H = charset;
        this.f30293I = new byte[8192];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f30291G) {
            try {
                if (this.f30293I != null) {
                    this.f30293I = null;
                    this.f30291G.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0040  */
    public final String k() {
        int i8;
        synchronized (this.f30291G) {
            try {
                byte[] bArr = this.f30293I;
                if (bArr == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.f30294J >= this.f30295K) {
                    int i9 = this.f30291G.read(bArr, 0, bArr.length);
                    if (i9 == -1) {
                        throw new EOFException();
                    }
                    this.f30294J = 0;
                    this.f30295K = i9;
                }
                for (int i10 = this.f30294J; i10 != this.f30295K; i10++) {
                    byte[] bArr2 = this.f30293I;
                    if (bArr2[i10] == 10) {
                        int i11 = this.f30294J;
                        if (i10 != i11) {
                            i8 = i10 - 1;
                            if (bArr2[i8] != 13) {
                                i8 = i10;
                            }
                        } else {
                            i8 = i10;
                        }
                        String str = new String(bArr2, i11, i8 - i11, this.f30292H.name());
                        this.f30294J = i10 + 1;
                        return str;
                    }
                }
                e eVar = new e(this, (this.f30295K - this.f30294J) + 80);
                while (true) {
                    byte[] bArr3 = this.f30293I;
                    int i12 = this.f30294J;
                    eVar.write(bArr3, i12, this.f30295K - i12);
                    this.f30295K = -1;
                    byte[] bArr4 = this.f30293I;
                    int i13 = this.f30291G.read(bArr4, 0, bArr4.length);
                    if (i13 == -1) {
                        throw new EOFException();
                    }
                    this.f30294J = 0;
                    this.f30295K = i13;
                    for (int i14 = 0; i14 != this.f30295K; i14++) {
                        byte[] bArr5 = this.f30293I;
                        if (bArr5[i14] == 10) {
                            int i15 = this.f30294J;
                            if (i14 != i15) {
                                eVar.write(bArr5, i15, i14 - i15);
                            }
                            this.f30294J = i14 + 1;
                            return eVar.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
