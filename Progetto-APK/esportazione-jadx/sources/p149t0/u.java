package p149t0;

import android.os.ConditionVariable;

/* JADX INFO: loaded from: classes.dex */
public final class u extends Thread {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ ConditionVariable f30240G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ v f30241H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(v vVar, ConditionVariable conditionVariable) {
        super("ExoPlayer:SimpleCacheInit");
        this.f30241H = vVar;
        this.f30240G = conditionVariable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        synchronized (this.f30241H) {
            this.f30240G.open();
            v.a(this.f30241H);
            this.f30241H.f30244b.getClass();
        }
    }
}
