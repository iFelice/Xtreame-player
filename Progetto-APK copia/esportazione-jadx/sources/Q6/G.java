package Q6;

import A0.O;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class G {
    public static final F Companion = new F();
    public static final G NONE = new E();
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public final void awaitSignal(Condition condition) throws InterruptedIOException {
        q0.h(condition, "condition");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                condition.await();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                condition.await(jTimeoutNanos, TimeUnit.NANOSECONDS);
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public G clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public G clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public final G deadline(long j8, TimeUnit timeUnit) {
        q0.h(timeUnit, "unit");
        if (j8 <= 0) {
            throw new IllegalArgumentException(O.z("duration <= 0: ", j8).toString());
        }
        return deadlineNanoTime(timeUnit.toNanos(j8) + System.nanoTime());
    }

    public G deadlineNanoTime(long j8) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j8;
        return this;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public final <T> T intersectWith(G g8, C6.a aVar) {
        q0.h(g8, "other");
        q0.h(aVar, "block");
        long jTimeoutNanos = timeoutNanos();
        F f8 = Companion;
        long jTimeoutNanos2 = g8.timeoutNanos();
        long jTimeoutNanos3 = timeoutNanos();
        f8.getClass();
        if (jTimeoutNanos2 == 0 || (jTimeoutNanos3 != 0 && jTimeoutNanos2 >= jTimeoutNanos3)) {
            jTimeoutNanos2 = jTimeoutNanos3;
        }
        timeout(jTimeoutNanos2, TimeUnit.NANOSECONDS);
        if (!hasDeadline()) {
            if (g8.hasDeadline()) {
                deadlineNanoTime(g8.deadlineNanoTime());
            }
            try {
                return (T) aVar.invoke();
            } finally {
                timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (g8.hasDeadline()) {
                    clearDeadline();
                }
            }
        }
        long jDeadlineNanoTime = deadlineNanoTime();
        if (g8.hasDeadline()) {
            deadlineNanoTime(Math.min(deadlineNanoTime(), g8.deadlineNanoTime()));
        }
        try {
            return (T) aVar.invoke();
        } finally {
            timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            if (g8.hasDeadline()) {
                deadlineNanoTime(jDeadlineNanoTime);
            }
        }
    }

    public void throwIfReached() throws InterruptedIOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public G timeout(long j8, TimeUnit timeUnit) {
        q0.h(timeUnit, "unit");
        if (j8 < 0) {
            throw new IllegalArgumentException(O.z("timeout < 0: ", j8).toString());
        }
        this.timeoutNanos = timeUnit.toNanos(j8);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedIOException {
        q0.h(obj, "monitor");
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j8 = jTimeoutNanos / 1000000;
                Long.signum(j8);
                obj.wait(j8, (int) (jTimeoutNanos - (1000000 * j8)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public long deadlineNanoTime() {
        if (this.hasDeadline) {
            return this.deadlineNanoTime;
        }
        throw new IllegalStateException("No deadline".toString());
    }
}
