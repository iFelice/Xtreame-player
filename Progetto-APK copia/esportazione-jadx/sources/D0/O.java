package D0;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class O implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1784G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Handler f1785H;

    public /* synthetic */ O(int i8, Handler handler) {
        this.f1784G = i8;
        this.f1785H = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i8 = this.f1784G;
        this.f1785H.post(runnable);
    }
}
