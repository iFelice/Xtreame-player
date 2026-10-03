package Q6;

import A0.O;
import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class x implements l {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final D f6094G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f6095H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f6096I;

    public x(D d6) {
        q0.h(d6, "source");
        this.f6094G = d6;
        this.f6095H = new j();
    }

    @Override // Q6.l
    public final String C(Charset charset) {
        q0.h(charset, "charset");
        D d6 = this.f6094G;
        j jVar = this.f6095H;
        jVar.H(d6);
        return jVar.C(charset);
    }

    public final int E() throws EOFException {
        U(4L);
        int i8 = this.f6095H.readInt();
        return ((i8 & 255) << 24) | (((-16777216) & i8) >>> 24) | ((16711680 & i8) >>> 8) | ((65280 & i8) << 8);
    }

    @Override // Q6.l
    public final m G() {
        D d6 = this.f6094G;
        j jVar = this.f6095H;
        jVar.H(d6);
        return jVar.d(jVar.f6064H);
    }

    @Override // Q6.l
    public final boolean I(long j8) {
        j jVar;
        if (j8 < 0) {
            throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
        }
        if (!(!this.f6096I)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            jVar = this.f6095H;
            if (jVar.f6064H >= j8) {
                return true;
            }
        } while (this.f6094G.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return false;
    }

    @Override // Q6.l
    public final String K() {
        return v(Long.MAX_VALUE);
    }

    @Override // Q6.l
    public final x S() {
        return p113o3.r.c(new v(this));
    }

    @Override // Q6.l
    public final void U(long j8) throws EOFException {
        if (!I(j8)) {
            throw new EOFException();
        }
    }

    @Override // Q6.l
    public final long X() throws EOFException {
        j jVar;
        U(1L);
        int i8 = 0;
        while (true) {
            int i9 = i8 + 1;
            boolean zI = I(i9);
            jVar = this.f6095H;
            if (!zI) {
                break;
            }
            byte bA0 = jVar.a0(i8);
            if ((bA0 < 48 || bA0 > 57) && ((bA0 < 97 || bA0 > 102) && (bA0 < 65 || bA0 > 70))) {
                if (i8 != 0) {
                    break;
                }
                p027d2.v.f(16);
                p027d2.v.f(16);
                String string = Integer.toString(bA0, 16);
                q0.g(string, "toString(this, checkRadix(radix))");
                throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(string));
            }
            i8 = i9;
        }
        return jVar.X();
    }

    @Override // Q6.l
    public final int Y(u uVar) throws EOFException {
        j jVar;
        q0.h(uVar, "options");
        if (!(!this.f6096I)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            jVar = this.f6095H;
            int iC = R6.a.c(jVar, uVar, true);
            if (iC != -2) {
                if (iC == -1) {
                    break;
                }
                jVar.b(uVar.f6083G[iC].c());
                return iC;
            }
        } while (this.f6094G.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    @Override // Q6.l
    public final i Z() {
        return new i(this, 1);
    }

    @Override // Q6.l, Q6.k
    public final j a() {
        return this.f6095H;
    }

    @Override // Q6.l
    public final void b(long j8) throws EOFException {
        if (!(!this.f6096I)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j8 > 0) {
            j jVar = this.f6095H;
            if (jVar.f6064H == 0 && this.f6094G.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j8, jVar.f6064H);
            jVar.b(jMin);
            j8 -= jMin;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        if (this.f6096I) {
            return;
        }
        this.f6096I = true;
        this.f6094G.close();
        this.f6095H.clear();
    }

    @Override // Q6.l
    public final m d(long j8) throws EOFException {
        U(j8);
        return this.f6095H.d(j8);
    }

    @Override // Q6.l
    public final void i(j jVar, long j8) throws EOFException {
        j jVar2 = this.f6095H;
        q0.h(jVar, "sink");
        try {
            U(j8);
            jVar2.i(jVar, j8);
        } catch (EOFException e8) {
            jVar.H(jVar2);
            throw e8;
        }
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f6096I;
    }

    public final long k(byte b8, long j8, long j9) {
        if (!(!this.f6096I)) {
            throw new IllegalStateException("closed".toString());
        }
        long jMax = 0;
        if (0 > j9) {
            throw new IllegalArgumentException(O.z("fromIndex=0 toIndex=", j9).toString());
        }
        while (jMax < j9) {
            long jB0 = this.f6095H.b0(b8, jMax, j9);
            if (jB0 != -1) {
                return jB0;
            }
            j jVar = this.f6095H;
            long j10 = jVar.f6064H;
            if (j10 >= j9 || this.f6094G.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            jMax = Math.max(jMax, j10);
        }
        return -1L;
    }

    @Override // Q6.l
    public final byte[] p() {
        D d6 = this.f6094G;
        j jVar = this.f6095H;
        jVar.H(d6);
        return jVar.f0(jVar.f6064H);
    }

    @Override // Q6.l
    public final boolean q() {
        if (!(!this.f6096I)) {
            throw new IllegalStateException("closed".toString());
        }
        j jVar = this.f6095H;
        return jVar.q() && this.f6094G.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        q0.h(byteBuffer, "sink");
        j jVar = this.f6095H;
        if (jVar.f6064H == 0 && this.f6094G.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return jVar.read(byteBuffer);
    }

    @Override // Q6.l
    public final byte readByte() throws EOFException {
        U(1L);
        return this.f6095H.readByte();
    }

    @Override // Q6.l
    public final void readFully(byte[] bArr) throws EOFException {
        j jVar = this.f6095H;
        try {
            U(bArr.length);
            jVar.readFully(bArr);
        } catch (EOFException e8) {
            int i8 = 0;
            while (true) {
                long j8 = jVar.f6064H;
                if (j8 <= 0) {
                    throw e8;
                }
                int iD0 = jVar.d0(bArr, i8, (int) j8);
                if (iD0 == -1) {
                    throw new AssertionError();
                }
                i8 += iD0;
            }
        }
    }

    @Override // Q6.l
    public final int readInt() throws EOFException {
        U(4L);
        return this.f6095H.readInt();
    }

    @Override // Q6.l
    public final long readLong() throws EOFException {
        U(8L);
        return this.f6095H.readLong();
    }

    @Override // Q6.l
    public final short readShort() throws EOFException {
        U(2L);
        return this.f6095H.readShort();
    }

    @Override // Q6.l
    public final boolean s(long j8, m mVar) {
        q0.h(mVar, "bytes");
        int iC = mVar.c();
        if (!(!this.f6096I)) {
            throw new IllegalStateException("closed".toString());
        }
        if (iC >= 0 && mVar.c() >= iC) {
            for (int i8 = 0; i8 < iC; i8++) {
                long j9 = i8;
                if (I(1 + j9) && this.f6095H.a0(j9) == mVar.f(i8)) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // Q6.D
    public final G timeout() {
        return this.f6094G.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f6094G + ')';
    }

    @Override // Q6.l
    public final long u() throws EOFException {
        j jVar;
        U(1L);
        long j8 = 0;
        while (true) {
            long j9 = j8 + 1;
            boolean zI = I(j9);
            jVar = this.f6095H;
            if (!zI) {
                break;
            }
            byte bA0 = jVar.a0(j8);
            if ((bA0 < 48 || bA0 > 57) && !(j8 == 0 && bA0 == 45)) {
                if (j8 != 0) {
                    break;
                }
                p027d2.v.f(16);
                p027d2.v.f(16);
                String string = Integer.toString(bA0, 16);
                q0.g(string, "toString(this, checkRadix(radix))");
                throw new NumberFormatException("Expected a digit or '-' but was 0x".concat(string));
            }
            j8 = j9;
        }
        return jVar.u();
    }

    @Override // Q6.l
    public final String v(long j8) throws EOFException {
        if (j8 < 0) {
            throw new IllegalArgumentException(O.z("limit < 0: ", j8).toString());
        }
        long j9 = j8 == Long.MAX_VALUE ? Long.MAX_VALUE : j8 + 1;
        long jK = k((byte) 10, 0L, j9);
        j jVar = this.f6095H;
        if (jK != -1) {
            return R6.a.b(jVar, jK);
        }
        if (j9 < Long.MAX_VALUE && I(j9) && jVar.a0(j9 - 1) == 13 && I(1 + j9) && jVar.a0(j9) == 10) {
            return R6.a.b(jVar, j9);
        }
        j jVar2 = new j();
        jVar.O(0L, jVar2, Math.min(32, jVar.f6064H));
        throw new EOFException("\\n not found: limit=" + Math.min(jVar.f6064H, j8) + " content=" + jVar2.d(jVar2.f6064H).d() + (char) 8230);
    }

    @Override // Q6.D
    public final long read(j jVar, long j8) {
        q0.h(jVar, "sink");
        if (j8 >= 0) {
            if (!this.f6096I) {
                j jVar2 = this.f6095H;
                if (jVar2.f6064H == 0 && this.f6094G.read(jVar2, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1L;
                }
                return jVar2.read(jVar, Math.min(j8, jVar2.f6064H));
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
    }
}
