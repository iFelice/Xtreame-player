package Q6;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends G {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public G f6072a;

    public q(G g8) {
        q0.h(g8, "delegate");
        this.f6072a = g8;
    }

    @Override // Q6.G
    public final G clearDeadline() {
        return this.f6072a.clearDeadline();
    }

    @Override // Q6.G
    public final G clearTimeout() {
        return this.f6072a.clearTimeout();
    }

    @Override // Q6.G
    public final long deadlineNanoTime() {
        return this.f6072a.deadlineNanoTime();
    }

    @Override // Q6.G
    public final boolean hasDeadline() {
        return this.f6072a.hasDeadline();
    }

    @Override // Q6.G
    public final void throwIfReached() throws InterruptedIOException {
        this.f6072a.throwIfReached();
    }

    @Override // Q6.G
    public final G timeout(long j8, TimeUnit timeUnit) {
        q0.h(timeUnit, "unit");
        return this.f6072a.timeout(j8, timeUnit);
    }

    @Override // Q6.G
    public final long timeoutNanos() {
        return this.f6072a.timeoutNanos();
    }

    @Override // Q6.G
    public final G deadlineNanoTime(long j8) {
        return this.f6072a.deadlineNanoTime(j8);
    }
}
