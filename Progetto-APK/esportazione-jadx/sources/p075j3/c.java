package p075j3;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class c extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final WeakReference f25704G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f25705H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final CountDownLatch f25706I = new CountDownLatch(1);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f25707J = false;

    public c(b bVar, long j8) {
        this.f25704G = new WeakReference(bVar);
        this.f25705H = j8;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        b bVar;
        WeakReference weakReference = this.f25704G;
        try {
            if (this.f25706I.await(this.f25705H, TimeUnit.MILLISECONDS) || (bVar = (b) weakReference.get()) == null) {
                return;
            }
            bVar.c();
            this.f25707J = true;
        } catch (InterruptedException unused) {
            b bVar2 = (b) weakReference.get();
            if (bVar2 != null) {
                bVar2.c();
                this.f25707J = true;
            }
        }
    }
}
