package Z5;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class H implements Runnable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final Logger f8429H = Logger.getLogger(H.class.getName());

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Runnable f8430G;

    public H(Runnable runnable) {
        this.f8430G = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = this.f8430G;
        try {
            runnable.run();
        } catch (Throwable th) {
            f8429H.log(Level.SEVERE, "Exception while executing runnable " + runnable, th);
            Object obj = p190y4.x.f31451a;
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            if (!(th instanceof Error)) {
                throw new AssertionError(th);
            }
            throw ((Error) th);
        }
    }

    public final String toString() {
        return "LogExceptionRunnable(" + this.f8430G + ")";
    }
}
