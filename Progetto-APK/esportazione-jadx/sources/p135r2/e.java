package p135r2;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Handler f29796G;

    public e(Handler handler) {
        this.f29796G = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f29796G.post(runnable);
    }
}
