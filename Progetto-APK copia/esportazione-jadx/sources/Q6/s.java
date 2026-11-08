package Q6;

import A0.O;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class s implements D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final l f6078G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Inflater f6079H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f6080I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f6081J;

    public s(x xVar, Inflater inflater) {
        this.f6078G = xVar;
        this.f6079H = inflater;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f6081J) {
            return;
        }
        this.f6079H.end();
        this.f6081J = true;
        this.f6078G.close();
    }

    public final long k(j jVar, long j8) throws IOException {
        Inflater inflater = this.f6079H;
        q0.h(jVar, "sink");
        if (j8 < 0) {
            throw new IllegalArgumentException(O.z("byteCount < 0: ", j8).toString());
        }
        if (!(!this.f6081J)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j8 == 0) {
            return 0L;
        }
        try {
            y yVarK0 = jVar.k0(1);
            int iMin = (int) Math.min(j8, 8192 - yVarK0.f6099c);
            boolean zNeedsInput = inflater.needsInput();
            l lVar = this.f6078G;
            if (zNeedsInput && !lVar.q()) {
                y yVar = lVar.a().f6063G;
                q0.e(yVar);
                int i8 = yVar.f6099c;
                int i9 = yVar.f6098b;
                int i10 = i8 - i9;
                this.f6080I = i10;
                inflater.setInput(yVar.f6097a, i9, i10);
            }
            int iInflate = inflater.inflate(yVarK0.f6097a, yVarK0.f6099c, iMin);
            int i11 = this.f6080I;
            if (i11 != 0) {
                int remaining = i11 - inflater.getRemaining();
                this.f6080I -= remaining;
                lVar.b(remaining);
            }
            if (iInflate > 0) {
                yVarK0.f6099c += iInflate;
                long j9 = iInflate;
                jVar.f6064H += j9;
                return j9;
            }
            if (yVarK0.f6098b == yVarK0.f6099c) {
                jVar.f6063G = yVarK0.a();
                z.a(yVarK0);
            }
            return 0L;
        } catch (DataFormatException e8) {
            throw new IOException(e8);
        }
    }

    @Override // Q6.D
    public final long read(j jVar, long j8) throws IOException {
        q0.h(jVar, "sink");
        do {
            long jK = k(jVar, j8);
            if (jK > 0) {
                return jK;
            }
            Inflater inflater = this.f6079H;
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
        } while (!this.f6078G.q());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // Q6.D
    public final G timeout() {
        return this.f6078G.timeout();
    }
}
