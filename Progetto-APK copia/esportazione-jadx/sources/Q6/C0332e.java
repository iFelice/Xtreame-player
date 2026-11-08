package Q6;

import A0.O;
import java.io.IOException;
import java.io.InputStream;
import z4.q0;

/* JADX INFO: renamed from: Q6.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0332e implements D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6051G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f6052H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f6053I;

    public C0332e(InputStream inputStream, G g8) {
        q0.h(g8, "timeout");
        this.f6052H = inputStream;
        this.f6053I = g8;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i8 = this.f6051G;
        Object obj = this.f6052H;
        switch (i8) {
            case 0:
                C0333f c0333f = (C0333f) obj;
                D d6 = (D) this.f6053I;
                c0333f.enter();
                try {
                    try {
                        d6.close();
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
                ((InputStream) obj).close();
                return;
        }
    }

    @Override // Q6.D
    public final long read(j jVar, long j8) throws IOException {
        int i8 = this.f6051G;
        Object obj = this.f6052H;
        Object obj2 = this.f6053I;
        switch (i8) {
            case 0:
                q0.h(jVar, "sink");
                C0333f c0333f = (C0333f) obj;
                D d6 = (D) obj2;
                c0333f.enter();
                try {
                    try {
                        long j9 = d6.read(jVar, j8);
                        if (c0333f.exit()) {
                            throw c0333f.access$newTimeoutException(null);
                        }
                        return j9;
                    } catch (IOException e8) {
                        if (c0333f.exit()) {
                            throw c0333f.access$newTimeoutException(e8);
                        }
                        throw e8;
                    }
                } catch (Throwable th) {
                    c0333f.exit();
                    throw th;
                }
            default:
                q0.h(jVar, "sink");
                if (j8 == 0) {
                    return 0L;
                }
                if (j8 < 0) {
                    throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
                }
                try {
                    ((G) obj2).throwIfReached();
                    y yVarK0 = jVar.k0(1);
                    int i9 = ((InputStream) obj).read(yVarK0.f6097a, yVarK0.f6099c, (int) Math.min(j8, 8192 - yVarK0.f6099c));
                    if (i9 == -1) {
                        if (yVarK0.f6098b == yVarK0.f6099c) {
                            jVar.f6063G = yVarK0.a();
                            z.a(yVarK0);
                        }
                        return -1L;
                    }
                    yVarK0.f6099c += i9;
                    long j10 = i9;
                    jVar.f6064H += j10;
                    return j10;
                } catch (AssertionError e9) {
                    if (p113o3.r.e(e9)) {
                        throw new IOException(e9);
                    }
                    throw e9;
                }
        }
    }

    @Override // Q6.D
    public final G timeout() {
        switch (this.f6051G) {
            case 0:
                return (C0333f) this.f6052H;
            default:
                return (G) this.f6053I;
        }
    }

    public final String toString() {
        switch (this.f6051G) {
            case 0:
                return "AsyncTimeout.source(" + ((D) this.f6053I) + ')';
            default:
                return "source(" + ((InputStream) this.f6052H) + ')';
        }
    }

    public C0332e(C0333f c0333f, D d6) {
        this.f6052H = c0333f;
        this.f6053I = d6;
    }
}
