package Q6;

import java.io.IOException;
import java.util.zip.Deflater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements B {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final k f6069G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Deflater f6070H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f6071I;

    public n(j jVar, Deflater deflater) {
        this.f6069G = p113o3.r.b(jVar);
        this.f6070H = deflater;
    }

    @Override // Q6.B, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        Deflater deflater = this.f6070H;
        if (this.f6071I) {
            return;
        }
        deflater.finish();
        k(false);
        th = null;
        try {
            deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.f6069G.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f6071I = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // Q6.B, java.io.Flushable
    public final void flush() throws IOException {
        k(true);
        this.f6069G.flush();
    }

    public final void k(boolean z7) throws IOException {
        y yVarK0;
        int iDeflate;
        k kVar = this.f6069G;
        j jVarA = kVar.a();
        while (true) {
            yVarK0 = jVarA.k0(1);
            Deflater deflater = this.f6070H;
            byte[] bArr = yVarK0.f6097a;
            if (z7) {
                try {
                    int i8 = yVarK0.f6099c;
                    iDeflate = deflater.deflate(bArr, i8, 8192 - i8, 2);
                } catch (NullPointerException e8) {
                    throw new IOException("Deflater already closed", e8);
                }
            } else {
                int i9 = yVarK0.f6099c;
                iDeflate = deflater.deflate(bArr, i9, 8192 - i9);
            }
            if (iDeflate > 0) {
                yVarK0.f6099c += iDeflate;
                jVarA.f6064H += (long) iDeflate;
                kVar.t();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (yVarK0.f6098b == yVarK0.f6099c) {
            jVarA.f6063G = yVarK0.a();
            z.a(yVarK0);
        }
    }

    @Override // Q6.B
    public final G timeout() {
        return this.f6069G.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f6069G + ')';
    }

    @Override // Q6.B
    public final void write(j jVar, long j8) throws IOException {
        q0.h(jVar, "source");
        AbstractC0329b.b(jVar.f6064H, 0L, j8);
        while (j8 > 0) {
            y yVar = jVar.f6063G;
            q0.e(yVar);
            int iMin = (int) Math.min(j8, yVar.f6099c - yVar.f6098b);
            this.f6070H.setInput(yVar.f6097a, yVar.f6098b, iMin);
            k(false);
            long j9 = iMin;
            jVar.f6064H -= j9;
            int i8 = yVar.f6098b + iMin;
            yVar.f6098b = i8;
            if (i8 == yVar.f6099c) {
                jVar.f6063G = yVar.a();
                z.a(yVar);
            }
            j8 -= j9;
        }
    }
}
