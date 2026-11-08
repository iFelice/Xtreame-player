package Q6;

import java.io.EOFException;
import z4.q0;

/* JADX INFO: renamed from: Q6.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0334g implements B {
    @Override // Q6.B
    public final G timeout() {
        return G.NONE;
    }

    @Override // Q6.B
    public final void write(j jVar, long j8) throws EOFException {
        q0.h(jVar, "source");
        jVar.b(j8);
    }

    @Override // Q6.B, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // Q6.B, java.io.Flushable
    public final void flush() {
    }
}
