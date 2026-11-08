package p093m;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26646G;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f26646G) {
            case 1:
                b.g0().f26649c.f26654d.execute(runnable);
                break;
            case 2:
            case 3:
                break;
            case 4:
                runnable.run();
                break;
            case 5:
                runnable.run();
                break;
            case 6:
            case 7:
            case 9:
            case 10:
            default:
                runnable.run();
                break;
            case 8:
                runnable.run();
                break;
            case 11:
                runnable.run();
                break;
            case 12:
                runnable.run();
                break;
            case 13:
                runnable.run();
                break;
        }
    }
}
