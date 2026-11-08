package p050g2;

import P1.x;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import p000a.g;
import p027d2.d;
import p027d2.n;
import p034e2.r;
import p079k.AbstractC3012d;
import p096m2.f;
import p096m2.i;
import p096m2.j;
import p096m2.q;
import p096m2.u;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public final class c implements p034e2.c {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final String f25306K = n.f("CommandHandler");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f25307G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HashMap f25308H = new HashMap();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f25309I = new Object();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final x0 f25310J;

    public c(Context context, x0 x0Var) {
        this.f25307G = context;
        this.f25310J = x0Var;
    }

    public static j d(Intent intent) {
        return new j(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra("KEY_WORKSPEC_GENERATION", 0));
    }

    public static void e(Intent intent, j jVar) {
        intent.putExtra("KEY_WORKSPEC_ID", jVar.f27228a);
        intent.putExtra("KEY_WORKSPEC_GENERATION", jVar.f27229b);
    }

    public final boolean a() {
        boolean z7;
        synchronized (this.f25309I) {
            z7 = !this.f25308H.isEmpty();
        }
        return z7;
    }

    @Override // p034e2.c
    public final void b(j jVar, boolean z7) {
        synchronized (this.f25309I) {
            try {
                g gVar = (g) this.f25308H.remove(jVar);
                this.f25310J.t(jVar);
                if (gVar != null) {
                    gVar.d(z7);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Intent intent, int i8, j jVar) {
        List<r> listU;
        ArrayList arrayList;
        String action = intent.getAction();
        int i9 = 5;
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            n.d().a(f25306K, "Handling constraints changed " + intent);
            e eVar = new e(this.f25307G, i8, jVar);
            ArrayList<q> arrayListD = jVar.f25338K.f24844c.u().d();
            String str = d.f25311a;
            Iterator it = arrayListD.iterator();
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            while (it.hasNext()) {
                d dVar = ((q) it.next()).f27251j;
                z7 |= dVar.f24623d;
                z8 |= dVar.f24621b;
                z9 |= dVar.f24624e;
                z10 |= dVar.f24620a != 1;
                if (z7 && z8 && z9 && z10) {
                    break;
                }
            }
            String str2 = ConstraintProxyUpdateReceiver.f9786a;
            Intent intent2 = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
            Context context = eVar.f25313a;
            intent2.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
            intent2.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z7).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z8).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z9).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z10);
            context.sendBroadcast(intent2);
            p066i2.c cVar = eVar.f25315c;
            cVar.c(arrayListD);
            ArrayList<q> arrayList2 = new ArrayList(arrayListD.size());
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (q qVar : arrayListD) {
                String str3 = qVar.f27242a;
                if (jCurrentTimeMillis >= qVar.a() && (!qVar.b() || cVar.a(str3))) {
                    arrayList2.add(qVar);
                }
            }
            for (q qVar2 : arrayList2) {
                String str4 = qVar2.f27242a;
                j jVarA = f.a(qVar2);
                Intent intent3 = new Intent(context, (Class<?>) SystemAlarmService.class);
                intent3.setAction("ACTION_DELAY_MET");
                e(intent3, jVarA);
                n.d().a(e.f25312d, p000a.r.g("Creating a delay_met command for workSpec with id (", str4, ")"));
                ((Executor) ((u) jVar.f25335H).f27280J).execute(new g(jVar, intent3, eVar.f25314b, i9));
            }
            cVar.d();
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            n.d().a(f25306K, "Handling reschedule " + intent + ", " + i8);
            jVar.f25338K.y();
            return;
        }
        Bundle extras = intent.getExtras();
        String[] strArr = {"KEY_WORKSPEC_ID"};
        if (extras == null || extras.isEmpty() || extras.get(strArr[0]) == null) {
            n.d().b(f25306K, "Invalid request for " + action + " , requires KEY_WORKSPEC_ID .");
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            j jVarD = d(intent);
            String str5 = f25306K;
            n.d().a(str5, "Handling schedule work for " + jVarD);
            WorkDatabase workDatabase = jVar.f25338K.f24844c;
            workDatabase.c();
            try {
                q qVarH = workDatabase.u().h(jVarD.f27228a);
                if (qVarH == null) {
                    n.d().g(str5, "Skipping scheduling " + jVarD + " because it's no longer in the DB");
                } else if (U2.d(qVarH.f27243b)) {
                    n.d().g(str5, "Skipping scheduling " + jVarD + "because it is finished.");
                } else {
                    long jA = qVarH.a();
                    boolean zB = qVarH.b();
                    Context context2 = this.f25307G;
                    if (zB) {
                        n.d().a(str5, "Opportunistically setting an alarm for " + jVarD + "at " + jA);
                        b.b(context2, workDatabase, jVarD, jA);
                        Intent intent4 = new Intent(context2, (Class<?>) SystemAlarmService.class);
                        intent4.setAction("ACTION_CONSTRAINTS_CHANGED");
                        ((Executor) ((u) jVar.f25335H).f27280J).execute(new g(jVar, intent4, i8, i9));
                    } else {
                        n.d().a(str5, "Setting up Alarms for " + jVarD + "at " + jA);
                        b.b(context2, workDatabase, jVarD, jA);
                    }
                    workDatabase.n();
                }
                return;
            } finally {
                workDatabase.j();
            }
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            synchronized (this.f25309I) {
                try {
                    j jVarD2 = d(intent);
                    n nVarD = n.d();
                    String str6 = f25306K;
                    nVarD.a(str6, "Handing delay met for " + jVarD2);
                    if (this.f25308H.containsKey(jVarD2)) {
                        n.d().a(str6, "WorkSpec " + jVarD2 + " is is already being handled for ACTION_DELAY_MET");
                    } else {
                        g gVar = new g(this.f25307G, i8, jVar, this.f25310J.y(jVarD2));
                        this.f25308H.put(jVarD2, gVar);
                        gVar.c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (!"ACTION_STOP_WORK".equals(action)) {
            if (!"ACTION_EXECUTION_COMPLETED".equals(action)) {
                n.d().g(f25306K, "Ignoring intent " + intent);
                return;
            }
            j jVarD3 = d(intent);
            boolean z11 = intent.getExtras().getBoolean("KEY_NEEDS_RESCHEDULE");
            n.d().a(f25306K, "Handling onExecutionCompleted " + intent + ", " + i8);
            b(jVarD3, z11);
            return;
        }
        Bundle extras2 = intent.getExtras();
        String string = extras2.getString("KEY_WORKSPEC_ID");
        boolean zContainsKey = extras2.containsKey("KEY_WORKSPEC_GENERATION");
        x0 x0Var = this.f25310J;
        if (zContainsKey) {
            int i10 = extras2.getInt("KEY_WORKSPEC_GENERATION");
            arrayList = new ArrayList(1);
            r rVarT = x0Var.t(new j(string, i10));
            if (rVarT != null) {
                listU = arrayList;
                arrayList.add(rVarT);
                listU = arrayList;
            }
        } else {
            listU = x0Var.u(string);
        }
        listU = arrayList;
        for (r rVar : listU) {
            n.d().a(f25306K, a.c("Handing stopWork work for ", string));
            jVar.f25338K.A(rVar);
            WorkDatabase workDatabase2 = jVar.f25338K.f24844c;
            j jVar2 = rVar.f24828a;
            String str7 = b.f25305a;
            i iVarR = workDatabase2.r();
            p096m2.g gVarM = iVarR.m(jVar2);
            if (gVarM != null) {
                b.a(this.f25307G, jVar2, gVarM.f27219c);
                n.d().a(b.f25305a, "Removing SystemIdInfo for workSpecId (" + jVar2 + ")");
                ((x) iVarR.f27224H).b();
                T1.i iVarC = ((AbstractC3012d) iVarR.f27226J).c();
                String str8 = jVar2.f27228a;
                if (str8 == null) {
                    iVarC.J(1);
                } else {
                    iVarC.g(1, str8);
                }
                iVarC.w(2, jVar2.f27229b);
                ((x) iVarR.f27224H).c();
                try {
                    iVarC.l();
                    ((x) iVarR.f27224H).n();
                    ((x) iVarR.f27224H).j();
                    ((AbstractC3012d) iVarR.f27226J).m(iVarC);
                } catch (Throwable th2) {
                    ((x) iVarR.f27224H).j();
                    ((AbstractC3012d) iVarR.f27226J).m(iVarC);
                    throw th2;
                }
            }
            jVar.b(rVar.f24828a, false);
        }
    }
}
