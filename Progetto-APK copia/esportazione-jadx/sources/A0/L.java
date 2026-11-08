package A0;

import p094m0.C3138v;

/* JADX INFO: loaded from: classes.dex */
public final class L implements J, I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0006f f60G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f61H;

    public L(F.i iVar, InterfaceC0024y interfaceC0024y, K k8, h0 h0Var) {
        this.f60G = new C0006f(iVar, interfaceC0024y, k8, h0Var);
    }

    @Override // A0.I
    public final void A(C3138v c3138v) {
        if (this.f61H) {
            this.f60G.A(c3138v);
        }
    }

    @Override // A0.J
    public final synchronized void b() {
        if (this.f61H) {
            this.f60G.b();
        }
    }

    @Override // A0.J
    public final synchronized void i(C3138v c3138v, long j8) {
        if (this.f61H) {
            this.f60G.i(c3138v, j8);
        }
    }

    @Override // A0.I
    public final void r() {
        if (this.f61H) {
            this.f60G.r();
        }
    }

    @Override // A0.I
    public final synchronized void x() {
        if (this.f61H) {
            this.f60G.x();
        }
    }
}
