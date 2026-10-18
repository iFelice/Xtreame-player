package p034e2;

import A0.e0;
import D.r;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p027d2.b;
import p089l2.a;
import p089l2.c;
import p096m2.f;
import p096m2.j;
import p096m2.q;
import p096m2.u;
import p104n2.o;

/* JADX INFO: loaded from: classes.dex */
public final class n implements c, a {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final String f24812S = p027d2.n.f("Processor");

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f24814H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final b f24815I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p119p2.a f24816J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final WorkDatabase f24817K;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final List f24821O;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final HashMap f24819M = new HashMap();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final HashMap f24818L = new HashMap();

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final HashSet f24822P = new HashSet();

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final ArrayList f24823Q = new ArrayList();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public PowerManager.WakeLock f24813G = null;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Object f24824R = new Object();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final HashMap f24820N = new HashMap();

    public n(Context context, b bVar, u uVar, WorkDatabase workDatabase, List list) {
        this.f24814H = context;
        this.f24815I = bVar;
        this.f24816J = uVar;
        this.f24817K = workDatabase;
        this.f24821O = list;
    }

    public static boolean d(String str, A a8) {
        if (a8 == null) {
            p027d2.n.d().a(f24812S, "WorkerWrapper could not be found for " + str);
            return false;
        }
        a8.f24796X = true;
        a8.h();
        a8.f24795W.cancel(true);
        if (a8.f24784L == null || !(a8.f24795W.f27864G instanceof p112o2.a)) {
            p027d2.n.d().a(A.f24778Y, "WorkSpec " + a8.f24783K + " is already done. Not interrupting.");
        } else {
            a8.f24784L.stop();
        }
        p027d2.n.d().a(f24812S, "WorkerWrapper interrupted for " + str);
        return true;
    }

    public final void a(c cVar) {
        synchronized (this.f24824R) {
            this.f24823Q.add(cVar);
        }
    }

    @Override // p034e2.c
    public final void b(j jVar, boolean z7) {
        synchronized (this.f24824R) {
            try {
                A a8 = (A) this.f24819M.get(jVar.f27228a);
                if (a8 != null && jVar.equals(f.a(a8.f24783K))) {
                    this.f24819M.remove(jVar.f27228a);
                }
                p027d2.n.d().a(f24812S, n.class.getSimpleName() + " " + jVar.f27228a + " executed; reschedule = " + z7);
                Iterator it = this.f24823Q.iterator();
                while (it.hasNext()) {
                    ((c) it.next()).b(jVar, z7);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final q c(String str) {
        synchronized (this.f24824R) {
            try {
                A a8 = (A) this.f24818L.get(str);
                if (a8 == null) {
                    a8 = (A) this.f24819M.get(str);
                }
                if (a8 == null) {
                    return null;
                }
                return a8.f24783K;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e(String str) {
        boolean zContains;
        synchronized (this.f24824R) {
            zContains = this.f24822P.contains(str);
        }
        return zContains;
    }

    public final boolean f(String str) {
        boolean z7;
        synchronized (this.f24824R) {
            try {
                z7 = this.f24819M.containsKey(str) || this.f24818L.containsKey(str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    public final void g(c cVar) {
        synchronized (this.f24824R) {
            this.f24823Q.remove(cVar);
        }
    }

    public final void h(j jVar) {
        ((Executor) ((u) this.f24816J).f27280J).execute(new e0(this, jVar));
    }

    public final void i(String str, p027d2.f fVar) {
        synchronized (this.f24824R) {
            try {
                p027d2.n.d().e(f24812S, "Moving WorkSpec (" + str + ") to the foreground");
                A a8 = (A) this.f24819M.remove(str);
                if (a8 != null) {
                    if (this.f24813G == null) {
                        PowerManager.WakeLock wakeLockA = p104n2.q.a(this.f24814H, "ProcessorForegroundLck");
                        this.f24813G = wakeLockA;
                        wakeLockA.acquire();
                    }
                    this.f24818L.put(str, a8);
                    Intent intentC = c.c(this.f24814H, f.a(a8.f24783K), fVar);
                    Context context = this.f24814H;
                    if (Build.VERSION.SDK_INT >= 26) {
                        r.r(context, intentC);
                    } else {
                        context.startService(intentC);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean j(r rVar, u uVar) {
        j jVar = rVar.f24828a;
        final String str = jVar.f27228a;
        final ArrayList arrayList = new ArrayList();
        final int i8 = 0;
        q qVar = (q) this.f24817K.m(new Callable() { // from class: e2.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i9 = i8;
                Object obj = str;
                Object obj2 = arrayList;
                Object obj3 = this;
                switch (i9) {
                    case 0:
                        String str2 = (String) obj;
                        WorkDatabase workDatabase = ((n) obj3).f24817K;
                        ((ArrayList) obj2).addAll(workDatabase.v().B(str2));
                        return workDatabase.u().h(str2);
                    default:
                        N4.b bVar = (N4.b) obj3;
                        bVar.getClass();
                        bVar.getClass();
                        throw null;
                }
            }
        });
        if (qVar == null) {
            p027d2.n.d().g(f24812S, "Didn't find WorkSpec for id " + jVar);
            h(jVar);
            return false;
        }
        synchronized (this.f24824R) {
            try {
                if (f(str)) {
                    Set set = (Set) this.f24820N.get(str);
                    if (((r) set.iterator().next()).f24828a.f27229b == jVar.f27229b) {
                        set.add(rVar);
                        p027d2.n.d().a(f24812S, "Work " + jVar + " is already enqueued for processing");
                    } else {
                        h(jVar);
                    }
                    return false;
                }
                if (qVar.f27261t != jVar.f27229b) {
                    h(jVar);
                    return false;
                }
                Context context = this.f24814H;
                b bVar = this.f24815I;
                p119p2.a aVar = this.f24816J;
                WorkDatabase workDatabase = this.f24817K;
                z zVar = new z();
                zVar.f24861j = new u(21);
                zVar.f24852a = context.getApplicationContext();
                zVar.f24855d = aVar;
                zVar.f24854c = this;
                zVar.f24856e = bVar;
                zVar.f24857f = workDatabase;
                zVar.f24858g = qVar;
                zVar.f24860i = arrayList;
                zVar.f24859h = this.f24821O;
                if (uVar != null) {
                    zVar.f24861j = uVar;
                }
                A a8 = new A(zVar);
                p112o2.j jVar2 = a8.f24794V;
                jVar2.a(new K.a(this, rVar.f24828a, jVar2, 5, 0), (Executor) ((u) this.f24816J).f27280J);
                this.f24819M.put(str, a8);
                HashSet hashSet = new HashSet();
                hashSet.add(rVar);
                this.f24820N.put(str, hashSet);
                ((o) ((u) this.f24816J).f27278H).execute(a8);
                p027d2.n.d().a(f24812S, n.class.getSimpleName() + ": processing " + jVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(String str) {
        synchronized (this.f24824R) {
            this.f24818L.remove(str);
            l();
        }
    }

    public final void l() {
        synchronized (this.f24824R) {
            try {
                if (!(!this.f24818L.isEmpty())) {
                    Context context = this.f24814H;
                    String str = c.f26438P;
                    Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                    intent.setAction("ACTION_STOP_FOREGROUND");
                    try {
                        this.f24814H.startService(intent);
                    } catch (Throwable th) {
                        p027d2.n.d().c(f24812S, "Unable to stop foreground service", th);
                    }
                    PowerManager.WakeLock wakeLock = this.f24813G;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.f24813G = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean m(r rVar) {
        String str = rVar.f24828a.f27228a;
        synchronized (this.f24824R) {
            try {
                A a8 = (A) this.f24819M.remove(str);
                if (a8 == null) {
                    p027d2.n.d().a(f24812S, "WorkerWrapper could not be found for " + str);
                    return false;
                }
                Set set = (Set) this.f24820N.get(str);
                if (set != null && set.contains(rVar)) {
                    p027d2.n.d().a(f24812S, "Processor stopping background work " + str);
                    this.f24820N.remove(str);
                    return d(str, a8);
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
