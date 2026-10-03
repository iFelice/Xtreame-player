package D3;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0159c f2335a;

    public I(C0159c c0159c) {
        this.f2335a = c0159c;
    }

    public final void a(int i8) {
        Iterator it = new HashSet(this.f2335a.f2370d).iterator();
        while (it.hasNext()) {
            ((I) it.next()).a(i8);
        }
    }

    public final void b(int i8) {
        C0159c c0159c = this.f2335a;
        C0159c.d(c0159c, i8);
        c0159c.a(i8);
        Iterator it = new HashSet(c0159c.f2370d).iterator();
        while (it.hasNext()) {
            ((I) it.next()).b(i8);
        }
    }

    public final void c() {
        Iterator it = new HashSet(this.f2335a.f2370d).iterator();
        while (it.hasNext()) {
            ((I) it.next()).c();
        }
    }

    public final void d() {
        Iterator it = new HashSet(this.f2335a.f2370d).iterator();
        while (it.hasNext()) {
            ((I) it.next()).d();
        }
    }

    public final void e(int i8) {
        Iterator it = new HashSet(this.f2335a.f2370d).iterator();
        while (it.hasNext()) {
            ((I) it.next()).e(i8);
        }
    }

    public final void f() {
        Iterator it = new HashSet(this.f2335a.f2370d).iterator();
        while (it.hasNext()) {
            ((I) it.next()).f();
        }
    }
}
