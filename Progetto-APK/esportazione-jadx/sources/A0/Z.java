package A0;

import java.util.Objects;
import p094m0.C3137u;
import p094m0.C3138v;

/* JADX INFO: loaded from: classes.dex */
public final class Z extends a0 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public E f110J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final F.i f111K;

    public Z(F.i iVar, h0 h0Var) {
        super(h0Var);
        this.f111K = iVar;
    }

    @Override // A0.a0, A0.I
    public final void A(C3138v c3138v) {
        this.f119G.f(new C0004d(5, this, c3138v), true);
    }

    @Override // A0.a0
    public final synchronized void b() {
        E e8 = this.f110J;
        e8.getClass();
        e8.x();
        super.b();
    }

    @Override // A0.a0
    public final int d() {
        int size;
        E e8 = this.f110J;
        e8.getClass();
        synchronized (e8) {
            size = e8.f58J.size();
        }
        return size;
    }

    @Override // A0.a0
    public final void j(C0013m c0013m) {
        this.f110J = new E(this.f111K, c0013m, this.f119G);
    }

    @Override // A0.a0
    public final void k() {
        this.f119G.f(new C0016p(this, 2), true);
    }

    @Override // A0.I
    public final void r() {
        this.f110J.getClass();
        E e8 = this.f110J;
        Objects.requireNonNull(e8);
        this.f119G.f(new C0016p(e8, 3), true);
    }

    @Override // A0.a0
    public final void f() {
    }

    @Override // A0.a0
    public final void h(C3137u c3137u, boolean z7) {
    }
}
