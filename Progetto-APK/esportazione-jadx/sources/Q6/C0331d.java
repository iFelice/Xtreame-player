package Q6;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.OutputStream;
import z4.q0;

/* JADX INFO: renamed from: Q6.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0331d implements B {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6048G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f6049H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f6050I;

    public C0331d(OutputStream outputStream, G g8) {
        this.f6049H = outputStream;
        this.f6050I = g8;
    }

    @Override // Q6.B, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i8 = this.f6048G;
        Object obj = this.f6049H;
        switch (i8) {
            case 0:
                C0333f c0333f = (C0333f) obj;
                B b8 = (B) this.f6050I;
                c0333f.enter();
                try {
                    try {
                        b8.close();
                        if (c0333f.exit()) {
                            throw c0333f.access$newTimeoutException(null);
                        }
                        return;
                    } catch (IOException e8) {
                        if (!c0333f.exit()) {
                            throw e8;
                        }
                        throw c0333f.access$newTimeoutException(e8);
                    }
                } catch (Throwable th) {
                    c0333f.exit();
                    throw th;
                }
            default:
                ((OutputStream) obj).close();
                return;
        }
    }

    @Override // Q6.B, java.io.Flushable
    public final void flush() throws IOException {
        int i8 = this.f6048G;
        Object obj = this.f6049H;
        switch (i8) {
            case 0:
                C0333f c0333f = (C0333f) obj;
                B b8 = (B) this.f6050I;
                c0333f.enter();
                try {
                    try {
                        b8.flush();
                        if (c0333f.exit()) {
                            throw c0333f.access$newTimeoutException(null);
                        }
                        return;
                    } catch (IOException e8) {
                        if (!c0333f.exit()) {
                            throw e8;
                        }
                        throw c0333f.access$newTimeoutException(e8);
                    }
                } catch (Throwable th) {
                    c0333f.exit();
                    throw th;
                }
            default:
                ((OutputStream) obj).flush();
                return;
        }
    }

    @Override // Q6.B
    public final G timeout() {
        switch (this.f6048G) {
            case 0:
                return (C0333f) this.f6049H;
            default:
                return (G) this.f6050I;
        }
    }

    public final String toString() {
        switch (this.f6048G) {
            case 0:
                return "AsyncTimeout.sink(" + ((B) this.f6050I) + ')';
            default:
                return "sink(" + ((OutputStream) this.f6049H) + ')';
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0098 A[LOOP:1: B:12:0x0062->B:25:0x0098, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:48:0x009a A[SYNTHETIC] */
    @Override // Q6.B
    public final void write(j jVar, long j8) throws IOException {
        C0333f c0333f;
        int i8 = this.f6048G;
        Object obj = this.f6049H;
        Object obj2 = this.f6050I;
        switch (i8) {
            case 0:
                q0.h(jVar, "source");
                AbstractC0329b.b(jVar.f6064H, 0L, j8);
                while (j8 > 0) {
                    y yVar = jVar.f6063G;
                    q0.e(yVar);
                    long j9 = 0;
                    try {
                        try {
                            while (j9 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                                j9 += (long) (yVar.f6099c - yVar.f6098b);
                                if (j9 >= j8) {
                                    j9 = j8;
                                    c0333f = (C0333f) obj;
                                    B b8 = (B) obj2;
                                    c0333f.enter();
                                    b8.write(jVar, j9);
                                    if (!c0333f.exit()) {
                                        throw c0333f.access$newTimeoutException(null);
                                    }
                                    j8 -= j9;
                                } else {
                                    yVar = yVar.f6102f;
                                    q0.e(yVar);
                                }
                            }
                            b8.write(jVar, j9);
                            if (!c0333f.exit()) {
                                throw c0333f.access$newTimeoutException(null);
                            }
                            j8 -= j9;
                        } catch (IOException e8) {
                            if (!c0333f.exit()) {
                                throw e8;
                            }
                            throw c0333f.access$newTimeoutException(e8);
                        }
                    } catch (Throwable th) {
                        c0333f.exit();
                        throw th;
                    }
                    c0333f = (C0333f) obj;
                    B b9 = (B) obj2;
                    c0333f.enter();
                }
                return;
            default:
                q0.h(jVar, "source");
                AbstractC0329b.b(jVar.f6064H, 0L, j8);
                while (j8 > 0) {
                    ((G) obj2).throwIfReached();
                    y yVar2 = jVar.f6063G;
                    q0.e(yVar2);
                    int iMin = (int) Math.min(j8, yVar2.f6099c - yVar2.f6098b);
                    ((OutputStream) obj).write(yVar2.f6097a, yVar2.f6098b, iMin);
                    int i9 = yVar2.f6098b + iMin;
                    yVar2.f6098b = i9;
                    long j10 = iMin;
                    j8 -= j10;
                    jVar.f6064H -= j10;
                    if (i9 == yVar2.f6099c) {
                        jVar.f6063G = yVar2.a();
                        z.a(yVar2);
                    }
                }
                return;
        }
    }

    public C0331d(C0333f c0333f, B b8) {
        this.f6049H = c0333f;
        this.f6050I = b8;
    }
}
