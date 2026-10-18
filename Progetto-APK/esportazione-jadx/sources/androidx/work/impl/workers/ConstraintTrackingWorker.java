package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.WorkerParameters;
import java.util.ArrayList;
import java.util.List;
import p027d2.m;
import p027d2.n;
import p066i2.b;
import p112o2.j;
import p127q2.a;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class ConstraintTrackingWorker extends m implements b {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final WorkerParameters f9802K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Object f9803L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public volatile boolean f9804M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final j f9805N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public m f9806O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        q0.h(context, "appContext");
        q0.h(workerParameters, "workerParameters");
        this.f9802K = workerParameters;
        this.f9803L = new Object();
        this.f9805N = new j();
    }

    @Override // p066i2.b
    public final void e(ArrayList arrayList) {
        q0.h(arrayList, "workSpecs");
        n.d().a(a.f29573a, "Constraints changed for " + arrayList);
        synchronized (this.f9803L) {
            this.f9804M = true;
        }
    }

    @Override // p066i2.b
    public final void f(List list) {
    }

    @Override // p027d2.m
    public final void onStopped() {
        super.onStopped();
        m mVar = this.f9806O;
        if (mVar == null || mVar.isStopped()) {
            return;
        }
        mVar.stop();
    }

    @Override // p027d2.m
    public final D4.b startWork() {
        getBackgroundExecutor().execute(new p000a.b(this, 27));
        j jVar = this.f9805N;
        q0.g(jVar, "future");
        return jVar;
    }
}
