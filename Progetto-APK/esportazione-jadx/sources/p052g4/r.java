package p052g4;

import J2.t;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.C1960s1;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class r extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f25369a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f25370b = new t(10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f25372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f25373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Exception f25374f;

    @Override // p052g4.h
    public final r a(d dVar) {
        this.f25370b.i(new o(j.f25346a, dVar));
        o();
        return this;
    }

    @Override // p052g4.h
    public final r b(Executor executor, e eVar) {
        this.f25370b.i(new o(executor, eVar));
        o();
        return this;
    }

    @Override // p052g4.h
    public final r c(Executor executor, f fVar) {
        this.f25370b.i(new o(executor, fVar));
        o();
        return this;
    }

    @Override // p052g4.h
    public final r d(Executor executor, b bVar) {
        r rVar = new r();
        this.f25370b.i(new m(executor, bVar, rVar, 0));
        o();
        return rVar;
    }

    @Override // p052g4.h
    public final Exception e() {
        Exception exc;
        synchronized (this.f25369a) {
            exc = this.f25374f;
        }
        return exc;
    }

    @Override // p052g4.h
    public final Object f() {
        Object obj;
        synchronized (this.f25369a) {
            try {
                c.j("Task is not yet complete", this.f25371c);
                if (this.f25372d) {
                    throw new CancellationException("Task is already canceled.");
                }
                Exception exc = this.f25374f;
                if (exc != null) {
                    throw new g(exc);
                }
                obj = this.f25373e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // p052g4.h
    public final boolean g() {
        boolean z7;
        synchronized (this.f25369a) {
            z7 = this.f25371c;
        }
        return z7;
    }

    @Override // p052g4.h
    public final boolean h() {
        boolean z7;
        synchronized (this.f25369a) {
            try {
                z7 = false;
                if (this.f25371c && !this.f25372d && this.f25374f == null) {
                    z7 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z7;
    }

    public final r i(Executor executor, b bVar) {
        r rVar = new r();
        this.f25370b.i(new m(executor, bVar, rVar, 1));
        o();
        return rVar;
    }

    public final void j(Exception exc) {
        c.i(exc, "Exception must not be null");
        synchronized (this.f25369a) {
            n();
            this.f25371c = true;
            this.f25374f = exc;
        }
        this.f25370b.k(this);
    }

    public final void k(Object obj) {
        synchronized (this.f25369a) {
            n();
            this.f25371c = true;
            this.f25373e = obj;
        }
        this.f25370b.k(this);
    }

    public final void l() {
        synchronized (this.f25369a) {
            try {
                if (this.f25371c) {
                    return;
                }
                this.f25371c = true;
                this.f25372d = true;
                this.f25370b.k(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean m(Object obj) {
        synchronized (this.f25369a) {
            try {
                if (this.f25371c) {
                    return false;
                }
                this.f25371c = true;
                this.f25373e = obj;
                this.f25370b.k(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n() {
        String strConcat;
        if (this.f25371c) {
            int i8 = C1960s1.f20838G;
            if (!g()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception excE = e();
            if (excE != null) {
                strConcat = "failure";
            } else if (h()) {
                strConcat = "result ".concat(String.valueOf(f()));
            } else {
                strConcat = this.f25372d ? "cancellation" : "unknown issue";
            }
        }
    }

    public final void o() {
        synchronized (this.f25369a) {
            try {
                if (this.f25371c) {
                    this.f25370b.k(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
