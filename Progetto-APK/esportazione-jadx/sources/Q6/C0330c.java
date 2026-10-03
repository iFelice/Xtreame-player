package Q6;

import java.util.concurrent.TimeUnit;
import z4.q0;

/* JADX INFO: renamed from: Q6.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0330c {
    public static C0333f a() throws InterruptedException {
        C0333f c0333f = C0333f.head;
        q0.e(c0333f);
        C0333f c0333f2 = c0333f.next;
        if (c0333f2 == null) {
            long jNanoTime = System.nanoTime();
            C0333f.condition.await(C0333f.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
            C0333f c0333f3 = C0333f.head;
            q0.e(c0333f3);
            if (c0333f3.next != null || System.nanoTime() - jNanoTime < C0333f.IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return C0333f.head;
        }
        long jAccess$remainingNanos = C0333f.access$remainingNanos(c0333f2, System.nanoTime());
        if (jAccess$remainingNanos > 0) {
            C0333f.condition.await(jAccess$remainingNanos, TimeUnit.NANOSECONDS);
            return null;
        }
        C0333f c0333f4 = C0333f.head;
        q0.e(c0333f4);
        c0333f4.next = c0333f2.next;
        c0333f2.next = null;
        return c0333f2;
    }
}
