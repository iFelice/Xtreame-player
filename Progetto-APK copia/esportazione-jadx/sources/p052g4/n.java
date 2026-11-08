package p052g4;

import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class n implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25362G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f25363H;

    public /* synthetic */ n(Object obj, int i8) {
        this.f25362G = i8;
        this.f25363H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f25362G) {
            case 0:
                synchronized (((o) this.f25363H).f25366I) {
                    try {
                        Object obj = ((o) this.f25363H).f25367J;
                        if (((c) obj) != null) {
                            ((c) obj).b();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                ((i) this.f25363H).c(new TimeoutException());
                return;
        }
    }
}
