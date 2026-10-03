package U0;

import B0.C0072w;
import D0.U;
import android.view.Surface;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.Executor;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.w0;
import p117p0.InterfaceC3168f;

/* JADX INFO: renamed from: U0.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0338d implements S {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final E f6725G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final K f6726H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayDeque f6727I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Surface f6728J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public C3136t f6729K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f6730L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public O f6731M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Executor f6732N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public B f6733O;

    public C0338d(E e8, InterfaceC3168f interfaceC3168f) {
        this.f6725G = e8;
        e8.f6640l = interfaceC3168f;
        this.f6726H = new K(new p096m2.l(this, 0), e8);
        this.f6727I = new ArrayDeque();
        this.f6729K = new C3136t(new C3135s());
        this.f6730L = -9223372036854775807L;
        this.f6731M = O.f6689k;
        this.f6732N = new p093m.a(2);
        this.f6733O = new C0336b();
    }

    @Override // U0.S
    public final void a() {
        K k8 = this.f6726H;
        if (k8.f6677g == -9223372036854775807L) {
            k8.f6677g = Long.MIN_VALUE;
            k8.f6678h = Long.MIN_VALUE;
        }
        k8.f6679i = k8.f6677g;
    }

    @Override // U0.S
    public final boolean b() {
        K k8 = this.f6726H;
        long j8 = k8.f6679i;
        return j8 != -9223372036854775807L && k8.f6678h == j8;
    }

    @Override // U0.S
    public final Surface c() {
        Surface surface = this.f6728J;
        H1.j(surface);
        return surface;
    }

    @Override // U0.S
    public final void d() {
        this.f6725G.e();
    }

    @Override // U0.S
    public final void e(int i8, long j8, C3136t c3136t, List list) {
        H1.i(list.isEmpty());
        int i9 = c3136t.f27048v;
        C3136t c3136t2 = this.f6729K;
        int i10 = c3136t2.f27048v;
        K k8 = this.f6726H;
        int i11 = c3136t.f27049w;
        if (i9 != i10 || i11 != c3136t2.f27049w) {
            long j9 = k8.f6677g;
            k8.f6674d.b(new w0(i9, i11), j9 == -9223372036854775807L ? 0L : j9 + 1);
        }
        float f8 = this.f6729K.f27052z;
        float f9 = c3136t.f27052z;
        if (f9 != f8) {
            this.f6725G.g(f9);
        }
        this.f6729K = c3136t;
        if (j8 != this.f6730L) {
            if (k8.f6676f.f28131c == 0) {
                k8.f6672b.f(i8);
                k8.f6681k = j8;
            } else {
                long j10 = k8.f6677g;
                k8.f6675e.b(Long.valueOf(j8), j10 == -9223372036854775807L ? -4611686018427387904L : j10 + 1);
            }
            this.f6730L = j8;
        }
    }

    @Override // U0.S
    public final void f() {
        this.f6725G.d();
    }

    @Override // U0.S
    public final void g(long j8) {
        throw new UnsupportedOperationException();
    }

    @Override // U0.S
    public final void h(int i8) {
        I i9 = this.f6725G.f6630b;
        if (i9.f6660g == i8) {
            return;
        }
        i9.f6660g = i8;
        i9.d(true);
    }

    @Override // U0.S
    public final void i() {
        this.f6728J = null;
        this.f6725G.h(null);
    }

    @Override // U0.S
    public final boolean isInitialized() {
        return true;
    }

    @Override // U0.S
    public final void j(U u7) {
        D4.a aVar = D4.a.f2392G;
        this.f6731M = u7;
        this.f6732N = aVar;
    }

    @Override // U0.S
    public final void k(boolean z7) {
        if (z7) {
            E e8 = this.f6725G;
            I i8 = e8.f6630b;
            i8.f6663j = 0L;
            i8.f6666m = -1L;
            i8.f6664k = -1L;
            e8.f6636h = -9223372036854775807L;
            e8.f6634f = -9223372036854775807L;
            e8.f6633e = Math.min(e8.f6633e, 1);
            e8.f6637i = -9223372036854775807L;
        }
        K k8 = this.f6726H;
        p117p0.z zVar = k8.f6676f;
        zVar.f28129a = 0;
        zVar.f28130b = -1;
        zVar.f28131c = 0;
        k8.f6677g = -9223372036854775807L;
        k8.f6678h = -9223372036854775807L;
        k8.f6679i = -9223372036854775807L;
        p016c.g gVar = k8.f6675e;
        if (gVar.m() > 0) {
            H1.d(gVar.m() > 0);
            while (gVar.m() > 1) {
                gVar.j();
            }
            Object objJ = gVar.j();
            objJ.getClass();
            k8.f6681k = ((Long) objJ).longValue();
        }
        p016c.g gVar2 = k8.f6674d;
        if (gVar2.m() > 0) {
            H1.d(gVar2.m() > 0);
            while (gVar2.m() > 1) {
                gVar2.j();
            }
            Object objJ2 = gVar2.j();
            objJ2.getClass();
            gVar2.b((w0) objJ2, 0L);
        }
        this.f6727I.clear();
    }

    @Override // U0.S
    public final boolean l(C3136t c3136t) {
        return true;
    }

    @Override // U0.S
    public final void m(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // U0.S
    public final void n(Surface surface, p117p0.F f8) {
        this.f6728J = surface;
        this.f6725G.h(surface);
    }

    @Override // U0.S
    public final void o(long j8, long j9) throws Q {
        try {
            this.f6726H.a(j8, j9);
        } catch (C0072w e8) {
            throw new Q(e8, this.f6729K);
        }
    }

    @Override // U0.S
    public final void p(boolean z7) {
        this.f6725G.c(z7);
    }

    @Override // U0.S
    public final boolean q(boolean z7) {
        return this.f6725G.b(z7);
    }

    @Override // U0.S
    public final boolean r(long j8, P p7) {
        this.f6727I.add(p7);
        K k8 = this.f6726H;
        k8.f6676f.d(j8);
        k8.f6677g = j8;
        k8.f6679i = -9223372036854775807L;
        this.f6732N.execute(new p000a.b(this, 19));
        return true;
    }

    @Override // U0.S
    public final void s() {
        throw new UnsupportedOperationException();
    }

    @Override // U0.S
    public final void setPlaybackSpeed(float f8) {
        this.f6725G.i(f8);
    }

    @Override // U0.S
    public final void t(B b8) {
        this.f6733O = b8;
    }

    @Override // U0.S
    public final void u() {
        E e8 = this.f6725G;
        if (e8.f6633e == 0) {
            e8.f6633e = 1;
        }
    }

    @Override // U0.S
    public final void release() {
    }
}
