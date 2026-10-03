package P2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class l extends FilterInputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5900G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f5901H;

    public l(int i8, InputStream inputStream) {
        super(inputStream);
        this.f5901H = i8;
    }

    private synchronized void E(int i8) {
        super.mark(i8);
        this.f5901H = i8;
    }

    private synchronized void N() {
        super.reset();
        this.f5901H = Integer.MIN_VALUE;
    }

    public final void O(long j8) {
        int i8 = this.f5901H;
        if (i8 == Integer.MIN_VALUE || j8 == -1) {
            return;
        }
        this.f5901H = (int) (((long) i8) - j8);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        switch (this.f5900G) {
            case 0:
                int i8 = this.f5901H;
                return i8 == Integer.MIN_VALUE ? super.available() : Math.min(i8, super.available());
            default:
                return Math.min(super.available(), this.f5901H);
        }
    }

    public final long k(long j8) {
        int i8 = this.f5901H;
        if (i8 == 0) {
            return -1L;
        }
        return (i8 == Integer.MIN_VALUE || j8 <= ((long) i8)) ? j8 : i8;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i8) {
        switch (this.f5900G) {
            case 0:
                E(i8);
                return;
            default:
                super.mark(i8);
                return;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i8 = -1;
        switch (this.f5900G) {
            case 0:
                if (k(1L) == -1) {
                    return -1;
                }
                int i9 = super.read();
                O(1L);
                return i9;
            default:
                if (this.f5901H > 0 && (i8 = super.read()) >= 0) {
                    this.f5901H--;
                }
                return i8;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        switch (this.f5900G) {
            case 0:
                N();
                return;
            default:
                super.reset();
                return;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j8) throws IOException {
        switch (this.f5900G) {
            case 0:
                long jK = k(j8);
                if (jK == -1) {
                    return 0L;
                }
                long jSkip = super.skip(jK);
                O(jSkip);
                return jSkip;
            default:
                int iSkip = (int) super.skip(Math.min(j8, this.f5901H));
                if (iSkip >= 0) {
                    this.f5901H -= iSkip;
                }
                return iSkip;
        }
    }

    public l(f fVar) {
        super(fVar);
        this.f5901H = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) throws IOException {
        int i10 = -1;
        switch (this.f5900G) {
            case 0:
                int iK = (int) k(i9);
                if (iK == -1) {
                    return -1;
                }
                int i11 = super.read(bArr, i8, iK);
                O(i11);
                return i11;
            default:
                int i12 = this.f5901H;
                if (i12 > 0 && (i10 = super.read(bArr, i8, Math.min(i9, i12))) >= 0) {
                    this.f5901H -= i10;
                }
                return i10;
        }
    }
}
