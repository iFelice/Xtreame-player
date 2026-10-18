package p034e2;

import P1.x;
import P1.z;
import U1.f;
import android.content.Context;
import android.database.Cursor;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p027d2.b;
import p027d2.e;
import p027d2.h;
import p027d2.i;
import p027d2.k;
import p027d2.l;
import p027d2.m;
import p027d2.n;
import p027d2.y;
import p039f.ExecutorC3006v;
import p086l.RunnableC3036k;
import p096m2.c;
import p096m2.q;
import p096m2.r;
import p096m2.s;
import p096m2.u;
import p104n2.o;
import p104n2.v;
import p112o2.j;
import p119p2.a;

/* JADX INFO: loaded from: classes.dex */
public final class A implements Runnable {

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static final String f24778Y = n.f("WorkerWrapper");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f24779G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f24780H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final List f24781I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final u f24782J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final q f24783K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public m f24784L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final a f24785M;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final b f24787O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final p089l2.a f24788P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final WorkDatabase f24789Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final s f24790R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final c f24791S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final List f24792T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public String f24793U;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public volatile boolean f24796X;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public l f24786N = new i();

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final j f24794V = new j();

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final j f24795W = new j();

    public A(z zVar) {
        this.f24779G = (Context) zVar.f24852a;
        this.f24785M = (a) zVar.f24855d;
        this.f24788P = (p089l2.a) zVar.f24854c;
        q qVar = (q) zVar.f24858g;
        this.f24783K = qVar;
        this.f24780H = qVar.f27242a;
        this.f24781I = (List) zVar.f24859h;
        this.f24782J = (u) zVar.f24861j;
        this.f24784L = (m) zVar.f24853b;
        this.f24787O = (b) zVar.f24856e;
        WorkDatabase workDatabase = (WorkDatabase) zVar.f24857f;
        this.f24789Q = workDatabase;
        this.f24790R = workDatabase.u();
        this.f24791S = workDatabase.p();
        this.f24792T = (List) zVar.f24860i;
    }

    public final void a(l lVar) {
        boolean z7 = lVar instanceof k;
        q qVar = this.f24783K;
        String str = f24778Y;
        if (!z7) {
            if (lVar instanceof p027d2.j) {
                n.d().e(str, "Worker result RETRY for " + this.f24793U);
                c();
                return;
            }
            n.d().e(str, "Worker result FAILURE for " + this.f24793U);
            if (qVar.c()) {
                d();
                return;
            } else {
                g();
                return;
            }
        }
        n.d().e(str, "Worker result SUCCESS for " + this.f24793U);
        if (qVar.c()) {
            d();
            return;
        }
        c cVar = this.f24791S;
        String str2 = this.f24780H;
        s sVar = this.f24790R;
        WorkDatabase workDatabase = this.f24789Q;
        workDatabase.c();
        try {
            sVar.l(3, str2);
            sVar.k(str2, ((k) this.f24786N).f24636a);
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (String str3 : cVar.h(str2)) {
                if (sVar.e(str3) == 5 && cVar.j(str3)) {
                    n.d().e(str, "Setting status to enqueued for " + str3);
                    sVar.l(1, str3);
                    sVar.j(jCurrentTimeMillis, str3);
                }
            }
            workDatabase.n();
        } finally {
            workDatabase.j();
            e(false);
        }
    }

    public final void b() {
        boolean zH = h();
        WorkDatabase workDatabase = this.f24789Q;
        String str = this.f24780H;
        if (!zH) {
            workDatabase.c();
            try {
                int iE = this.f24790R.e(str);
                workDatabase.t().h(str);
                if (iE == 0) {
                    e(false);
                } else if (iE == 2) {
                    a(this.f24786N);
                } else if (!U2.d(iE)) {
                    c();
                }
                workDatabase.n();
                workDatabase.j();
            } catch (Throwable th) {
                workDatabase.j();
                throw th;
            }
        }
        List list = this.f24781I;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((p) it.next()).d(str);
            }
            q.a(this.f24787O, workDatabase, list);
        }
    }

    public final void c() {
        String str = this.f24780H;
        s sVar = this.f24790R;
        WorkDatabase workDatabase = this.f24789Q;
        workDatabase.c();
        try {
            sVar.l(1, str);
            sVar.j(System.currentTimeMillis(), str);
            sVar.i(-1L, str);
            workDatabase.n();
        } finally {
            workDatabase.j();
            e(true);
        }
    }

    public final void d() {
        String str = this.f24780H;
        s sVar = this.f24790R;
        WorkDatabase workDatabase = this.f24789Q;
        workDatabase.c();
        try {
            sVar.j(System.currentTimeMillis(), str);
            x xVar = sVar.f27263a;
            sVar.l(1, str);
            xVar.b();
            r rVar = sVar.f27271i;
            T1.i iVarC = rVar.c();
            if (str == null) {
                iVarC.J(1);
            } else {
                iVarC.g(1, str);
            }
            xVar.c();
            try {
                iVarC.l();
                xVar.n();
                xVar.j();
                rVar.m(iVarC);
                xVar.b();
                r rVar2 = sVar.f27267e;
                T1.i iVarC2 = rVar2.c();
                if (str == null) {
                    iVarC2.J(1);
                } else {
                    iVarC2.g(1, str);
                }
                xVar.c();
                try {
                    iVarC2.l();
                    xVar.n();
                    xVar.j();
                    rVar2.m(iVarC2);
                    sVar.i(-1L, str);
                    workDatabase.n();
                    workDatabase.j();
                    e(false);
                } catch (Throwable th) {
                    xVar.j();
                    rVar2.m(iVarC2);
                    throw th;
                }
            } catch (Throwable th2) {
                xVar.j();
                rVar.m(iVarC);
                throw th2;
            }
        } catch (Throwable th3) {
            workDatabase.j();
            e(false);
            throw th3;
        }
    }

    public final void e(boolean z7) {
        boolean zContainsKey;
        this.f24789Q.c();
        try {
            s sVarU = this.f24789Q.u();
            sVarU.getClass();
            z zVarN = z.N(0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1");
            x xVar = sVarU.f27263a;
            xVar.b();
            Cursor cursorL = xVar.l(zVarN, null);
            try {
                boolean z8 = cursorL.moveToFirst() && cursorL.getInt(0) != 0;
                cursorL.close();
                zVarN.O();
                if (!z8) {
                    p104n2.m.a(this.f24779G, RescheduleReceiver.class, false);
                }
                if (z7) {
                    this.f24790R.l(1, this.f24780H);
                    this.f24790R.i(-1L, this.f24780H);
                }
                if (this.f24783K != null && this.f24784L != null) {
                    p089l2.a aVar = this.f24788P;
                    String str = this.f24780H;
                    n nVar = (n) aVar;
                    synchronized (nVar.f24824R) {
                        zContainsKey = nVar.f24818L.containsKey(str);
                    }
                    if (zContainsKey) {
                        ((n) this.f24788P).k(this.f24780H);
                    }
                }
                this.f24789Q.n();
                this.f24789Q.j();
                this.f24794V.j(Boolean.valueOf(z7));
            } catch (Throwable th) {
                cursorL.close();
                zVarN.O();
                throw th;
            }
        } catch (Throwable th2) {
            this.f24789Q.j();
            throw th2;
        }
    }

    public final void f() {
        s sVar = this.f24790R;
        String str = this.f24780H;
        int iE = sVar.e(str);
        String str2 = f24778Y;
        if (iE == 2) {
            n.d().a(str2, "Status for " + str + " is RUNNING; not doing any work and rescheduling for later execution");
            e(true);
            return;
        }
        n nVarD = n.d();
        StringBuilder sbP = U2.p("Status for ", str, " is ");
        sbP.append(U2.D(iE));
        sbP.append(" ; not doing any work");
        nVarD.a(str2, sbP.toString());
        e(false);
    }

    public final void g() {
        String str = this.f24780H;
        WorkDatabase workDatabase = this.f24789Q;
        workDatabase.c();
        try {
            LinkedList linkedList = new LinkedList();
            linkedList.add(str);
            while (true) {
                boolean zIsEmpty = linkedList.isEmpty();
                s sVar = this.f24790R;
                if (zIsEmpty) {
                    sVar.k(str, ((i) this.f24786N).f24635a);
                    workDatabase.n();
                    return;
                } else {
                    String str2 = (String) linkedList.remove();
                    if (sVar.e(str2) != 6) {
                        sVar.l(4, str2);
                    }
                    linkedList.addAll(this.f24791S.h(str2));
                }
            }
        } finally {
            workDatabase.j();
            e(false);
        }
    }

    public final boolean h() {
        if (!this.f24796X) {
            return false;
        }
        n.d().a(f24778Y, "Work interrupted for " + this.f24793U);
        int iE = this.f24790R.e(this.f24780H);
        if (iE == 0) {
            e(false);
        } else {
            e(!U2.d(iE));
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar;
        e eVarA;
        boolean z7;
        StringBuilder sb = new StringBuilder("Work [ id=");
        String str = this.f24780H;
        sb.append(str);
        sb.append(", tags={ ");
        List<String> list = this.f24792T;
        boolean z8 = true;
        for (String str2 : list) {
            if (z8) {
                z8 = false;
            } else {
                sb.append(", ");
            }
            sb.append(str2);
        }
        sb.append(" } ]");
        this.f24793U = sb.toString();
        q qVar = this.f24783K;
        if (h()) {
            return;
        }
        WorkDatabase workDatabase = this.f24789Q;
        workDatabase.c();
        try {
            int i8 = qVar.f27243b;
            String str3 = qVar.f27244c;
            String str4 = f24778Y;
            if (i8 != 1) {
                f();
                workDatabase.n();
                n.d().a(str4, str3 + " is not in ENQUEUED state. Nothing more to do");
            } else {
                if ((!qVar.c() && (qVar.f27243b != 1 || qVar.f27252k <= 0)) || System.currentTimeMillis() >= qVar.a()) {
                    workDatabase.n();
                    workDatabase.j();
                    boolean zC = qVar.c();
                    s sVar = this.f24790R;
                    b bVar = this.f24787O;
                    if (zC) {
                        eVarA = qVar.f27246e;
                    } else {
                        f fVar = bVar.f24612d;
                        String str5 = qVar.f27245d;
                        fVar.getClass();
                        String str6 = h.f24634a;
                        try {
                            hVar = (h) Class.forName(str5).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        } catch (Exception e8) {
                            n.d().c(h.f24634a, p148t.a.c("Trouble instantiating + ", str5), e8);
                            hVar = null;
                        }
                        if (hVar == null) {
                            n.d().b(str4, "Could not create Input Merger " + qVar.f27245d);
                            g();
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(qVar.f27246e);
                        sVar.getClass();
                        z zVarN = z.N(1, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                        if (str == null) {
                            zVarN.J(1);
                        } else {
                            zVarN.g(1, str);
                        }
                        x xVar = sVar.f27263a;
                        xVar.b();
                        Cursor cursorL = xVar.l(zVarN, null);
                        try {
                            ArrayList arrayList2 = new ArrayList(cursorL.getCount());
                            while (cursorL.moveToNext()) {
                                arrayList2.add(e.a(cursorL.isNull(0) ? null : cursorL.getBlob(0)));
                            }
                            cursorL.close();
                            zVarN.O();
                            arrayList.addAll(arrayList2);
                            eVarA = hVar.a(arrayList);
                        } catch (Throwable th) {
                            cursorL.close();
                            zVarN.O();
                            throw th;
                        }
                    }
                    UUID uuidFromString = UUID.fromString(str);
                    ExecutorService executorService = bVar.f24609a;
                    a aVar = this.f24785M;
                    v vVar = new v(workDatabase, aVar);
                    p104n2.u uVar = new p104n2.u(workDatabase, this.f24788P, aVar);
                    WorkerParameters workerParameters = new WorkerParameters();
                    workerParameters.f9769a = uuidFromString;
                    workerParameters.f9770b = eVarA;
                    workerParameters.f9771c = new HashSet(list);
                    workerParameters.f9772d = this.f24782J;
                    workerParameters.f9773e = qVar.f27252k;
                    workerParameters.f9774f = executorService;
                    workerParameters.f9775g = aVar;
                    y yVar = bVar.f24611c;
                    workerParameters.f9776h = yVar;
                    workerParameters.f9777i = vVar;
                    workerParameters.f9778j = uVar;
                    if (this.f24784L == null) {
                        this.f24784L = yVar.a(this.f24779G, str3, workerParameters);
                    }
                    m mVar = this.f24784L;
                    if (mVar == null) {
                        n.d().b(str4, "Could not create Worker " + str3);
                        g();
                        return;
                    }
                    if (mVar.isUsed()) {
                        n.d().b(str4, "Received an already-used Worker " + str3 + "; Worker Factory should return new instances");
                        g();
                        return;
                    }
                    this.f24784L.setUsed();
                    workDatabase.c();
                    try {
                        if (sVar.e(str) == 1) {
                            sVar.l(2, str);
                            x xVar2 = sVar.f27263a;
                            xVar2.b();
                            r rVar = sVar.f27270h;
                            T1.i iVarC = rVar.c();
                            if (str == null) {
                                iVarC.J(1);
                            } else {
                                iVarC.g(1, str);
                            }
                            xVar2.c();
                            try {
                                iVarC.l();
                                xVar2.n();
                                xVar2.j();
                                rVar.m(iVarC);
                                z7 = true;
                            } catch (Throwable th2) {
                                xVar2.j();
                                rVar.m(iVarC);
                                throw th2;
                            }
                        } else {
                            z7 = false;
                        }
                        workDatabase.n();
                        workDatabase.j();
                        if (!z7) {
                            f();
                            return;
                        }
                        if (h()) {
                            return;
                        }
                        p104n2.s sVar2 = new p104n2.s(this.f24779G, this.f24783K, this.f24784L, uVar, this.f24785M);
                        u uVar2 = (u) aVar;
                        ((Executor) uVar2.f27280J).execute(sVar2);
                        int i9 = 8;
                        j jVar = sVar2.f27463G;
                        U0.r rVar2 = new U0.r(i9, this, jVar);
                        ExecutorC3006v executorC3006v = new ExecutorC3006v(1);
                        j jVar2 = this.f24795W;
                        jVar2.a(rVar2, executorC3006v);
                        jVar.a(new RunnableC3036k(i9, this, jVar), (Executor) uVar2.f27280J);
                        jVar2.a(new RunnableC3036k(9, this, this.f24793U), (o) uVar2.f27278H);
                        return;
                    } catch (Throwable th3) {
                        workDatabase.j();
                        throw th3;
                    }
                }
                n.d().a(str4, "Delaying execution for " + str3 + " because it is being executed before schedule.");
                e(true);
                workDatabase.n();
            }
            workDatabase.j();
        } catch (Throwable th4) {
            workDatabase.j();
            throw th4;
        }
    }
}
