package D0;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class Z extends p102n0.h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1905i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1906j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1907k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1908l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public byte[] f1909m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1910n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f1911o;

    @Override // p102n0.h, p102n0.g
    public final boolean b() {
        return super.b() && this.f1910n == 0;
    }

    @Override // p102n0.h, p102n0.g
    public final ByteBuffer c() {
        int i8;
        if (super.b() && (i8 = this.f1910n) > 0) {
            k(i8).put(this.f1909m, 0, this.f1910n).flip();
            this.f1910n = 0;
        }
        return super.c();
    }

    @Override // p102n0.g
    public final void d(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i8 = iLimit - iPosition;
        if (i8 == 0) {
            return;
        }
        int iMin = Math.min(i8, this.f1908l);
        this.f1911o += (long) (iMin / this.f27327b.f27325d);
        this.f1908l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.f1908l > 0) {
            return;
        }
        int i9 = i8 - iMin;
        int length = (this.f1910n + i9) - this.f1909m.length;
        ByteBuffer byteBufferK = k(length);
        int i10 = p117p0.M.i(length, 0, this.f1910n);
        byteBufferK.put(this.f1909m, 0, i10);
        int i11 = p117p0.M.i(length - i10, 0, i9);
        byteBuffer.limit(byteBuffer.position() + i11);
        byteBufferK.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i12 = i9 - i11;
        int i13 = this.f1910n - i10;
        this.f1910n = i13;
        byte[] bArr = this.f1909m;
        System.arraycopy(bArr, i10, bArr, 0, i13);
        byteBuffer.get(this.f1909m, this.f1910n, i12);
        this.f1910n += i12;
        byteBufferK.flip();
    }

    @Override // p102n0.h
    public final p102n0.e g(p102n0.e eVar) throws p102n0.f {
        if (!p117p0.M.M(eVar.f27324c)) {
            throw new p102n0.f(eVar);
        }
        this.f1907k = true;
        return (this.f1905i == 0 && this.f1906j == 0) ? p102n0.e.f27321e : eVar;
    }

    @Override // p102n0.h
    public final void h() {
        if (this.f1907k) {
            this.f1907k = false;
            int i8 = this.f1906j;
            int i9 = this.f27327b.f27325d;
            this.f1909m = new byte[i8 * i9];
            this.f1908l = this.f1905i * i9;
        }
        this.f1910n = 0;
    }

    @Override // p102n0.h
    public final void i() {
        if (this.f1907k) {
            int i8 = this.f1910n;
            if (i8 > 0) {
                this.f1911o += (long) (i8 / this.f27327b.f27325d);
            }
            this.f1910n = 0;
        }
    }

    @Override // p102n0.h
    public final void j() {
        this.f1909m = p117p0.M.f28051b;
    }
}
