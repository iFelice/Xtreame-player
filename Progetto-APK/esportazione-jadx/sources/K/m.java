package K;

import android.os.Process;

/* JADX INFO: loaded from: classes.dex */
public final class m extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4301G;

    public m(Runnable runnable, String str, int i8) {
        super(runnable, str);
        this.f4301G = i8;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f4301G);
        super.run();
    }
}
