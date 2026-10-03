package D0;

import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class X extends p102n0.h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1895n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1896o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1897p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f1898q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public byte[] f1900s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public byte[] f1903v;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1899r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1901t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1902u = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f1893l = 100000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f1890i = 0.2f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f1894m = 2000000;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f1892k = 10;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final short f1891j = 1024;

    public X() {
        byte[] bArr = p117p0.M.f28051b;
        this.f1900s = bArr;
        this.f1903v = bArr;
    }

    @Override // p102n0.g
    public final void d(ByteBuffer byteBuffer) {
        int iLimit;
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.f27332g.hasRemaining()) {
            int i8 = this.f1897p;
            short s7 = this.f1891j;
            if (i8 == 0) {
                int iLimit2 = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit2, byteBuffer.position() + this.f1900s.length));
                int iLimit3 = byteBuffer.limit() - 1;
                while (true) {
                    if (iLimit3 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iLimit3) << 8) | (byteBuffer.get(iLimit3 - 1) & 255)) > s7) {
                        int i9 = this.f1895n;
                        iPosition = ((iLimit3 / i9) * i9) + i9;
                        break;
                    }
                    iLimit3 -= 2;
                }
                if (iPosition == byteBuffer.position()) {
                    this.f1897p = 1;
                } else {
                    byteBuffer.limit(Math.min(iPosition, byteBuffer.capacity()));
                    k(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(iLimit2);
            } else {
                if (i8 != 1) {
                    throw new IllegalStateException();
                }
                H1.i(this.f1901t < this.f1900s.length);
                int iLimit4 = byteBuffer.limit();
                int iPosition2 = byteBuffer.position() + 1;
                while (true) {
                    if (iPosition2 >= byteBuffer.limit()) {
                        iLimit = byteBuffer.limit();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(iPosition2) << 8) | (byteBuffer.get(iPosition2 - 1) & 255)) > s7) {
                        int i10 = this.f1895n;
                        iLimit = (iPosition2 / i10) * i10;
                        break;
                    }
                    iPosition2 += 2;
                }
                int iPosition3 = iLimit - byteBuffer.position();
                int length = this.f1901t;
                int i11 = this.f1902u;
                int length2 = length + i11;
                byte[] bArr = this.f1900s;
                if (length2 < bArr.length) {
                    length = bArr.length;
                } else {
                    length2 = i11 - (bArr.length - length);
                }
                int i12 = length - length2;
                boolean z7 = iLimit < iLimit4;
                int iMin = Math.min(iPosition3, i12);
                byteBuffer.limit(byteBuffer.position() + iMin);
                byteBuffer.get(this.f1900s, length2, iMin);
                int i13 = this.f1902u + iMin;
                this.f1902u = i13;
                H1.i(i13 <= this.f1900s.length);
                boolean z8 = z7 && iPosition3 < i12;
                m(z8);
                if (z8) {
                    this.f1897p = 0;
                    this.f1899r = 0;
                }
                byteBuffer.limit(iLimit4);
            }
        }
    }

    @Override // p102n0.h
    public final p102n0.e g(p102n0.e eVar) throws p102n0.f {
        if (eVar.f27324c == 2) {
            return eVar.f27322a == -1 ? p102n0.e.f27321e : eVar;
        }
        throw new p102n0.f(eVar);
    }

    @Override // p102n0.h
    public final void h() {
        if (isActive()) {
            p102n0.e eVar = this.f27327b;
            int i8 = eVar.f27323b * 2;
            this.f1895n = i8;
            int i9 = ((((int) ((this.f1893l * ((long) eVar.f27322a)) / 1000000)) / 2) / i8) * i8 * 2;
            if (this.f1900s.length != i9) {
                this.f1900s = new byte[i9];
                this.f1903v = new byte[i9];
            }
        }
        this.f1897p = 0;
        this.f1898q = 0L;
        this.f1899r = 0;
        this.f1901t = 0;
        this.f1902u = 0;
    }

    @Override // p102n0.h
    public final void i() {
        if (this.f1902u > 0) {
            m(true);
            this.f1899r = 0;
        }
    }

    @Override // p102n0.h, p102n0.g
    public final boolean isActive() {
        return super.isActive() && this.f1896o;
    }

    @Override // p102n0.h
    public final void j() {
        this.f1896o = false;
        byte[] bArr = p117p0.M.f28051b;
        this.f1900s = bArr;
        this.f1903v = bArr;
    }

    public final int l(int i8) {
        int length = ((((int) ((this.f1894m * ((long) this.f27327b.f27322a)) / 1000000)) - this.f1899r) * this.f1895n) - (this.f1900s.length / 2);
        H1.i(length >= 0);
        int iMin = (int) Math.min((i8 * this.f1890i) + 0.5f, length);
        int i9 = this.f1895n;
        return (iMin / i9) * i9;
    }

    public final void m(boolean z7) {
        int length;
        int iL;
        int i8 = this.f1902u;
        byte[] bArr = this.f1900s;
        if (i8 == bArr.length || z7) {
            if (this.f1899r == 0) {
                if (z7) {
                    n(i8, 3);
                    length = i8;
                } else {
                    H1.i(i8 >= bArr.length / 2);
                    length = this.f1900s.length / 2;
                    n(length, 0);
                }
                iL = length;
            } else if (z7) {
                int length2 = i8 - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int iL2 = l(length2) + (this.f1900s.length / 2);
                n(iL2, 2);
                iL = iL2;
                length = length3;
            } else {
                length = i8 - (bArr.length / 2);
                iL = l(length);
                n(iL, 1);
            }
            H1.h("bytesConsumed is not aligned to frame size: %s" + length, length % this.f1895n == 0);
            H1.i(i8 >= iL);
            this.f1902u -= length;
            int i9 = this.f1901t + length;
            this.f1901t = i9;
            this.f1901t = i9 % this.f1900s.length;
            int i10 = this.f1899r;
            int i11 = this.f1895n;
            this.f1899r = (iL / i11) + i10;
            this.f1898q += (long) ((length - iL) / i11);
        }
    }

    public final void n(int i8, int i9) {
        if (i8 == 0) {
            return;
        }
        H1.d(this.f1902u >= i8);
        if (i9 == 2) {
            int i10 = this.f1901t;
            int i11 = this.f1902u;
            int i12 = i10 + i11;
            byte[] bArr = this.f1900s;
            if (i12 <= bArr.length) {
                System.arraycopy(bArr, i12 - i8, this.f1903v, 0, i8);
            } else {
                int length = i11 - (bArr.length - i10);
                if (length >= i8) {
                    System.arraycopy(bArr, length - i8, this.f1903v, 0, i8);
                } else {
                    int i13 = i8 - length;
                    System.arraycopy(bArr, bArr.length - i13, this.f1903v, 0, i13);
                    System.arraycopy(this.f1900s, 0, this.f1903v, i13, length);
                }
            }
        } else {
            int i14 = this.f1901t;
            int i15 = i14 + i8;
            byte[] bArr2 = this.f1900s;
            if (i15 <= bArr2.length) {
                System.arraycopy(bArr2, i14, this.f1903v, 0, i8);
            } else {
                int length2 = bArr2.length - i14;
                System.arraycopy(bArr2, i14, this.f1903v, 0, length2);
                System.arraycopy(this.f1900s, 0, this.f1903v, length2, i8 - length2);
            }
        }
        H1.c("sizeToOutput is not aligned to frame size: " + i8, i8 % this.f1895n == 0);
        H1.i(this.f1901t < this.f1900s.length);
        byte[] bArr3 = this.f1903v;
        H1.c("byteOutput size is not aligned to frame size " + i8, i8 % this.f1895n == 0);
        if (i9 != 3) {
            for (int i16 = 0; i16 < i8; i16 += 2) {
                int i17 = i16 + 1;
                int i18 = (bArr3[i17] << 8) | (bArr3[i16] & 255);
                int i19 = this.f1892k;
                if (i9 == 0) {
                    i19 = ((((i16 * 1000) / (i8 - 1)) * (i19 - 100)) / 1000) + 100;
                } else if (i9 == 2) {
                    i19 += (((i16 * 1000) * (100 - i19)) / (i8 - 1)) / 1000;
                }
                int i20 = (i18 * i19) / 100;
                if (i20 >= 32767) {
                    bArr3[i16] = -1;
                    bArr3[i17] = 127;
                } else if (i20 <= -32768) {
                    bArr3[i16] = 0;
                    bArr3[i17] = -128;
                } else {
                    bArr3[i16] = (byte) (i20 & 255);
                    bArr3[i17] = (byte) (i20 >> 8);
                }
            }
        }
        k(i8).put(bArr3, 0, i8).flip();
    }
}
