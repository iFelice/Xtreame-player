package P1;

import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile T1.b f5854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Executor f5855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public T1.f f5856c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5858e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f5859f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map f5863j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f5864k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l f5857d = d();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final LinkedHashMap f5860g = new LinkedHashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ReentrantReadWriteLock f5861h = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ThreadLocal f5862i = new ThreadLocal();

    public x() {
        Map mapSynchronizedMap = Collections.synchronizedMap(new LinkedHashMap());
        q0.g(mapSynchronizedMap, "synchronizedMap(mutableMapOf())");
        this.f5863j = mapSynchronizedMap;
        this.f5864k = new LinkedHashMap();
    }

    public static Object o(Class cls, T1.f fVar) {
        if (cls.isInstance(fVar)) {
            return fVar;
        }
        if (fVar instanceof d) {
            return o(cls, ((d) fVar).k());
        }
        return null;
    }

    public final void a() {
        if (this.f5858e) {
            return;
        }
        if (!(!(Looper.getMainLooper().getThread() == Thread.currentThread()))) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.".toString());
        }
    }

    public final void b() {
        if (!g().getWritableDatabase().L() && this.f5862i.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.".toString());
        }
    }

    public final void c() {
        a();
        a();
        T1.b writableDatabase = g().getWritableDatabase();
        this.f5857d.d(writableDatabase);
        if (writableDatabase.P()) {
            writableDatabase.z();
        } else {
            writableDatabase.c();
        }
    }

    public abstract l d();

    public abstract T1.f e(c cVar);

    public List f(LinkedHashMap linkedHashMap) {
        q0.h(linkedHashMap, "autoMigrationSpecs");
        return p162u6.q.f30542G;
    }

    public final T1.f g() {
        T1.f fVar = this.f5856c;
        if (fVar != null) {
            return fVar;
        }
        q0.I("internalOpenHelper");
        throw null;
    }

    public Set h() {
        return p162u6.s.f30544G;
    }

    public Map i() {
        return p162u6.r.f30543G;
    }

    public final void j() {
        g().getWritableDatabase().D();
        if (g().getWritableDatabase().L()) {
            return;
        }
        l lVar = this.f5857d;
        if (lVar.f5807f.compareAndSet(false, true)) {
            Executor executor = lVar.f5802a.f5855b;
            if (executor != null) {
                executor.execute(lVar.f5814m);
            } else {
                q0.I("internalQueryExecutor");
                throw null;
            }
        }
    }

    public final boolean k() {
        T1.b bVar = this.f5854a;
        return q0.c(bVar != null ? Boolean.valueOf(bVar.isOpen()) : null, Boolean.TRUE);
    }

    public final Cursor l(T1.h hVar, CancellationSignal cancellationSignal) {
        a();
        b();
        return cancellationSignal != null ? g().getWritableDatabase().y(hVar, cancellationSignal) : g().getWritableDatabase().R(hVar);
    }

    public final Object m(Callable callable) {
        c();
        try {
            Object objCall = callable.call();
            n();
            return objCall;
        } finally {
            j();
        }
    }

    public final void n() {
        g().getWritableDatabase().x();
    }
}
