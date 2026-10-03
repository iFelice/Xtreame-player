package Q6;

import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o implements B {
    private final B delegate;

    public o(B b8) {
        q0.h(b8, "delegate");
        this.delegate = b8;
    }

    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final B m1deprecated_delegate() {
        return this.delegate;
    }

    @Override // Q6.B, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    public final B delegate() {
        return this.delegate;
    }

    @Override // Q6.B, java.io.Flushable
    public void flush() {
        this.delegate.flush();
    }

    @Override // Q6.B
    public G timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // Q6.B
    public void write(j jVar, long j8) {
        q0.h(jVar, "source");
        this.delegate.write(jVar, j8);
    }
}
