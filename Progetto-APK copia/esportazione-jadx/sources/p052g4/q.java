package p052g4;

import X3.d;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class q implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final d f25368G = new d(Looper.getMainLooper(), 3);

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f25368G.post(runnable);
    }
}
