package p050g2;

import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.concurrent.Executor;
import p027d2.n;
import p096m2.u;
import p104n2.o;
import p104n2.q;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25331G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f25332H;

    public /* synthetic */ h(j jVar, int i8) {
        this.f25331G = i8;
        this.f25332H = jVar;
    }

    private void a() {
        Executor executor;
        h hVar;
        synchronized (this.f25332H.f25340M) {
            j jVar = this.f25332H;
            jVar.f25341N = (Intent) jVar.f25340M.get(0);
        }
        Intent intent = this.f25332H.f25341N;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.f25332H.f25341N.getIntExtra("KEY_START_ID", 0);
            n nVarD = n.d();
            String str = j.f25333P;
            nVarD.a(str, "Processing command " + this.f25332H.f25341N + ", " + intExtra);
            PowerManager.WakeLock wakeLockA = q.a(this.f25332H.f25334G, action + " (" + intExtra + ")");
            int i8 = 1;
            try {
                n.d().a(str, "Acquiring operation wake lock (" + action + ") " + wakeLockA);
                wakeLockA.acquire();
                j jVar2 = this.f25332H;
                jVar2.f25339L.c(jVar2.f25341N, intExtra, jVar2);
                n.d().a(str, "Releasing operation wake lock (" + action + ") " + wakeLockA);
                wakeLockA.release();
                j jVar3 = this.f25332H;
                executor = (Executor) ((u) jVar3.f25335H).f27280J;
                hVar = new h(jVar3, i8);
            } catch (Throwable th) {
                try {
                    n nVarD2 = n.d();
                    String str2 = j.f25333P;
                    nVarD2.c(str2, "Unexpected error in onHandleIntent", th);
                    n.d().a(str2, "Releasing operation wake lock (" + action + ") " + wakeLockA);
                    wakeLockA.release();
                    j jVar4 = this.f25332H;
                    executor = (Executor) ((u) jVar4.f25335H).f27280J;
                    hVar = new h(jVar4, i8);
                } catch (Throwable th2) {
                    n.d().a(j.f25333P, "Releasing operation wake lock (" + action + ") " + wakeLockA);
                    wakeLockA.release();
                    j jVar5 = this.f25332H;
                    ((Executor) ((u) jVar5.f25335H).f27280J).execute(new h(jVar5, i8));
                    throw th2;
                }
            }
            executor.execute(hVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f25331G) {
            case 0:
                a();
                return;
            default:
                j jVar = this.f25332H;
                jVar.getClass();
                n nVarD = n.d();
                String str = j.f25333P;
                nVarD.a(str, "Checking if commands are complete.");
                j.c();
                synchronized (jVar.f25340M) {
                    try {
                        if (jVar.f25341N != null) {
                            n.d().a(str, "Removing command " + jVar.f25341N);
                            if (!((Intent) jVar.f25340M.remove(0)).equals(jVar.f25341N)) {
                                throw new IllegalStateException("Dequeue-d command is not the first.");
                            }
                            jVar.f25341N = null;
                        }
                        o oVar = (o) ((u) jVar.f25335H).f27278H;
                        if (!jVar.f25339L.a() && jVar.f25340M.isEmpty() && !oVar.a()) {
                            n.d().a(str, "No more commands & intents.");
                            i iVar = jVar.f25342O;
                            if (iVar != null) {
                                ((SystemAlarmService) iVar).a();
                            }
                        } else if (!jVar.f25340M.isEmpty()) {
                            jVar.e();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
