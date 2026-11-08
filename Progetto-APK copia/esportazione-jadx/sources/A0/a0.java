package A0;

import android.view.Surface;
import p094m0.C3137u;
import p094m0.C3138v;

/* JADX INFO: loaded from: classes.dex */
public abstract class a0 implements I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final h0 f119G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f120H = new Object();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public g0 f121I;

    public a0(h0 h0Var) {
        this.f119G = h0Var;
    }

    public void b() {
        synchronized (this.f120H) {
            try {
                g0 g0Var = this.f121I;
                if (g0Var != null) {
                    this.f119G.g(g0Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Surface c() {
        throw new UnsupportedOperationException();
    }

    public abstract int d();

    public void e(C3137u c3137u) {
        throw new UnsupportedOperationException();
    }

    public abstract void f();

    public final void i(C0016p c0016p) {
        synchronized (this.f120H) {
            this.f121I = c0016p;
        }
    }

    public abstract void j(C0013m c0013m);

    public abstract void k();

    @Override // A0.I
    public final void x() {
        this.f119G.f(new C0016p(this, 4), true);
    }

    public void a() {
    }

    public void g() {
    }

    @Override // A0.I
    public /* synthetic */ void A(C3138v c3138v) {
    }

    public void h(C3137u c3137u, boolean z7) {
    }
}
