package J;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4049G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Handler f4050H;

    public e(int i8, Handler handler) {
        this.f4049G = i8;
        if (i8 == 1) {
            this.f4050H = handler;
        } else if (i8 != 3) {
            this.f4050H = handler;
        } else {
            this.f4050H = handler;
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i8 = this.f4049G;
        Handler handler = this.f4050H;
        switch (i8) {
            case 0:
                runnable.getClass();
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            case 1:
                runnable.getClass();
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
            case 2:
                handler.post(runnable);
                return;
            default:
                handler.post(runnable);
                return;
        }
    }
}
