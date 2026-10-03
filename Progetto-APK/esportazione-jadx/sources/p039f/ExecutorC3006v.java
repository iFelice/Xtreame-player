package p039f;

import P2.o;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: f.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ExecutorC3006v implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25116G;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f25116G) {
            case 0:
                new Thread(runnable).start();
                break;
            case 1:
                runnable.run();
                break;
            case 2:
                o.f().post(runnable);
                break;
            case 3:
                runnable.run();
                break;
            default:
                runnable.run();
                break;
        }
    }
}
