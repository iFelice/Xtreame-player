package androidx.work;

import D4.b;
import android.content.Context;
import p027d2.f;
import p027d2.l;
import p027d2.m;
import p086l.RunnableC3036k;
import p112o2.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class Worker extends m {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public j f9768K;

    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract l doWork();

    public f getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`");
    }

    @Override // p027d2.m
    public b getForegroundInfoAsync() {
        j jVar = new j();
        getBackgroundExecutor().execute(new RunnableC3036k(7, this, jVar));
        return jVar;
    }

    @Override // p027d2.m
    public final b startWork() {
        this.f9768K = new j();
        getBackgroundExecutor().execute(new p000a.f(this, 16));
        return this.f9768K;
    }
}
