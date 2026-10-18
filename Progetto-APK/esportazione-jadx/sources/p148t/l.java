package p148t;

import D4.b;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class l implements b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final WeakReference f30164G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final k f30165H = new k(this);

    public l(i iVar) {
        this.f30164G = new WeakReference(iVar);
    }

    @Override // D4.b
    public final void a(Runnable runnable, Executor executor) {
        this.f30165H.a(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z7) {
        i iVar = (i) this.f30164G.get();
        boolean zCancel = this.f30165H.cancel(z7);
        if (zCancel && iVar != null) {
            iVar.f30159a = null;
            iVar.f30160b = null;
            iVar.f30161c.i(null);
        }
        return zCancel;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f30165H.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f30165H.f30156G instanceof b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f30165H.isDone();
    }

    public final String toString() {
        return this.f30165H.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        return this.f30165H.get(j8, timeUnit);
    }
}
