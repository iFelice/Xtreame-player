package G0;

import B0.RunnableC0052h0;
import O0.C0300y;
import java.util.concurrent.CopyOnWriteArrayList;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0300y f3375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f3376c;

    public o(CopyOnWriteArrayList copyOnWriteArrayList, int i8, C0300y c0300y) {
        this.f3376c = copyOnWriteArrayList;
        this.f3374a = i8;
        this.f3375b = c0300y;
    }

    public final void a() {
        for (n nVar : this.f3376c) {
            M.V(nVar.f3372a, new m(this, nVar.f3373b, 3));
        }
    }

    public final void b() {
        for (n nVar : this.f3376c) {
            M.V(nVar.f3372a, new m(this, nVar.f3373b, 1));
        }
    }

    public final void c() {
        for (n nVar : this.f3376c) {
            M.V(nVar.f3372a, new m(this, nVar.f3373b, 2));
        }
    }

    public final void d(int i8) {
        for (n nVar : this.f3376c) {
            M.V(nVar.f3372a, new p117p0.t(this, nVar.f3373b, i8, 2));
        }
    }

    public final void e(Exception exc) {
        for (n nVar : this.f3376c) {
            M.V(nVar.f3372a, new RunnableC0052h0(this, nVar.f3373b, exc, 3));
        }
    }

    public final void f() {
        for (n nVar : this.f3376c) {
            M.V(nVar.f3372a, new m(this, nVar.f3373b, 0));
        }
    }
}
