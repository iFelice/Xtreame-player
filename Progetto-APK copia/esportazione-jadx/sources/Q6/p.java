package Q6;

import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p implements D {
    private final D delegate;

    public p(D d6) {
        q0.h(d6, "delegate");
        this.delegate = d6;
    }

    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final D m2deprecated_delegate() {
        return this.delegate;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    public final D delegate() {
        return this.delegate;
    }

    @Override // Q6.D
    public long read(j jVar, long j8) {
        q0.h(jVar, "sink");
        return this.delegate.read(jVar, j8);
    }

    @Override // Q6.D
    public G timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
