package p141s0;

import com.google.android.gms.internal.measurement.H1;
import java.io.InputStream;

/* JADX INFO: renamed from: s0.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3186k extends InputStream {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC3184i f29948G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3188m f29949H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f29951J = false;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f29952K = false;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f29950I = new byte[1];

    public C3186k(InterfaceC3184i interfaceC3184i, C3188m c3188m) {
        this.f29948G = interfaceC3184i;
        this.f29949H = c3188m;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f29952K) {
            return;
        }
        this.f29948G.close();
        this.f29952K = true;
    }

    public final void k() {
        if (this.f29951J) {
            return;
        }
        this.f29948G.a(this.f29949H);
        this.f29951J = true;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f29950I;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i8, int i9) {
        H1.i(!this.f29952K);
        k();
        int iQ = this.f29948G.q(bArr, i8, i9);
        if (iQ == -1) {
            return -1;
        }
        return iQ;
    }
}
