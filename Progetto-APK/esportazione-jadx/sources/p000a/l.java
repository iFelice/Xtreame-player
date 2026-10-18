package p000a;

import Y.AbstractActivityC0409v;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class l implements Executor, ViewTreeObserver.OnDrawListener, Runnable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Runnable f8574H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ m f8576J;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f8573G = SystemClock.uptimeMillis() + 10000;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f8575I = false;

    public l(AbstractActivityC0409v abstractActivityC0409v) {
        this.f8576J = abstractActivityC0409v;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f8574H = runnable;
        View decorView = this.f8576J.getWindow().getDecorView();
        if (!this.f8575I) {
            decorView.postOnAnimation(new b(this, 1));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z7;
        Runnable runnable = this.f8574H;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f8573G) {
                this.f8575I = false;
                this.f8576J.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f8574H = null;
        o oVar = this.f8576J.f8584O;
        synchronized (oVar.f8597b) {
            z7 = oVar.f8598c;
        }
        if (z7) {
            this.f8575I = false;
            this.f8576J.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8576J.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
