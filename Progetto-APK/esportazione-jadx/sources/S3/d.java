package S3;

import Q6.C0330c;
import Q6.C0333f;
import android.os.Process;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class d extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6429G = 2;

    public d() {
        super("Okio Watchdog");
        setDaemon(true);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        switch (this.f6429G) {
            case 0:
                Process.setThreadPriority(19);
                synchronized (this) {
                    while (true) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
                break;
            case 1:
            default:
                super.run();
                return;
            case 2:
                break;
        }
        while (true) {
            try {
                C0333f.Companion.getClass();
                ReentrantLock reentrantLock = C0333f.lock;
                reentrantLock.lock();
                try {
                    C0333f c0333fA = C0330c.a();
                    if (c0333fA == C0333f.head) {
                        C0333f.head = null;
                        reentrantLock.unlock();
                        return;
                    } else {
                        reentrantLock.unlock();
                        if (c0333fA != null) {
                            c0333fA.timedOut();
                        }
                    }
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } catch (InterruptedException unused2) {
                continue;
            }
        }
    }

    public d(Runnable runnable, String str) {
        super(runnable, str);
    }

    public d(ThreadGroup threadGroup) {
        super(threadGroup, "GmsDynamite");
    }
}
