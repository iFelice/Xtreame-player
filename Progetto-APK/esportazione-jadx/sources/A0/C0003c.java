package A0;

import java.util.concurrent.LinkedBlockingQueue;
import p094m0.C3138v;
import p094m0.o0;

/* JADX INFO: renamed from: A0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0003c extends a0 {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final LinkedBlockingQueue f128J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public T f129K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C3138v f130L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f131M;

    public C0003c(F.i iVar, h0 h0Var, boolean z7) {
        super(h0Var);
        this.f128J = new LinkedBlockingQueue();
    }

    @Override // A0.a0
    public final void b() throws o0 {
        this.f128J.clear();
        this.f131M = 0;
        C3138v c3138v = this.f130L;
        if (c3138v != null) {
            try {
                c3138v.a();
                this.f130L = null;
            } catch (p117p0.p e8) {
                throw o0.a(e8);
            }
        }
        super.b();
    }

    @Override // A0.a0
    public final int d() {
        return 0;
    }

    @Override // A0.a0
    public final void f() {
        this.f119G.f(new C0002b(this, 2), true);
    }

    @Override // A0.a0
    public final void j(C0013m c0013m) {
        this.f131M = 0;
        this.f129K = c0013m;
    }

    @Override // A0.a0
    public final void k() {
        this.f119G.f(new C0002b(this, 0), true);
    }

    @Override // A0.I
    public final void r() {
        this.f119G.f(new C0002b(this, 1), true);
    }
}
