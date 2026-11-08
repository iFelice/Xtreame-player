package Q6;

import A0.O;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.protobuf.U2;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import okhttp3.HttpUrl;
import okhttp3.internal.connection.RealConnection;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements l, k, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public y f6063G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f6064H;

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k B(String str) {
        w0(str);
        return this;
    }

    @Override // Q6.l
    public final String C(Charset charset) {
        q0.h(charset, "charset");
        return g0(this.f6064H, charset);
    }

    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public final j clone() {
        j jVar = new j();
        if (this.f6064H != 0) {
            y yVar = this.f6063G;
            q0.e(yVar);
            y yVarC = yVar.c();
            jVar.f6063G = yVarC;
            yVarC.f6103g = yVarC;
            yVarC.f6102f = yVarC;
            for (y yVar2 = yVar.f6102f; yVar2 != yVar; yVar2 = yVar2.f6102f) {
                y yVar3 = yVarC.f6103g;
                q0.e(yVar3);
                q0.e(yVar2);
                yVar3.b(yVar2.c());
            }
            jVar.f6064H = this.f6064H;
        }
        return jVar;
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k F(long j8) {
        q0(j8);
        return this;
    }

    @Override // Q6.l
    public final m G() {
        return d(this.f6064H);
    }

    @Override // Q6.k
    public final long H(D d6) {
        q0.h(d6, "source");
        long j8 = 0;
        while (true) {
            long j9 = d6.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j9 == -1) {
                return j8;
            }
            j8 += j9;
        }
    }

    @Override // Q6.l
    public final boolean I(long j8) {
        return this.f6064H >= j8;
    }

    @Override // Q6.l
    public final String K() {
        return v(Long.MAX_VALUE);
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k M(byte[] bArr) {
        n0(bArr);
        return this;
    }

    public final long N() {
        long j8 = this.f6064H;
        if (j8 == 0) {
            return 0L;
        }
        y yVar = this.f6063G;
        q0.e(yVar);
        y yVar2 = yVar.f6103g;
        q0.e(yVar2);
        int i8 = yVar2.f6099c;
        if (i8 < 8192 && yVar2.f6101e) {
            j8 -= (long) (i8 - yVar2.f6098b);
        }
        return j8;
    }

    public final void O(long j8, j jVar, long j9) {
        q0.h(jVar, "out");
        AbstractC0329b.b(this.f6064H, j8, j9);
        if (j9 == 0) {
            return;
        }
        jVar.f6064H += j9;
        y yVar = this.f6063G;
        while (true) {
            q0.e(yVar);
            long j10 = yVar.f6099c - yVar.f6098b;
            if (j8 < j10) {
                break;
            }
            j8 -= j10;
            yVar = yVar.f6102f;
        }
        while (j9 > 0) {
            q0.e(yVar);
            y yVarC = yVar.c();
            int i8 = yVarC.f6098b + ((int) j8);
            yVarC.f6098b = i8;
            yVarC.f6099c = Math.min(i8 + ((int) j9), yVarC.f6099c);
            y yVar2 = jVar.f6063G;
            if (yVar2 == null) {
                yVarC.f6103g = yVarC;
                yVarC.f6102f = yVarC;
                jVar.f6063G = yVarC;
            } else {
                y yVar3 = yVar2.f6103g;
                q0.e(yVar3);
                yVar3.b(yVarC);
            }
            j9 -= (long) (yVarC.f6099c - yVarC.f6098b);
            yVar = yVar.f6102f;
            j8 = 0;
        }
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k Q(int i8, byte[] bArr, int i9) {
        l0(i8, bArr, i9);
        return this;
    }

    @Override // Q6.l
    public final x S() {
        return p113o3.r.c(new v(this));
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k T(m mVar) {
        m0(mVar);
        return this;
    }

    @Override // Q6.l
    public final void U(long j8) throws EOFException {
        if (this.f6064H < j8) {
            throw new EOFException();
        }
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k V(long j8) {
        p0(j8);
        return this;
    }

    @Override // Q6.l
    public final long X() throws EOFException {
        int i8;
        if (this.f6064H == 0) {
            throw new EOFException();
        }
        long j8 = 0;
        int i9 = 0;
        boolean z7 = false;
        do {
            y yVar = this.f6063G;
            q0.e(yVar);
            int i10 = yVar.f6098b;
            int i11 = yVar.f6099c;
            while (i10 < i11) {
                byte b8 = yVar.f6097a[i10];
                if (b8 >= 48 && b8 <= 57) {
                    i8 = b8 - 48;
                } else if (b8 >= 97 && b8 <= 102) {
                    i8 = b8 - 87;
                } else {
                    if (b8 < 65 || b8 > 70) {
                        if (i9 != 0) {
                            z7 = true;
                            break;
                        }
                        char[] cArr = R6.b.f6314a;
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(new String(new char[]{cArr[(b8 >> 4) & 15], cArr[b8 & 15]})));
                    }
                    i8 = b8 - 55;
                }
                if ((j8 & (-1152921504606846976L)) != 0) {
                    j jVar = new j();
                    jVar.q0(j8);
                    jVar.o0(b8);
                    throw new NumberFormatException("Number too large: ".concat(jVar.h0()));
                }
                j8 = (j8 << 4) | ((long) i8);
                i10++;
                i9++;
            }
            if (i10 == i11) {
                this.f6063G = yVar.a();
                z.a(yVar);
            } else {
                yVar.f6098b = i10;
            }
            if (z7) {
                break;
            }
        } while (this.f6063G != null);
        this.f6064H -= (long) i9;
        return j8;
    }

    @Override // Q6.l
    public final int Y(u uVar) throws EOFException {
        q0.h(uVar, "options");
        int iC = R6.a.c(this, uVar, false);
        if (iC == -1) {
            return -1;
        }
        b(uVar.f6083G[iC].c());
        return iC;
    }

    @Override // Q6.l
    public final i Z() {
        return new i(this, 0);
    }

    public final byte a0(long j8) {
        AbstractC0329b.b(this.f6064H, j8, 1L);
        y yVar = this.f6063G;
        if (yVar == null) {
            q0.e(null);
            throw null;
        }
        long j9 = this.f6064H;
        if (j9 - j8 < j8) {
            while (j9 > j8) {
                yVar = yVar.f6103g;
                q0.e(yVar);
                j9 -= (long) (yVar.f6099c - yVar.f6098b);
            }
            return yVar.f6097a[(int) ((((long) yVar.f6098b) + j8) - j9)];
        }
        long j10 = 0;
        while (true) {
            int i8 = yVar.f6099c;
            int i9 = yVar.f6098b;
            long j11 = ((long) (i8 - i9)) + j10;
            if (j11 > j8) {
                return yVar.f6097a[(int) ((((long) i9) + j8) - j10)];
            }
            yVar = yVar.f6102f;
            q0.e(yVar);
            j10 = j11;
        }
    }

    @Override // Q6.l
    public final void b(long j8) throws EOFException {
        while (j8 > 0) {
            y yVar = this.f6063G;
            if (yVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j8, yVar.f6099c - yVar.f6098b);
            long j9 = iMin;
            this.f6064H -= j9;
            j8 -= j9;
            int i8 = yVar.f6098b + iMin;
            yVar.f6098b = i8;
            if (i8 == yVar.f6099c) {
                this.f6063G = yVar.a();
                z.a(yVar);
            }
        }
    }

    public final long b0(byte b8, long j8, long j9) {
        y yVar;
        long j10 = 0;
        if (0 > j8 || j8 > j9) {
            throw new IllegalArgumentException(("size=" + this.f6064H + " fromIndex=" + j8 + " toIndex=" + j9).toString());
        }
        long j11 = this.f6064H;
        if (j9 > j11) {
            j9 = j11;
        }
        if (j8 == j9 || (yVar = this.f6063G) == null) {
            return -1L;
        }
        if (j11 - j8 < j8) {
            while (j11 > j8) {
                yVar = yVar.f6103g;
                q0.e(yVar);
                j11 -= (long) (yVar.f6099c - yVar.f6098b);
            }
            while (j11 < j9) {
                int iMin = (int) Math.min(yVar.f6099c, (((long) yVar.f6098b) + j9) - j11);
                for (int i8 = (int) ((((long) yVar.f6098b) + j8) - j11); i8 < iMin; i8++) {
                    if (yVar.f6097a[i8] == b8) {
                        return ((long) (i8 - yVar.f6098b)) + j11;
                    }
                }
                j11 += (long) (yVar.f6099c - yVar.f6098b);
                yVar = yVar.f6102f;
                q0.e(yVar);
                j8 = j11;
            }
            return -1L;
        }
        while (true) {
            long j12 = ((long) (yVar.f6099c - yVar.f6098b)) + j10;
            if (j12 > j8) {
                break;
            }
            yVar = yVar.f6102f;
            q0.e(yVar);
            j10 = j12;
        }
        while (j10 < j9) {
            int iMin2 = (int) Math.min(yVar.f6099c, (((long) yVar.f6098b) + j9) - j10);
            for (int i9 = (int) ((((long) yVar.f6098b) + j8) - j10); i9 < iMin2; i9++) {
                if (yVar.f6097a[i9] == b8) {
                    return ((long) (i9 - yVar.f6098b)) + j10;
                }
            }
            j10 += (long) (yVar.f6099c - yVar.f6098b);
            yVar = yVar.f6102f;
            q0.e(yVar);
            j8 = j10;
        }
        return -1L;
    }

    public final long c0(m mVar) {
        int i8;
        int i9;
        q0.h(mVar, "targetBytes");
        y yVar = this.f6063G;
        if (yVar == null) {
            return -1L;
        }
        long j8 = this.f6064H;
        long j9 = 0;
        if (j8 < 0) {
            while (j8 > 0) {
                yVar = yVar.f6103g;
                q0.e(yVar);
                j8 -= (long) (yVar.f6099c - yVar.f6098b);
            }
            if (mVar.c() == 2) {
                byte bF = mVar.f(0);
                byte bF2 = mVar.f(1);
                while (j8 < this.f6064H) {
                    i8 = (int) ((((long) yVar.f6098b) + j9) - j8);
                    int i10 = yVar.f6099c;
                    while (true) {
                        if (i8 >= i10) {
                            j9 = j8 + ((long) (yVar.f6099c - yVar.f6098b));
                            yVar = yVar.f6102f;
                            q0.e(yVar);
                            j8 = j9;
                        } else {
                            byte b8 = yVar.f6097a[i8];
                            if (b8 == bF || b8 == bF2) {
                                i9 = yVar.f6098b;
                            } else {
                                i8++;
                            }
                        }
                    }
                }
                return -1L;
            }
            byte[] bArrE = mVar.e();
            while (j8 < this.f6064H) {
                i8 = (int) ((((long) yVar.f6098b) + j9) - j8);
                int i11 = yVar.f6099c;
                while (true) {
                    if (i8 < i11) {
                        byte b9 = yVar.f6097a[i8];
                        int length = bArrE.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length) {
                                i8++;
                            } else if (b9 == bArrE[i12]) {
                                i9 = yVar.f6098b;
                            } else {
                                i12++;
                            }
                        }
                    } else {
                        j9 = j8 + ((long) (yVar.f6099c - yVar.f6098b));
                        yVar = yVar.f6102f;
                        q0.e(yVar);
                        j8 = j9;
                    }
                }
            }
            return -1L;
        }
        j8 = 0;
        while (true) {
            long j10 = ((long) (yVar.f6099c - yVar.f6098b)) + j8;
            if (j10 > 0) {
                break;
            }
            yVar = yVar.f6102f;
            q0.e(yVar);
            j8 = j10;
        }
        if (mVar.c() == 2) {
            byte bF3 = mVar.f(0);
            byte bF4 = mVar.f(1);
            while (j8 < this.f6064H) {
                i8 = (int) ((((long) yVar.f6098b) + j9) - j8);
                int i13 = yVar.f6099c;
                while (true) {
                    if (i8 >= i13) {
                        j9 = j8 + ((long) (yVar.f6099c - yVar.f6098b));
                        yVar = yVar.f6102f;
                        q0.e(yVar);
                        j8 = j9;
                    } else {
                        byte b10 = yVar.f6097a[i8];
                        if (b10 == bF3 || b10 == bF4) {
                            i9 = yVar.f6098b;
                        } else {
                            i8++;
                        }
                    }
                }
            }
            return -1L;
        }
        byte[] bArrE2 = mVar.e();
        while (j8 < this.f6064H) {
            i8 = (int) ((((long) yVar.f6098b) + j9) - j8);
            int i14 = yVar.f6099c;
            while (true) {
                if (i8 < i14) {
                    byte b11 = yVar.f6097a[i8];
                    int length2 = bArrE2.length;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= length2) {
                            i8++;
                        } else if (b11 == bArrE2[i15]) {
                            i9 = yVar.f6098b;
                        } else {
                            i15++;
                        }
                    }
                } else {
                    j9 = j8 + ((long) (yVar.f6099c - yVar.f6098b));
                    yVar = yVar.f6102f;
                    q0.e(yVar);
                    j8 = j9;
                }
            }
        }
        return -1L;
        return ((long) (i8 - i9)) + j8;
    }

    public final void clear() throws EOFException {
        b(this.f6064H);
    }

    @Override // Q6.l
    public final m d(long j8) throws EOFException {
        if (j8 < 0 || j8 > 2147483647L) {
            throw new IllegalArgumentException(O.z("byteCount: ", j8).toString());
        }
        if (this.f6064H < j8) {
            throw new EOFException();
        }
        if (j8 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new m(f0(j8));
        }
        m mVarJ0 = j0((int) j8);
        b(j8);
        return mVarJ0;
    }

    public final int d0(byte[] bArr, int i8, int i9) {
        q0.h(bArr, "sink");
        AbstractC0329b.b(bArr.length, i8, i9);
        y yVar = this.f6063G;
        if (yVar == null) {
            return -1;
        }
        int iMin = Math.min(i9, yVar.f6099c - yVar.f6098b);
        int i10 = yVar.f6098b;
        p162u6.j.K(i8, i10, i10 + iMin, yVar.f6097a, bArr);
        int i11 = yVar.f6098b + iMin;
        yVar.f6098b = i11;
        this.f6064H -= (long) iMin;
        if (i11 == yVar.f6099c) {
            this.f6063G = yVar.a();
            z.a(yVar);
        }
        return iMin;
    }

    public final h e0(h hVar) {
        q0.h(hVar, "unsafeCursor");
        byte[] bArr = R6.a.f6313a;
        if (hVar == AbstractC0329b.f6047a) {
            hVar = new h();
        }
        if (hVar.f6054G != null) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        hVar.f6054G = this;
        hVar.f6055H = true;
        return hVar;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof j) {
                long j8 = this.f6064H;
                j jVar = (j) obj;
                if (j8 == jVar.f6064H) {
                    if (j8 != 0) {
                        y yVar = this.f6063G;
                        q0.e(yVar);
                        y yVar2 = jVar.f6063G;
                        q0.e(yVar2);
                        int i8 = yVar.f6098b;
                        int i9 = yVar2.f6098b;
                        long j9 = 0;
                        while (j9 < this.f6064H) {
                            long jMin = Math.min(yVar.f6099c - i8, yVar2.f6099c - i9);
                            long j10 = 0;
                            while (j10 < jMin) {
                                int i10 = i8 + 1;
                                byte b8 = yVar.f6097a[i8];
                                int i11 = i9 + 1;
                                if (b8 == yVar2.f6097a[i9]) {
                                    j10++;
                                    i9 = i11;
                                    i8 = i10;
                                }
                            }
                            if (i8 == yVar.f6099c) {
                                y yVar3 = yVar.f6102f;
                                q0.e(yVar3);
                                i8 = yVar3.f6098b;
                                yVar = yVar3;
                            }
                            if (i9 == yVar2.f6099c) {
                                yVar2 = yVar2.f6102f;
                                q0.e(yVar2);
                                i9 = yVar2.f6098b;
                            }
                            j9 += jMin;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final byte[] f0(long j8) throws EOFException {
        if (j8 < 0 || j8 > 2147483647L) {
            throw new IllegalArgumentException(O.z("byteCount: ", j8).toString());
        }
        if (this.f6064H < j8) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j8];
        readFully(bArr);
        return bArr;
    }

    public final String g0(long j8, Charset charset) throws EOFException {
        q0.h(charset, "charset");
        if (j8 < 0 || j8 > 2147483647L) {
            throw new IllegalArgumentException(O.z("byteCount: ", j8).toString());
        }
        if (this.f6064H < j8) {
            throw new EOFException();
        }
        if (j8 == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        y yVar = this.f6063G;
        q0.e(yVar);
        int i8 = yVar.f6098b;
        if (((long) i8) + j8 > yVar.f6099c) {
            return new String(f0(j8), charset);
        }
        int i9 = (int) j8;
        String str = new String(yVar.f6097a, i8, i9, charset);
        int i10 = yVar.f6098b + i9;
        yVar.f6098b = i10;
        this.f6064H -= j8;
        if (i10 == yVar.f6099c) {
            this.f6063G = yVar.a();
            z.a(yVar);
        }
        return str;
    }

    public final String h0() {
        return g0(this.f6064H, I6.a.f4021a);
    }

    public final int hashCode() {
        y yVar = this.f6063G;
        if (yVar == null) {
            return 0;
        }
        int i8 = 1;
        do {
            int i9 = yVar.f6099c;
            for (int i10 = yVar.f6098b; i10 < i9; i10++) {
                i8 = (i8 * 31) + yVar.f6097a[i10];
            }
            yVar = yVar.f6102f;
            q0.e(yVar);
        } while (yVar != this.f6063G);
        return i8;
    }

    @Override // Q6.l
    public final void i(j jVar, long j8) throws EOFException {
        q0.h(jVar, "sink");
        long j9 = this.f6064H;
        if (j9 >= j8) {
            jVar.write(this, j8);
        } else {
            jVar.write(this, j9);
            throw new EOFException();
        }
    }

    public final m i0() {
        long j8 = this.f6064H;
        if (j8 <= 2147483647L) {
            return j0((int) j8);
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f6064H).toString());
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k j(int i8) {
        t0(i8);
        return this;
    }

    public final m j0(int i8) {
        if (i8 == 0) {
            return m.f6065J;
        }
        AbstractC0329b.b(this.f6064H, 0L, i8);
        y yVar = this.f6063G;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i10 < i8) {
            q0.e(yVar);
            int i12 = yVar.f6099c;
            int i13 = yVar.f6098b;
            if (i12 == i13) {
                throw new AssertionError("s.limit == s.pos");
            }
            i10 += i12 - i13;
            i11++;
            yVar = yVar.f6102f;
        }
        byte[][] bArr = new byte[i11][];
        int[] iArr = new int[i11 * 2];
        y yVar2 = this.f6063G;
        int i14 = 0;
        while (i9 < i8) {
            q0.e(yVar2);
            bArr[i14] = yVar2.f6097a;
            i9 += yVar2.f6099c - yVar2.f6098b;
            iArr[i14] = Math.min(i9, i8);
            iArr[i14 + i11] = yVar2.f6098b;
            yVar2.f6100d = true;
            i14++;
            yVar2 = yVar2.f6102f;
        }
        return new A(bArr, iArr);
    }

    public final y k0(int i8) {
        if (i8 < 1 || i8 > 8192) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        y yVar = this.f6063G;
        if (yVar == null) {
            y yVarB = z.b();
            this.f6063G = yVarB;
            yVarB.f6103g = yVarB;
            yVarB.f6102f = yVarB;
            return yVarB;
        }
        y yVar2 = yVar.f6103g;
        q0.e(yVar2);
        if (yVar2.f6099c + i8 <= 8192 && yVar2.f6101e) {
            return yVar2;
        }
        y yVarB2 = z.b();
        yVar2.b(yVarB2);
        return yVarB2;
    }

    public final void l0(int i8, byte[] bArr, int i9) {
        q0.h(bArr, "source");
        long j8 = i9;
        AbstractC0329b.b(bArr.length, i8, j8);
        int i10 = i9 + i8;
        while (i8 < i10) {
            y yVarK0 = k0(1);
            int iMin = Math.min(i10 - i8, 8192 - yVarK0.f6099c);
            int i11 = i8 + iMin;
            p162u6.j.K(yVarK0.f6099c, i8, i11, bArr, yVarK0.f6097a);
            yVarK0.f6099c += iMin;
            i8 = i11;
        }
        this.f6064H += j8;
    }

    public final void m0(m mVar) {
        q0.h(mVar, "byteString");
        mVar.l(this, mVar.c());
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k n(int i8) {
        r0(i8);
        return this;
    }

    public final void n0(byte[] bArr) {
        q0.h(bArr, "source");
        l0(0, bArr, bArr.length);
    }

    public final void o0(int i8) {
        y yVarK0 = k0(1);
        int i9 = yVarK0.f6099c;
        yVarK0.f6099c = i9 + 1;
        yVarK0.f6097a[i9] = (byte) i8;
        this.f6064H++;
    }

    @Override // Q6.l
    public final byte[] p() {
        return f0(this.f6064H);
    }

    public final void p0(long j8) {
        boolean z7;
        byte[] bArr;
        if (j8 == 0) {
            o0(48);
            return;
        }
        int i8 = 1;
        if (j8 < 0) {
            j8 = -j8;
            if (j8 < 0) {
                w0("-9223372036854775808");
                return;
            }
            z7 = true;
        } else {
            z7 = false;
        }
        if (j8 < 100000000) {
            if (j8 < 10000) {
                if (j8 >= 100) {
                    i8 = j8 < 1000 ? 3 : 4;
                } else if (j8 >= 10) {
                    i8 = 2;
                }
            } else if (j8 < 1000000) {
                i8 = j8 < 100000 ? 5 : 6;
            } else {
                i8 = j8 < 10000000 ? 7 : 8;
            }
        } else if (j8 < 1000000000000L) {
            if (j8 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i8 = j8 < 1000000000 ? 9 : 10;
            } else {
                i8 = j8 < 100000000000L ? 11 : 12;
            }
        } else if (j8 < 1000000000000000L) {
            if (j8 < 10000000000000L) {
                i8 = 13;
            } else {
                i8 = j8 < 100000000000000L ? 14 : 15;
            }
        } else if (j8 < 100000000000000000L) {
            i8 = j8 < 10000000000000000L ? 16 : 17;
        } else {
            i8 = j8 < 1000000000000000000L ? 18 : 19;
        }
        if (z7) {
            i8++;
        }
        y yVarK0 = k0(i8);
        int i9 = yVarK0.f6099c + i8;
        while (true) {
            bArr = yVarK0.f6097a;
            if (j8 == 0) {
                break;
            }
            long j9 = 10;
            i9--;
            bArr[i9] = R6.a.f6313a[(int) (j8 % j9)];
            j8 /= j9;
        }
        if (z7) {
            bArr[i9 - 1] = 45;
        }
        yVarK0.f6099c += i8;
        this.f6064H += (long) i8;
    }

    @Override // Q6.l
    public final boolean q() {
        return this.f6064H == 0;
    }

    public final void q0(long j8) {
        if (j8 == 0) {
            o0(48);
            return;
        }
        long j9 = (j8 >>> 1) | j8;
        long j10 = j9 | (j9 >>> 2);
        long j11 = j10 | (j10 >>> 4);
        long j12 = j11 | (j11 >>> 8);
        long j13 = j12 | (j12 >>> 16);
        long j14 = j13 | (j13 >>> 32);
        long j15 = j14 - ((j14 >>> 1) & 6148914691236517205L);
        long j16 = ((j15 >>> 2) & 3689348814741910323L) + (j15 & 3689348814741910323L);
        long j17 = ((j16 >>> 4) + j16) & 1085102592571150095L;
        long j18 = j17 + (j17 >>> 8);
        long j19 = j18 + (j18 >>> 16);
        int i8 = (int) ((((j19 & 63) + ((j19 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        y yVarK0 = k0(i8);
        int i9 = yVarK0.f6099c;
        for (int i10 = (i9 + i8) - 1; i10 >= i9; i10--) {
            yVarK0.f6097a[i10] = R6.a.f6313a[(int) (15 & j8)];
            j8 >>>= 4;
        }
        yVarK0.f6099c += i8;
        this.f6064H += (long) i8;
    }

    @Override // Q6.k
    public final /* bridge */ /* synthetic */ k r(int i8) {
        o0(i8);
        return this;
    }

    public final void r0(int i8) {
        y yVarK0 = k0(4);
        int i9 = yVarK0.f6099c;
        byte[] bArr = yVarK0.f6097a;
        bArr[i9] = (byte) ((i8 >>> 24) & 255);
        bArr[i9 + 1] = (byte) ((i8 >>> 16) & 255);
        bArr[i9 + 2] = (byte) ((i8 >>> 8) & 255);
        bArr[i9 + 3] = (byte) (i8 & 255);
        yVarK0.f6099c = i9 + 4;
        this.f6064H += 4;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        q0.h(byteBuffer, "sink");
        y yVar = this.f6063G;
        if (yVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), yVar.f6099c - yVar.f6098b);
        byteBuffer.put(yVar.f6097a, yVar.f6098b, iMin);
        int i8 = yVar.f6098b + iMin;
        yVar.f6098b = i8;
        this.f6064H -= (long) iMin;
        if (i8 == yVar.f6099c) {
            this.f6063G = yVar.a();
            z.a(yVar);
        }
        return iMin;
    }

    @Override // Q6.l
    public final byte readByte() throws EOFException {
        if (this.f6064H == 0) {
            throw new EOFException();
        }
        y yVar = this.f6063G;
        q0.e(yVar);
        int i8 = yVar.f6098b;
        int i9 = yVar.f6099c;
        int i10 = i8 + 1;
        byte b8 = yVar.f6097a[i8];
        this.f6064H--;
        if (i10 == i9) {
            this.f6063G = yVar.a();
            z.a(yVar);
        } else {
            yVar.f6098b = i10;
        }
        return b8;
    }

    @Override // Q6.l
    public final void readFully(byte[] bArr) throws EOFException {
        int i8 = 0;
        while (i8 < bArr.length) {
            int iD0 = d0(bArr, i8, bArr.length - i8);
            if (iD0 == -1) {
                throw new EOFException();
            }
            i8 += iD0;
        }
    }

    @Override // Q6.l
    public final int readInt() throws EOFException {
        if (this.f6064H < 4) {
            throw new EOFException();
        }
        y yVar = this.f6063G;
        q0.e(yVar);
        int i8 = yVar.f6098b;
        int i9 = yVar.f6099c;
        if (i9 - i8 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = yVar.f6097a;
        int i10 = i8 + 3;
        int i11 = ((bArr[i8 + 1] & 255) << 16) | ((bArr[i8] & 255) << 24) | ((bArr[i8 + 2] & 255) << 8);
        int i12 = i8 + 4;
        int i13 = i11 | (bArr[i10] & 255);
        this.f6064H -= 4;
        if (i12 == i9) {
            this.f6063G = yVar.a();
            z.a(yVar);
        } else {
            yVar.f6098b = i12;
        }
        return i13;
    }

    @Override // Q6.l
    public final long readLong() throws EOFException {
        if (this.f6064H < 8) {
            throw new EOFException();
        }
        y yVar = this.f6063G;
        q0.e(yVar);
        int i8 = yVar.f6098b;
        int i9 = yVar.f6099c;
        if (i9 - i8 < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = yVar.f6097a;
        int i10 = i8 + 7;
        long j8 = ((((long) bArr[i8]) & 255) << 56) | ((((long) bArr[i8 + 1]) & 255) << 48) | ((((long) bArr[i8 + 2]) & 255) << 40) | ((((long) bArr[i8 + 3]) & 255) << 32) | ((((long) bArr[i8 + 4]) & 255) << 24) | ((((long) bArr[i8 + 5]) & 255) << 16) | ((((long) bArr[i8 + 6]) & 255) << 8);
        int i11 = i8 + 8;
        long j9 = (((long) bArr[i10]) & 255) | j8;
        this.f6064H -= 8;
        if (i11 == i9) {
            this.f6063G = yVar.a();
            z.a(yVar);
        } else {
            yVar.f6098b = i11;
        }
        return j9;
    }

    @Override // Q6.l
    public final short readShort() throws EOFException {
        if (this.f6064H < 2) {
            throw new EOFException();
        }
        y yVar = this.f6063G;
        q0.e(yVar);
        int i8 = yVar.f6098b;
        int i9 = yVar.f6099c;
        if (i9 - i8 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        int i10 = i8 + 1;
        byte[] bArr = yVar.f6097a;
        int i11 = (bArr[i8] & 255) << 8;
        int i12 = i8 + 2;
        int i13 = (bArr[i10] & 255) | i11;
        this.f6064H -= 2;
        if (i12 == i9) {
            this.f6063G = yVar.a();
            z.a(yVar);
        } else {
            yVar.f6098b = i12;
        }
        return (short) i13;
    }

    @Override // Q6.l
    public final boolean s(long j8, m mVar) {
        q0.h(mVar, "bytes");
        int iC = mVar.c();
        if (j8 < 0 || iC < 0 || this.f6064H - j8 < iC || mVar.c() < iC) {
            return false;
        }
        for (int i8 = 0; i8 < iC; i8++) {
            if (a0(((long) i8) + j8) != mVar.f(i8)) {
                return false;
            }
        }
        return true;
    }

    public final void s0(long j8) {
        y yVarK0 = k0(8);
        int i8 = yVarK0.f6099c;
        byte[] bArr = yVarK0.f6097a;
        bArr[i8] = (byte) ((j8 >>> 56) & 255);
        bArr[i8 + 1] = (byte) ((j8 >>> 48) & 255);
        bArr[i8 + 2] = (byte) ((j8 >>> 40) & 255);
        bArr[i8 + 3] = (byte) ((j8 >>> 32) & 255);
        bArr[i8 + 4] = (byte) ((j8 >>> 24) & 255);
        bArr[i8 + 5] = (byte) ((j8 >>> 16) & 255);
        bArr[i8 + 6] = (byte) ((j8 >>> 8) & 255);
        bArr[i8 + 7] = (byte) (j8 & 255);
        yVarK0.f6099c = i8 + 8;
        this.f6064H += 8;
    }

    public final void t0(int i8) {
        y yVarK0 = k0(2);
        int i9 = yVarK0.f6099c;
        byte[] bArr = yVarK0.f6097a;
        bArr[i9] = (byte) ((i8 >>> 8) & 255);
        bArr[i9 + 1] = (byte) (i8 & 255);
        yVarK0.f6099c = i9 + 2;
        this.f6064H += 2;
    }

    @Override // Q6.D
    public final G timeout() {
        return G.NONE;
    }

    public final String toString() {
        return i0().toString();
    }

    @Override // Q6.l
    public final long u() throws EOFException {
        int i8;
        byte b8;
        int i9;
        byte b9 = 48;
        if (this.f6064H == 0) {
            throw new EOFException();
        }
        long j8 = -7;
        long j9 = 0;
        int i10 = 0;
        boolean z7 = false;
        boolean z8 = false;
        loop0: while (true) {
            y yVar = this.f6063G;
            q0.e(yVar);
            int i11 = yVar.f6098b;
            int i12 = yVar.f6099c;
            while (true) {
                if (i11 >= i12) {
                    i8 = i12;
                    break;
                }
                b8 = yVar.f6097a[i11];
                if (b8 >= b9 && b8 <= 57) {
                    int i13 = 48 - b8;
                    if (j9 < -922337203685477580L) {
                        break loop0;
                    }
                    i9 = i12;
                    if (j9 == -922337203685477580L && i13 < j8) {
                        break loop0;
                    }
                    j9 = (j9 * 10) + ((long) i13);
                } else {
                    i9 = i12;
                    if (b8 != 45 || i10 != 0) {
                        i8 = i9;
                        z8 = true;
                        break;
                    }
                    j8--;
                    z7 = true;
                }
                i11++;
                i10++;
                i12 = i9;
                b9 = 48;
            }
            if (i11 == i8) {
                this.f6063G = yVar.a();
                z.a(yVar);
            } else {
                yVar.f6098b = i11;
            }
            if (z8 || this.f6063G == null) {
                long j10 = this.f6064H - ((long) i10);
                this.f6064H = j10;
                if (i10 >= (z7 ? 2 : 1)) {
                    return z7 ? j9 : -j9;
                }
                if (j10 == 0) {
                    throw new EOFException();
                }
                StringBuilder sbL = p000a.r.l(z7 ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
                byte bA0 = a0(0L);
                char[] cArr = R6.b.f6314a;
                sbL.append(new String(new char[]{cArr[(bA0 >> 4) & 15], cArr[bA0 & 15]}));
                throw new NumberFormatException(sbL.toString());
            }
            b9 = 48;
        }
        j jVar = new j();
        jVar.p0(j9);
        jVar.o0(b8);
        if (!z7) {
            jVar.readByte();
        }
        throw new NumberFormatException("Number too large: ".concat(jVar.h0()));
    }

    public final void u0(String str, int i8, int i9, Charset charset) {
        q0.h(str, "string");
        q0.h(charset, "charset");
        if (i8 < 0) {
            throw new IllegalArgumentException(p000a.r.f("beginIndex < 0: ", i8).toString());
        }
        if (i9 < i8) {
            throw new IllegalArgumentException(U2.j("endIndex < beginIndex: ", i9, " < ", i8).toString());
        }
        if (i9 > str.length()) {
            StringBuilder sbK = p000a.r.k("endIndex > string.length: ", i9, " > ");
            sbK.append(str.length());
            throw new IllegalArgumentException(sbK.toString().toString());
        }
        if (q0.c(charset, I6.a.f4021a)) {
            v0(i8, i9, str);
            return;
        }
        String strSubstring = str.substring(i8, i9);
        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        byte[] bytes = strSubstring.getBytes(charset);
        q0.g(bytes, "this as java.lang.String).getBytes(charset)");
        l0(0, bytes, bytes.length);
    }

    @Override // Q6.l
    public final String v(long j8) throws EOFException {
        if (j8 < 0) {
            throw new IllegalArgumentException(O.z("limit < 0: ", j8).toString());
        }
        long j9 = j8 != Long.MAX_VALUE ? j8 + 1 : Long.MAX_VALUE;
        long jB0 = b0((byte) 10, 0L, j9);
        if (jB0 != -1) {
            return R6.a.b(this, jB0);
        }
        if (j9 < this.f6064H && a0(j9 - 1) == 13 && a0(j9) == 10) {
            return R6.a.b(this, j9);
        }
        j jVar = new j();
        O(0L, jVar, Math.min(32, this.f6064H));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f6064H, j8) + " content=" + jVar.d(jVar.f6064H).d() + (char) 8230);
    }

    public final void v0(int i8, int i9, String str) {
        char cCharAt;
        q0.h(str, "string");
        if (i8 < 0) {
            throw new IllegalArgumentException(p000a.r.f("beginIndex < 0: ", i8).toString());
        }
        if (i9 < i8) {
            throw new IllegalArgumentException(U2.j("endIndex < beginIndex: ", i9, " < ", i8).toString());
        }
        if (i9 > str.length()) {
            StringBuilder sbK = p000a.r.k("endIndex > string.length: ", i9, " > ");
            sbK.append(str.length());
            throw new IllegalArgumentException(sbK.toString().toString());
        }
        while (i8 < i9) {
            char cCharAt2 = str.charAt(i8);
            if (cCharAt2 < 128) {
                y yVarK0 = k0(1);
                int i10 = yVarK0.f6099c - i8;
                int iMin = Math.min(i9, 8192 - i10);
                int i11 = i8 + 1;
                byte[] bArr = yVarK0.f6097a;
                bArr[i8 + i10] = (byte) cCharAt2;
                while (true) {
                    i8 = i11;
                    if (i8 >= iMin || (cCharAt = str.charAt(i8)) >= 128) {
                        break;
                    }
                    i11 = i8 + 1;
                    bArr[i8 + i10] = (byte) cCharAt;
                }
                int i12 = yVarK0.f6099c;
                int i13 = (i10 + i8) - i12;
                yVarK0.f6099c = i12 + i13;
                this.f6064H += (long) i13;
            } else {
                if (cCharAt2 < 2048) {
                    y yVarK1 = k0(2);
                    int i14 = yVarK1.f6099c;
                    byte[] bArr2 = yVarK1.f6097a;
                    bArr2[i14] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i14 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    yVarK1.f6099c = i14 + 2;
                    this.f6064H += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    y yVarK2 = k0(3);
                    int i15 = yVarK2.f6099c;
                    byte[] bArr3 = yVarK2.f6097a;
                    bArr3[i15] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i15 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i15 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    yVarK2.f6099c = i15 + 3;
                    this.f6064H += 3;
                } else {
                    int i16 = i8 + 1;
                    char cCharAt3 = i16 < i9 ? str.charAt(i16) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        o0(63);
                        i8 = i16;
                    } else {
                        int i17 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        y yVarK3 = k0(4);
                        int i18 = yVarK3.f6099c;
                        byte[] bArr4 = yVarK3.f6097a;
                        bArr4[i18] = (byte) ((i17 >> 18) | 240);
                        bArr4[i18 + 1] = (byte) (((i17 >> 12) & 63) | 128);
                        bArr4[i18 + 2] = (byte) (((i17 >> 6) & 63) | 128);
                        bArr4[i18 + 3] = (byte) ((i17 & 63) | 128);
                        yVarK3.f6099c = i18 + 4;
                        this.f6064H += 4;
                        i8 += 2;
                    }
                }
                i8++;
            }
        }
    }

    public final void w0(String str) {
        q0.h(str, "string");
        v0(0, str.length(), str);
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        q0.h(byteBuffer, "source");
        int iRemaining = byteBuffer.remaining();
        int i8 = iRemaining;
        while (i8 > 0) {
            y yVarK0 = k0(1);
            int iMin = Math.min(i8, 8192 - yVarK0.f6099c);
            byteBuffer.get(yVarK0.f6097a, yVarK0.f6099c, iMin);
            i8 -= iMin;
            yVarK0.f6099c += iMin;
        }
        this.f6064H += (long) iRemaining;
        return iRemaining;
    }

    public final void x0(int i8) {
        String str;
        int i9 = 0;
        if (i8 < 128) {
            o0(i8);
            return;
        }
        if (i8 < 2048) {
            y yVarK0 = k0(2);
            int i10 = yVarK0.f6099c;
            byte[] bArr = yVarK0.f6097a;
            bArr[i10] = (byte) ((i8 >> 6) | 192);
            bArr[1 + i10] = (byte) ((i8 & 63) | 128);
            yVarK0.f6099c = i10 + 2;
            this.f6064H += 2;
            return;
        }
        if (55296 <= i8 && i8 < 57344) {
            o0(63);
            return;
        }
        if (i8 < 65536) {
            y yVarK1 = k0(3);
            int i11 = yVarK1.f6099c;
            byte[] bArr2 = yVarK1.f6097a;
            bArr2[i11] = (byte) ((i8 >> 12) | 224);
            bArr2[1 + i11] = (byte) (((i8 >> 6) & 63) | 128);
            bArr2[2 + i11] = (byte) ((i8 & 63) | 128);
            yVarK1.f6099c = i11 + 3;
            this.f6064H += 3;
            return;
        }
        if (i8 <= 1114111) {
            y yVarK2 = k0(4);
            int i12 = yVarK2.f6099c;
            byte[] bArr3 = yVarK2.f6097a;
            bArr3[i12] = (byte) ((i8 >> 18) | 240);
            bArr3[1 + i12] = (byte) (((i8 >> 12) & 63) | 128);
            bArr3[2 + i12] = (byte) (((i8 >> 6) & 63) | 128);
            bArr3[3 + i12] = (byte) ((i8 & 63) | 128);
            yVarK2.f6099c = i12 + 4;
            this.f6064H += 4;
            return;
        }
        StringBuilder sb = new StringBuilder("Unexpected code point: 0x");
        if (i8 != 0) {
            char[] cArr = R6.b.f6314a;
            char[] cArr2 = {cArr[(i8 >> 28) & 15], cArr[(i8 >> 24) & 15], cArr[(i8 >> 20) & 15], cArr[(i8 >> 16) & 15], cArr[(i8 >> 12) & 15], cArr[(i8 >> 8) & 15], cArr[(i8 >> 4) & 15], cArr[i8 & 15]};
            while (i9 < 8 && cArr2[i9] == '0') {
                i9++;
            }
            if (i9 < 0) {
                throw new IndexOutOfBoundsException(O.y("startIndex: ", i9, ", endIndex: 8, size: 8"));
            }
            if (i9 > 8) {
                throw new IllegalArgumentException(O.y("startIndex: ", i9, " > endIndex: 8"));
            }
            str = new String(cArr2, i9, 8 - i9);
        } else {
            str = "0";
        }
        sb.append(str);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // Q6.B
    public final void write(j jVar, long j8) {
        y yVarB;
        q0.h(jVar, "source");
        if (jVar != this) {
            AbstractC0329b.b(jVar.f6064H, 0L, j8);
            while (j8 > 0) {
                y yVar = jVar.f6063G;
                q0.e(yVar);
                int i8 = yVar.f6099c;
                y yVar2 = jVar.f6063G;
                q0.e(yVar2);
                int i9 = 0;
                if (j8 < i8 - yVar2.f6098b) {
                    y yVar3 = this.f6063G;
                    y yVar4 = yVar3 != null ? yVar3.f6103g : null;
                    if (yVar4 != null && yVar4.f6101e) {
                        if ((((long) yVar4.f6099c) + j8) - ((long) (yVar4.f6100d ? 0 : yVar4.f6098b)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            y yVar5 = jVar.f6063G;
                            q0.e(yVar5);
                            yVar5.d(yVar4, (int) j8);
                            jVar.f6064H -= j8;
                            this.f6064H += j8;
                            return;
                        }
                    }
                    y yVar6 = jVar.f6063G;
                    q0.e(yVar6);
                    int i10 = (int) j8;
                    if (i10 > 0 && i10 <= yVar6.f6099c - yVar6.f6098b) {
                        if (i10 >= 1024) {
                            yVarB = yVar6.c();
                        } else {
                            yVarB = z.b();
                            int i11 = yVar6.f6098b;
                            p162u6.j.K(0, i11, i11 + i10, yVar6.f6097a, yVarB.f6097a);
                        }
                        yVarB.f6099c = yVarB.f6098b + i10;
                        yVar6.f6098b += i10;
                        y yVar7 = yVar6.f6103g;
                        q0.e(yVar7);
                        yVar7.b(yVarB);
                        jVar.f6063G = yVarB;
                    } else {
                        throw new IllegalArgumentException("byteCount out of range".toString());
                    }
                }
                y yVar8 = jVar.f6063G;
                q0.e(yVar8);
                long j9 = yVar8.f6099c - yVar8.f6098b;
                jVar.f6063G = yVar8.a();
                y yVar9 = this.f6063G;
                if (yVar9 == null) {
                    this.f6063G = yVar8;
                    yVar8.f6103g = yVar8;
                    yVar8.f6102f = yVar8;
                } else {
                    y yVar10 = yVar9.f6103g;
                    q0.e(yVar10);
                    yVar10.b(yVar8);
                    y yVar11 = yVar8.f6103g;
                    if (yVar11 != yVar8) {
                        q0.e(yVar11);
                        if (yVar11.f6101e) {
                            int i12 = yVar8.f6099c - yVar8.f6098b;
                            y yVar12 = yVar8.f6103g;
                            q0.e(yVar12);
                            int i13 = 8192 - yVar12.f6099c;
                            y yVar13 = yVar8.f6103g;
                            q0.e(yVar13);
                            if (!yVar13.f6100d) {
                                y yVar14 = yVar8.f6103g;
                                q0.e(yVar14);
                                i9 = yVar14.f6098b;
                            }
                            if (i12 <= i13 + i9) {
                                y yVar15 = yVar8.f6103g;
                                q0.e(yVar15);
                                yVar8.d(yVar15, i12);
                                yVar8.a();
                                z.a(yVar8);
                            }
                        }
                    } else {
                        throw new IllegalStateException("cannot compact".toString());
                    }
                }
                jVar.f6064H -= j9;
                this.f6064H += j9;
                j8 -= j9;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    @Override // Q6.D
    public final long read(j jVar, long j8) {
        q0.h(jVar, "sink");
        if (j8 >= 0) {
            long j9 = this.f6064H;
            if (j9 == 0) {
                return -1L;
            }
            if (j8 > j9) {
                j8 = j9;
            }
            jVar.write(this, j8);
            return j8;
        }
        throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
    }

    @Override // Q6.l, Q6.k
    public final j a() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, Q6.B
    public final void close() {
    }

    @Override // Q6.k, Q6.B, java.io.Flushable
    public final void flush() {
    }

    @Override // Q6.k
    public final k h() {
        return this;
    }

    @Override // Q6.k
    public final k t() {
        return this;
    }
}
