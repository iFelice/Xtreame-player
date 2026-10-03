package y2;

import java.lang.ref.ReferenceQueue;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: y2.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3231c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f31276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f31277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f31278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ReferenceQueue f31279d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public w f31280e;

    public C3231c() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC3229a(0));
        this.f31278c = new HashMap();
        this.f31279d = new ReferenceQueue();
        this.f31276a = false;
        this.f31277b = executorServiceNewSingleThreadExecutor;
        executorServiceNewSingleThreadExecutor.execute(new p000a.f(this, 18));
    }

    public final synchronized void a(p173w2.i iVar, x xVar) {
        C3230b c3230b = (C3230b) this.f31278c.put(iVar, new C3230b(iVar, xVar, this.f31279d, this.f31276a));
        if (c3230b != null) {
            c3230b.f31275c = null;
            c3230b.clear();
        }
    }

    public final void b(C3230b c3230b) {
        D d6;
        synchronized (this) {
            this.f31278c.remove(c3230b.f31273a);
            if (c3230b.f31274b && (d6 = c3230b.f31275c) != null) {
                ((p) this.f31280e).f(c3230b.f31273a, new x(d6, true, false, c3230b.f31273a, this.f31280e));
            }
        }
    }
}
