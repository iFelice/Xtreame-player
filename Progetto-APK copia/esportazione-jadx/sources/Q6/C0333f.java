package Q6;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import z4.q0;

/* JADX INFO: renamed from: Q6.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C0333f extends G {
    public static final C0330c Companion = new C0330c();
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static final Condition condition;
    private static C0333f head;
    private static final ReentrantLock lock;
    private boolean inQueue;
    private C0333f next;
    private long timeoutAt;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        q0.g(conditionNewCondition, "newCondition(...)");
        condition = conditionNewCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public static final long access$remainingNanos(C0333f c0333f, long j8) {
        return c0333f.timeoutAt - j8;
    }

    public final IOException access$newTimeoutException(IOException iOException) {
        return newTimeoutException(iOException);
    }

    public final void enter() {
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            C0330c c0330c = Companion;
            c0330c.getClass();
            c0330c.getClass();
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (!(!this.inQueue)) {
                    throw new IllegalStateException("Unbalanced enter/exit".toString());
                }
                this.inQueue = true;
                if (head == null) {
                    head = new C0333f();
                    new S3.d().start();
                }
                long jNanoTime = System.nanoTime();
                if (jTimeoutNanos != 0 && zHasDeadline) {
                    this.timeoutAt = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime) + jNanoTime;
                } else if (jTimeoutNanos != 0) {
                    this.timeoutAt = jTimeoutNanos + jNanoTime;
                } else {
                    if (!zHasDeadline) {
                        throw new AssertionError();
                    }
                    this.timeoutAt = deadlineNanoTime();
                }
                long jAccess$remainingNanos = access$remainingNanos(this, jNanoTime);
                C0333f c0333f = head;
                q0.e(c0333f);
                while (c0333f.next != null) {
                    C0333f c0333f2 = c0333f.next;
                    q0.e(c0333f2);
                    if (jAccess$remainingNanos < access$remainingNanos(c0333f2, jNanoTime)) {
                        break;
                    }
                    c0333f = c0333f.next;
                    q0.e(c0333f);
                }
                this.next = c0333f.next;
                c0333f.next = this;
                if (c0333f == head) {
                    Companion.getClass();
                    condition.signal();
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public final boolean exit() {
        C0330c c0330c = Companion;
        c0330c.getClass();
        c0330c.getClass();
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            if (!this.inQueue) {
                return false;
            }
            this.inQueue = false;
            for (C0333f c0333f = head; c0333f != null; c0333f = c0333f.next) {
                if (c0333f.next == this) {
                    c0333f.next = this.next;
                    this.next = null;
                    return false;
                }
            }
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final B sink(B b8) {
        q0.h(b8, "sink");
        return new C0331d(this, b8);
    }

    public final D source(D d6) {
        q0.h(d6, "source");
        return new C0332e(this, d6);
    }

    public final <T> T withTimeout(C6.a aVar) throws IOException {
        q0.h(aVar, "block");
        enter();
        try {
            try {
                T t7 = (T) aVar.invoke();
                if (exit()) {
                    throw access$newTimeoutException(null);
                }
                return t7;
            } catch (IOException e8) {
                if (exit()) {
                    throw access$newTimeoutException(e8);
                }
                throw e8;
            }
        } catch (Throwable th) {
            exit();
            throw th;
        }
    }

    public void timedOut() {
    }
}
