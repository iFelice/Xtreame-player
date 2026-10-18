package y2;

import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class t implements j, Q2.b {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final U1.f f31368f0 = new U1.f(15, null);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final s f31369G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Q2.e f31370H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final w f31371I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final M.c f31372J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final U1.f f31373K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final u f31374L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final B2.c f31375M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final B2.c f31376N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final B2.c f31377O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final B2.c f31378P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final AtomicInteger f31379Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public p173w2.i f31380R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f31381S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f31382T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f31383U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f31384V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public D f31385W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public p173w2.a f31386X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f31387Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public z f31388Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f31389a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public x f31390b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public l f31391c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public volatile boolean f31392d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f31393e0;

    public t(B2.c cVar, B2.c cVar2, B2.c cVar3, B2.c cVar4, u uVar, w wVar, M.c cVar5) {
        U1.f fVar = f31368f0;
        this.f31369G = new s(new ArrayList(2));
        this.f31370H = new Q2.e();
        this.f31379Q = new AtomicInteger();
        this.f31375M = cVar;
        this.f31376N = cVar2;
        this.f31377O = cVar3;
        this.f31378P = cVar4;
        this.f31374L = uVar;
        this.f31371I = wVar;
        this.f31372J = cVar5;
        this.f31373K = fVar;
    }

    public final synchronized void a(L2.g gVar, Executor executor) {
        try {
            this.f31370H.a();
            s sVar = this.f31369G;
            sVar.getClass();
            sVar.f31367G.add(new r(gVar, executor));
            int i8 = 1;
            if (this.f31387Y) {
                e(1);
                executor.execute(new q(this, gVar, i8));
            } else {
                int i9 = 0;
                if (this.f31389a0) {
                    e(1);
                    executor.execute(new q(this, gVar, i9));
                } else {
                    p102n0.c.a("Cannot add callbacks to a cancelled EngineJob", !this.f31392d0);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b() {
        if (f()) {
            return;
        }
        this.f31392d0 = true;
        l lVar = this.f31391c0;
        lVar.f31341i0 = true;
        InterfaceC3236h interfaceC3236h = lVar.f31339g0;
        if (interfaceC3236h != null) {
            interfaceC3236h.cancel();
        }
        u uVar = this.f31374L;
        p173w2.i iVar = this.f31380R;
        p pVar = (p) uVar;
        synchronized (pVar) {
            p096m2.e eVar = pVar.f31355a;
            eVar.getClass();
            Map map = (Map) (this.f31384V ? eVar.f27216I : eVar.f27215H);
            if (equals(map.get(iVar))) {
                map.remove(iVar);
            }
        }
    }

    @Override // Q2.b
    public final Q2.e c() {
        return this.f31370H;
    }

    public final void d() {
        x xVar;
        synchronized (this) {
            try {
                this.f31370H.a();
                p102n0.c.a("Not yet complete!", f());
                int iDecrementAndGet = this.f31379Q.decrementAndGet();
                p102n0.c.a("Can't decrement below 0", iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    xVar = this.f31390b0;
                    i();
                } else {
                    xVar = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (xVar != null) {
            xVar.c();
        }
    }

    public final synchronized void e(int i8) {
        x xVar;
        p102n0.c.a("Not yet complete!", f());
        if (this.f31379Q.getAndAdd(i8) == 0 && (xVar = this.f31390b0) != null) {
            xVar.a();
        }
    }

    public final boolean f() {
        return this.f31389a0 || this.f31387Y || this.f31392d0;
    }

    public final void g() {
        synchronized (this) {
            try {
                this.f31370H.a();
                if (this.f31392d0) {
                    i();
                    return;
                }
                if (this.f31369G.f31367G.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.f31389a0) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f31389a0 = true;
                p173w2.i iVar = this.f31380R;
                s sVar = this.f31369G;
                sVar.getClass();
                ArrayList<r> arrayList = new ArrayList(sVar.f31367G);
                e(arrayList.size() + 1);
                ((p) this.f31374L).e(this, iVar, null);
                for (r rVar : arrayList) {
                    rVar.f31366b.execute(new q(this, rVar.f31365a, 0));
                }
                d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        synchronized (this) {
            try {
                this.f31370H.a();
                if (this.f31392d0) {
                    this.f31385W.b();
                    i();
                    return;
                }
                if (this.f31369G.f31367G.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.f31387Y) {
                    throw new IllegalStateException("Already have resource");
                }
                U1.f fVar = this.f31373K;
                D d6 = this.f31385W;
                boolean z7 = this.f31381S;
                p173w2.i iVar = this.f31380R;
                w wVar = this.f31371I;
                fVar.getClass();
                this.f31390b0 = new x(d6, z7, true, iVar, wVar);
                int i8 = 1;
                this.f31387Y = true;
                s sVar = this.f31369G;
                sVar.getClass();
                ArrayList<r> arrayList = new ArrayList(sVar.f31367G);
                e(arrayList.size() + 1);
                ((p) this.f31374L).e(this, this.f31380R, this.f31390b0);
                for (r rVar : arrayList) {
                    rVar.f31366b.execute(new q(this, rVar.f31365a, i8));
                }
                d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void i() {
        if (this.f31380R == null) {
            throw new IllegalArgumentException();
        }
        this.f31369G.f31367G.clear();
        this.f31380R = null;
        this.f31390b0 = null;
        this.f31385W = null;
        this.f31389a0 = false;
        this.f31392d0 = false;
        this.f31387Y = false;
        this.f31393e0 = false;
        this.f31391c0.n();
        this.f31391c0 = null;
        this.f31388Z = null;
        this.f31386X = null;
        this.f31372J.a(this);
    }

    public final synchronized void j(L2.g gVar) {
        try {
            this.f31370H.a();
            s sVar = this.f31369G;
            sVar.f31367G.remove(new r(gVar, P2.g.f5892b));
            if (this.f31369G.f31367G.isEmpty()) {
                b();
                if (this.f31387Y || this.f31389a0) {
                    if (this.f31379Q.get() == 0) {
                        i();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void k(l lVar) {
        B2.c cVar;
        this.f31391c0 = lVar;
        int i8 = lVar.i(1);
        if (i8 == 2 || i8 == 3) {
            cVar = this.f31375M;
        } else if (this.f31382T) {
            cVar = this.f31377O;
        } else {
            cVar = this.f31383U ? this.f31378P : this.f31376N;
        }
        cVar.execute(lVar);
    }
}
