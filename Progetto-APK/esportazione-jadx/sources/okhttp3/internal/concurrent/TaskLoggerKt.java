package okhttp3.internal.concurrent;

import C6.a;
import java.util.Arrays;
import java.util.logging.Level;
import okhttp3.internal.http2.Http2Connection;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class TaskLoggerKt {
    public static final String formatDuration(long j8) {
        String strI;
        if (j8 <= -999500000) {
            strI = r.i(new StringBuilder(), (j8 - ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS), " s ");
        } else if (j8 <= -999500) {
            strI = r.i(new StringBuilder(), (j8 - ((long) 500000)) / ((long) 1000000), " ms");
        } else if (j8 <= 0) {
            strI = r.i(new StringBuilder(), (j8 - ((long) 500)) / ((long) 1000), " µs");
        } else if (j8 < 999500) {
            strI = r.i(new StringBuilder(), (j8 + ((long) 500)) / ((long) 1000), " µs");
        } else {
            strI = j8 < 999500000 ? r.i(new StringBuilder(), (j8 + ((long) 500000)) / ((long) 1000000), " ms") : r.i(new StringBuilder(), (j8 + ((long) 500000000)) / ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS), " s ");
        }
        return String.format("%6s", Arrays.copyOf(new Object[]{strI}, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void log(Task task, TaskQueue taskQueue, String str) {
        TaskRunner.Companion.getLogger().fine(taskQueue.getName$okhttp() + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + task.getName());
    }

    public static final <T> T logElapsed(Task task, TaskQueue taskQueue, a aVar) {
        long jNanoTime;
        q0.h(task, "task");
        q0.h(taskQueue, "queue");
        q0.h(aVar, "block");
        boolean zIsLoggable = TaskRunner.Companion.getLogger().isLoggable(Level.FINE);
        if (zIsLoggable) {
            jNanoTime = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime();
            log(task, taskQueue, "starting");
        } else {
            jNanoTime = -1;
        }
        try {
            T t7 = (T) aVar.invoke();
            if (zIsLoggable) {
                long jNanoTime2 = taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime;
                StringBuilder sb = new StringBuilder("finished run in ");
            }
            return t7;
        } finally {
            if (zIsLoggable) {
                log(task, taskQueue, "failed a run in " + formatDuration(taskQueue.getTaskRunner$okhttp().getBackend().nanoTime() - jNanoTime));
            }
        }
    }

    public static final void taskLog(Task task, TaskQueue taskQueue, a aVar) {
        q0.h(task, "task");
        q0.h(taskQueue, "queue");
        q0.h(aVar, "messageBlock");
        if (TaskRunner.Companion.getLogger().isLoggable(Level.FINE)) {
            log(task, taskQueue, (String) aVar.invoke());
        }
    }
}
