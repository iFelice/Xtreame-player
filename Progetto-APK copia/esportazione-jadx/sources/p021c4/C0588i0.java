package p021c4;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: renamed from: c4.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0588i0 extends Thread {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final BlockingQueue f11214H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0591j0 f11216J;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f11215I = false;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f11213G = new Object();

    public C0588i0(C0591j0 c0591j0, String str, BlockingQueue blockingQueue) {
        this.f11216J = c0591j0;
        this.f11214H = blockingQueue;
        setName(str);
    }

    public final void a() {
        Object obj = this.f11213G;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    public final void b() {
        C0591j0 c0591j0 = this.f11216J;
        synchronized (c0591j0.f11228O) {
            try {
                if (!this.f11215I) {
                    c0591j0.f11229P.release();
                    c0591j0.f11228O.notifyAll();
                    if (this == c0591j0.f11222I) {
                        c0591j0.f11222I = null;
                    } else if (this == c0591j0.f11223J) {
                        c0591j0.f11223J = null;
                    } else {
                        T t7 = ((C0597l0) c0591j0.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11039L.a("Current scheduler thread is neither worker nor network");
                    }
                    this.f11215I = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z7 = false;
        while (!z7) {
            try {
                this.f11216J.f11229P.acquire();
                z7 = true;
            } catch (InterruptedException e8) {
                T t7 = ((C0597l0) this.f11216J.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11042O.b(e8, String.valueOf(getName()).concat(" was interrupted"));
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                BlockingQueue blockingQueue = this.f11214H;
                C0585h0 c0585h0 = (C0585h0) blockingQueue.poll();
                if (c0585h0 != null) {
                    Process.setThreadPriority(true != c0585h0.f11196H ? 10 : threadPriority);
                    c0585h0.run();
                } else {
                    Object obj = this.f11213G;
                    synchronized (obj) {
                        if (blockingQueue.peek() == null) {
                            this.f11216J.getClass();
                            try {
                                obj.wait(30000L);
                            } catch (InterruptedException e9) {
                                T t8 = ((C0597l0) this.f11216J.f10616G).f11258O;
                                C0597l0.k(t8);
                                t8.f11042O.b(e9, String.valueOf(getName()).concat(" was interrupted"));
                            }
                        }
                    }
                    synchronized (this.f11216J.f11228O) {
                        if (this.f11214H.peek() == null) {
                            b();
                            b();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            b();
            throw th;
        }
    }
}
