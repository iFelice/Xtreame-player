package F2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class w extends FilterInputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile byte[] f3175G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f3176H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f3177I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f3178J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f3179K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p196z2.h f3180L;

    public w(InputStream inputStream, p196z2.h hVar) {
        super(inputStream);
        this.f3178J = -1;
        this.f3180L = hVar;
        this.f3175G = (byte[]) hVar.d(65536, byte[].class);
    }

    public static void N() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final synchronized void E() {
        if (this.f3175G != null) {
            this.f3180L.h(this.f3175G);
            this.f3175G = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f3175G == null || inputStream == null) {
            N();
            throw null;
        }
        return (this.f3176H - this.f3179K) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f3175G != null) {
            this.f3180L.h(this.f3175G);
            this.f3175G = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public final int k(InputStream inputStream, byte[] bArr) throws IOException {
        int i8 = this.f3178J;
        if (i8 != -1) {
            int i9 = this.f3179K - i8;
            int i10 = this.f3177I;
            if (i9 < i10) {
                if (i8 == 0 && i10 > bArr.length && this.f3176H == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i10) {
                        i10 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f3180L.d(i10, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f3175G = bArr2;
                    this.f3180L.h(bArr);
                    bArr = bArr2;
                } else if (i8 > 0) {
                    System.arraycopy(bArr, i8, bArr, 0, bArr.length - i8);
                }
                int i11 = this.f3179K - this.f3178J;
                this.f3179K = i11;
                this.f3178J = 0;
                this.f3176H = 0;
                int i12 = inputStream.read(bArr, i11, bArr.length - i11);
                int i13 = this.f3179K;
                if (i12 > 0) {
                    i13 += i12;
                }
                this.f3176H = i13;
                return i12;
            }
        }
        int i14 = inputStream.read(bArr);
        if (i14 > 0) {
            this.f3178J = -1;
            this.f3179K = 0;
            this.f3176H = i14;
        }
        return i14;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i8) {
        this.f3177I = Math.max(this.f3177I, i8);
        this.f3178J = this.f3179K;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f3175G;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            N();
            throw null;
        }
        if (this.f3179K >= this.f3176H && k(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f3175G && (bArr = this.f3175G) == null) {
            N();
            throw null;
        }
        int i8 = this.f3176H;
        int i9 = this.f3179K;
        if (i8 - i9 <= 0) {
            return -1;
        }
        this.f3179K = i9 + 1;
        return bArr[i9] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f3175G == null) {
            throw new IOException("Stream is closed");
        }
        int i8 = this.f3178J;
        if (-1 == i8) {
            throw new I0.u("Mark has been invalidated, pos: " + this.f3179K + " markLimit: " + this.f3177I, 4);
        }
        this.f3179K = i8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j8) {
        if (j8 < 1) {
            return 0L;
        }
        byte[] bArr = this.f3175G;
        if (bArr == null) {
            N();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            N();
            throw null;
        }
        int i8 = this.f3176H;
        int i9 = this.f3179K;
        if (i8 - i9 >= j8) {
            this.f3179K = (int) (((long) i9) + j8);
            return j8;
        }
        long j9 = ((long) i8) - ((long) i9);
        this.f3179K = i8;
        if (this.f3178J == -1 || j8 > this.f3177I) {
            long jSkip = inputStream.skip(j8 - j9);
            if (jSkip > 0) {
                this.f3178J = -1;
            }
            return j9 + jSkip;
        }
        if (k(inputStream, bArr) == -1) {
            return j9;
        }
        int i10 = this.f3176H;
        int i11 = this.f3179K;
        if (i10 - i11 >= j8 - j9) {
            this.f3179K = (int) ((((long) i11) + j8) - j9);
            return j8;
        }
        long j10 = (j9 + ((long) i10)) - ((long) i11);
        this.f3179K = i10;
        return j10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i8, int i9) {
        int i10;
        int i11;
        byte[] bArr2 = this.f3175G;
        if (bArr2 == null) {
            N();
            throw null;
        }
        if (i9 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i12 = this.f3179K;
            int i13 = this.f3176H;
            if (i12 < i13) {
                int i14 = i13 - i12;
                if (i14 >= i9) {
                    i14 = i9;
                }
                System.arraycopy(bArr2, i12, bArr, i8, i14);
                this.f3179K += i14;
                if (i14 == i9 || inputStream.available() == 0) {
                    return i14;
                }
                i8 += i14;
                i10 = i9 - i14;
            } else {
                i10 = i9;
            }
            while (true) {
                if (this.f3178J == -1 && i10 >= bArr2.length) {
                    i11 = inputStream.read(bArr, i8, i10);
                    if (i11 == -1) {
                        return i10 != i9 ? i9 - i10 : -1;
                    }
                } else {
                    if (k(inputStream, bArr2) == -1) {
                        return i10 != i9 ? i9 - i10 : -1;
                    }
                    if (bArr2 != this.f3175G && (bArr2 = this.f3175G) == null) {
                        N();
                        throw null;
                    }
                    int i15 = this.f3176H;
                    int i16 = this.f3179K;
                    i11 = i15 - i16;
                    if (i11 >= i10) {
                        i11 = i10;
                    }
                    System.arraycopy(bArr2, i16, bArr, i8, i11);
                    this.f3179K += i11;
                }
                i10 -= i11;
                if (i10 == 0) {
                    return i9;
                }
                if (inputStream.available() == 0) {
                    return i9 - i10;
                }
                i8 += i11;
            }
        } else {
            N();
            throw null;
        }
    }
}
