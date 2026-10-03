package p050g2;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import p027d2.n;
import p034e2.r;
import p066i2.b;
import p066i2.c;
import p096m2.f;
import p096m2.j;
import p096m2.u;
import p104n2.o;
import p104n2.q;
import p104n2.w;

/* JADX INFO: loaded from: classes.dex */
public final class g implements b, w {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final String f25318S = n.f("DelayMetCommandHandler");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f25319G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f25320H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final j f25321I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final j f25322J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final c f25323K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Object f25324L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f25325M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final o f25326N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Executor f25327O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public PowerManager.WakeLock f25328P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f25329Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final r f25330R;

    public g(Context context, int i8, j jVar, r rVar) {
        this.f25319G = context;
        this.f25320H = i8;
        this.f25322J = jVar;
        this.f25321I = rVar.f24828a;
        this.f25330R = rVar;
        p096m2.o oVar = jVar.f25338K.f24851j;
        u uVar = (u) jVar.f25335H;
        this.f25326N = (o) uVar.f27278H;
        this.f25327O = (Executor) uVar.f27280J;
        this.f25323K = new c(oVar, this);
        this.f25329Q = false;
        this.f25325M = 0;
        this.f25324L = new Object();
    }

    public static void a(g gVar) {
        j jVar = gVar.f25321I;
        String str = jVar.f27228a;
        int i8 = gVar.f25325M;
        String str2 = f25318S;
        if (i8 >= 2) {
            n.d().a(str2, "Already stopped work for " + str);
            return;
        }
        gVar.f25325M = 2;
        n.d().a(str2, "Stopping work for WorkSpec " + str);
        Context context = gVar.f25319G;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        c.e(intent, jVar);
        j jVar2 = gVar.f25322J;
        int i9 = gVar.f25320H;
        int i10 = 5;
        p000a.g gVar2 = new p000a.g(jVar2, intent, i9, i10);
        Executor executor = gVar.f25327O;
        executor.execute(gVar2);
        if (!jVar2.f25337J.f(jVar.f27228a)) {
            n.d().a(str2, "Processor does not have WorkSpec " + str + ". No need to reschedule");
            return;
        }
        n.d().a(str2, "WorkSpec " + str + " needs to be rescheduled");
        Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent2.setAction("ACTION_SCHEDULE_WORK");
        c.e(intent2, jVar);
        executor.execute(new p000a.g(jVar2, intent2, i9, i10));
    }

    public final void b() {
        synchronized (this.f25324L) {
            try {
                this.f25323K.d();
                this.f25322J.f25336I.a(this.f25321I);
                PowerManager.WakeLock wakeLock = this.f25328P;
                if (wakeLock != null && wakeLock.isHeld()) {
                    n.d().a(f25318S, "Releasing wakelock " + this.f25328P + "for WorkSpec " + this.f25321I);
                    this.f25328P.release();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        String str = this.f25321I.f27228a;
        this.f25328P = q.a(this.f25319G, p000a.r.h(p000a.r.l(str, " ("), this.f25320H, ")"));
        n nVarD = n.d();
        String str2 = "Acquiring wakelock " + this.f25328P + "for WorkSpec " + str;
        String str3 = f25318S;
        nVarD.a(str3, str2);
        this.f25328P.acquire();
        p096m2.q qVarH = this.f25322J.f25338K.f24844c.u().h(str);
        if (qVarH == null) {
            this.f25326N.execute(new f(this, 0));
            return;
        }
        boolean zB = qVarH.b();
        this.f25329Q = zB;
        if (zB) {
            this.f25323K.c(Collections.singletonList(qVarH));
            return;
        }
        n.d().a(str3, "No constraints for " + str);
        f(Collections.singletonList(qVarH));
    }

    public final void d(boolean z7) {
        n nVarD = n.d();
        StringBuilder sb = new StringBuilder("onExecuted ");
        j jVar = this.f25321I;
        sb.append(jVar);
        sb.append(", ");
        sb.append(z7);
        nVarD.a(f25318S, sb.toString());
        b();
        int i8 = 5;
        int i9 = this.f25320H;
        j jVar2 = this.f25322J;
        Executor executor = this.f25327O;
        Context context = this.f25319G;
        if (z7) {
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_SCHEDULE_WORK");
            c.e(intent, jVar);
            executor.execute(new p000a.g(jVar2, intent, i9, i8));
        }
        if (this.f25329Q) {
            Intent intent2 = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent2.setAction("ACTION_CONSTRAINTS_CHANGED");
            executor.execute(new p000a.g(jVar2, intent2, i9, i8));
        }
    }

    @Override // p066i2.b
    public final void e(ArrayList arrayList) {
        this.f25326N.execute(new f(this, 2));
    }

    @Override // p066i2.b
    public final void f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (f.a((p096m2.q) it.next()).equals(this.f25321I)) {
                this.f25326N.execute(new f(this, 1));
                return;
            }
        }
    }
}
