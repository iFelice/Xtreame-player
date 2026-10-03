package p027d2;

import D4.b;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.work.WorkerParameters;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import p079k.RunnableC3015g;
import p104n2.t;
import p104n2.u;
import p104n2.v;
import p112o2.j;
import p119p2.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f24637G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final WorkerParameters f24638H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile boolean f24639I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f24640J;

    public m(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f24637G = context;
        this.f24638H = workerParameters;
    }

    public final Context getApplicationContext() {
        return this.f24637G;
    }

    public Executor getBackgroundExecutor() {
        return this.f24638H.f9774f;
    }

    public b getForegroundInfoAsync() {
        j jVar = new j();
        jVar.k(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return jVar;
    }

    public final UUID getId() {
        return this.f24638H.f9769a;
    }

    public final e getInputData() {
        return this.f24638H.f9770b;
    }

    public final Network getNetwork() {
        return (Network) this.f24638H.f9772d.f27280J;
    }

    public final int getRunAttemptCount() {
        return this.f24638H.f9773e;
    }

    public final Set<String> getTags() {
        return this.f24638H.f9771c;
    }

    public a getTaskExecutor() {
        return this.f24638H.f9775g;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return (List) this.f24638H.f9772d.f27278H;
    }

    public final List<Uri> getTriggeredContentUris() {
        return (List) this.f24638H.f9772d.f27279I;
    }

    public z getWorkerFactory() {
        return this.f24638H.f9776h;
    }

    public final boolean isStopped() {
        return this.f24639I;
    }

    public final boolean isUsed() {
        return this.f24640J;
    }

    public final b setForegroundAsync(f fVar) {
        g gVar = this.f24638H.f9778j;
        Context applicationContext = getApplicationContext();
        UUID id = getId();
        u uVar = (u) gVar;
        uVar.getClass();
        j jVar = new j();
        ((p096m2.u) uVar.f27475a).m(new t(uVar, jVar, id, fVar, applicationContext, 0));
        return jVar;
    }

    public b setProgressAsync(e eVar) {
        u uVar = this.f24638H.f9777i;
        getApplicationContext();
        UUID id = getId();
        v vVar = (v) uVar;
        vVar.getClass();
        j jVar = new j();
        ((p096m2.u) vVar.f27480b).m(new RunnableC3015g(vVar, id, eVar, jVar, 3));
        return jVar;
    }

    public final void setUsed() {
        this.f24640J = true;
    }

    public abstract b startWork();

    public final void stop() {
        this.f24639I = true;
        onStopped();
    }

    public void onStopped() {
    }
}
