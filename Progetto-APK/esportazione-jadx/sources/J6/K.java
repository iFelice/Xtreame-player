package J6;

import java.util.concurrent.CancellationException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class K extends CancellationException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final transient J f4208G;

    public K(String str, Throwable th, J j8) {
        super(str);
        this.f4208G = j8;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof K) {
                K k8 = (K) obj;
                if (!q0.c(k8.getMessage(), getMessage()) || !q0.c(k8.f4208G, this.f4208G) || !q0.c(k8.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        q0.e(message);
        int iHashCode = (this.f4208G.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f4208G;
    }
}
