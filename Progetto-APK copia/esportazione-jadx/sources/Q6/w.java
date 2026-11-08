package Q6;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.nio.ByteBuffer;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class w implements k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final B f6091G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f6092H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f6093I;

    public w(B b8) {
        q0.h(b8, "sink");
        this.f6091G = b8;
        this.f6092H = new j();
    }

    @Override // Q6.k
    public final k B(String str) {
        q0.h(str, "string");
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.w0(str);
        t();
        return this;
    }

    @Override // Q6.k
    public final k F(long j8) {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.q0(j8);
        t();
        return this;
    }

    @Override // Q6.k
    public final long H(D d6) throws IOException {
        long j8 = 0;
        while (true) {
            long j9 = ((C0332e) d6).read(this.f6092H, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j9 == -1) {
                return j8;
            }
            j8 += j9;
            t();
        }
    }

    @Override // Q6.k
    public final k M(byte[] bArr) {
        q0.h(bArr, "source");
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.n0(bArr);
        t();
        return this;
    }

    @Override // Q6.k
    public final k Q(int i8, byte[] bArr, int i9) {
        q0.h(bArr, "source");
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.l0(i8, bArr, i9);
        t();
        return this;
    }

    @Override // Q6.k
    public final k T(m mVar) {
        q0.h(mVar, "byteString");
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.m0(mVar);
        t();
        return this;
    }

    @Override // Q6.k
    public final k V(long j8) {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.p0(j8);
        t();
        return this;
    }

    @Override // Q6.k
    public final j a() {
        return this.f6092H;
    }

    @Override // Q6.B, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        B b8 = this.f6091G;
        if (this.f6093I) {
            return;
        }
        j jVar = this.f6092H;
        long j8 = jVar.f6064H;
        if (j8 > 0) {
            b8.write(jVar, j8);
        }
        th = null;
        try {
            b8.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.f6093I = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // Q6.k, Q6.B, java.io.Flushable
    public final void flush() {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        j jVar = this.f6092H;
        long j8 = jVar.f6064H;
        B b8 = this.f6091G;
        if (j8 > 0) {
            b8.write(jVar, j8);
        }
        b8.flush();
    }

    @Override // Q6.k
    public final k h() {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        j jVar = this.f6092H;
        long j8 = jVar.f6064H;
        if (j8 > 0) {
            this.f6091G.write(jVar, j8);
        }
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f6093I;
    }

    @Override // Q6.k
    public final k j(int i8) {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.t0(i8);
        t();
        return this;
    }

    @Override // Q6.k
    public final k n(int i8) {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.r0(i8);
        t();
        return this;
    }

    @Override // Q6.k
    public final k r(int i8) {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        this.f6092H.o0(i8);
        t();
        return this;
    }

    @Override // Q6.k
    public final k t() {
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        j jVar = this.f6092H;
        long jN = jVar.N();
        if (jN > 0) {
            this.f6091G.write(jVar, jN);
        }
        return this;
    }

    @Override // Q6.B
    public final G timeout() {
        return this.f6091G.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f6091G + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        q0.h(byteBuffer, "source");
        if (!(!this.f6093I)) {
            throw new IllegalStateException("closed".toString());
        }
        int iWrite = this.f6092H.write(byteBuffer);
        t();
        return iWrite;
    }

    @Override // Q6.B
    public final void write(j jVar, long j8) {
        q0.h(jVar, "source");
        if (!this.f6093I) {
            this.f6092H.write(jVar, j8);
            t();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }
}
