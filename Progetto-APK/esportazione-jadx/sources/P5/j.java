package P5;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static j f5961e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f5962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HandlerThread f5963b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5964c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f5965d = new Object();

    public final void a() {
        synchronized (this.f5965d) {
            try {
                if (this.f5962a == null) {
                    if (this.f5964c <= 0) {
                        throw new IllegalStateException("CameraThread is not open");
                    }
                    HandlerThread handlerThread = new HandlerThread("CameraThread");
                    this.f5963b = handlerThread;
                    handlerThread.start();
                    this.f5962a = new Handler(this.f5963b.getLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Runnable runnable) {
        synchronized (this.f5965d) {
            a();
            this.f5962a.post(runnable);
        }
    }

    public final void c() {
        synchronized (this.f5965d) {
            this.f5963b.quit();
            this.f5963b = null;
            this.f5962a = null;
        }
    }
}
