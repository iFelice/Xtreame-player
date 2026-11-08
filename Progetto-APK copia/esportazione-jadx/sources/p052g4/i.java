package p052g4;

import com.bumptech.glide.c;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f25345a = new r();

    public i() {
    }

    public final void a(Exception exc) {
        this.f25345a.j(exc);
    }

    public final void b(Object obj) {
        this.f25345a.k(obj);
    }

    public final void c(Exception exc) {
        r rVar = this.f25345a;
        rVar.getClass();
        c.i(exc, "Exception must not be null");
        synchronized (rVar.f25369a) {
            try {
                if (rVar.f25371c) {
                    return;
                }
                rVar.f25371c = true;
                rVar.f25374f = exc;
                rVar.f25370b.k(rVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(Object obj) {
        this.f25345a.m(obj);
    }

    public i(k kVar) {
        ((r) kVar.f25349H).c(j.f25346a, new k(new k(this, 4)));
    }
}
