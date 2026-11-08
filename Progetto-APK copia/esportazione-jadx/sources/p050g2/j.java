package p050g2;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import p000a.g;
import p027d2.n;
import p034e2.c;
import p096m2.u;
import p104n2.q;
import p104n2.y;
import p119p2.a;

/* JADX INFO: loaded from: classes.dex */
public final class j implements c {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final String f25333P = n.f("SystemAlarmDispatcher");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f25334G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f25335H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final y f25336I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p034e2.n f25337J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p034e2.y f25338K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final c f25339L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final ArrayList f25340M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Intent f25341N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public i f25342O;

    public j(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f25334G = applicationContext;
        this.f25339L = new c(applicationContext, new x0(6));
        p034e2.y yVarW = p034e2.y.w(context);
        this.f25338K = yVarW;
        this.f25336I = new y(yVarW.f24843b.f24613e);
        p034e2.n nVar = yVarW.f24847f;
        this.f25337J = nVar;
        this.f25335H = yVarW.f24845d;
        nVar.a(this);
        this.f25340M = new ArrayList();
        this.f25341N = null;
    }

    public static void c() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    public final void a(int i8, Intent intent) {
        n nVarD = n.d();
        String str = f25333P;
        nVarD.a(str, "Adding command " + intent + " (" + i8 + ")");
        c();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            n.d().g(str, "Unknown command. Ignoring");
            return;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && d()) {
            return;
        }
        intent.putExtra("KEY_START_ID", i8);
        synchronized (this.f25340M) {
            try {
                boolean z7 = !this.f25340M.isEmpty();
                this.f25340M.add(intent);
                if (!z7) {
                    e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p034e2.c
    public final void b(p096m2.j jVar, boolean z7) {
        Executor executor = (Executor) ((u) this.f25335H).f27280J;
        String str = c.f25306K;
        Intent intent = new Intent(this.f25334G, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z7);
        c.e(intent, jVar);
        executor.execute(new g(this, intent, 0, 5));
    }

    public final boolean d() {
        c();
        synchronized (this.f25340M) {
            try {
                Iterator it = this.f25340M.iterator();
                while (it.hasNext()) {
                    if ("ACTION_CONSTRAINTS_CHANGED".equals(((Intent) it.next()).getAction())) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e() {
        c();
        PowerManager.WakeLock wakeLockA = q.a(this.f25334G, "ProcessCommand");
        try {
            wakeLockA.acquire();
            ((u) this.f25338K.f24845d).m(new h(this, 0));
        } finally {
            wakeLockA.release();
        }
    }
}
