package O0;

import B0.C0073x;
import android.os.Looper;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p141s0.InterfaceC3183h;
import p141s0.InterfaceC3184i;

/* JADX INFO: loaded from: classes.dex */
public final class N extends AbstractC0277a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InterfaceC3183h f5105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0073x f5106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final G0.r f5107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final U4.b f5108k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f5109l;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f5115r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5116s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public p141s0.O f5117t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public p094m0.I f5118u;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C3136t f5111n = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f5110m = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f5113p = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f5114q = -9223372036854775807L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p190y4.t f5112o = null;

    public N(p094m0.I i8, InterfaceC3183h interfaceC3183h, C0073x c0073x, G0.r rVar, U4.b bVar, int i9) {
        this.f5118u = i8;
        this.f5105h = interfaceC3183h;
        this.f5106i = c0073x;
        this.f5107j = rVar;
        this.f5108k = bVar;
        this.f5109l = i9;
    }

    @Override // O0.AbstractC0277a
    public final InterfaceC0298w b(C0300y c0300y, S0.d dVar, long j8) {
        InterfaceC3184i interfaceC3184iA = this.f5105h.a();
        p141s0.O o4 = this.f5117t;
        if (o4 != null) {
            interfaceC3184iA.p(o4);
        }
        p094m0.E e8 = h().f26702b;
        e8.getClass();
        H1.j(this.f5191g);
        p096m2.u uVar = new p096m2.u((W0.v) this.f5106i.f1125H);
        G0.o oVar = new G0.o(this.f5188d.f3376c, 0, c0300y);
        D dA = a(c0300y);
        long jR = p117p0.M.R(e8.f26682h);
        p190y4.t tVar = this.f5112o;
        return new L(e8.f26675a, interfaceC3184iA, uVar, this.f5107j, oVar, this.f5108k, dA, this, dVar, e8.f26679e, this.f5109l, this.f5110m, this.f5111n, jR, tVar != null ? (T0.a) tVar.get() : null);
    }

    @Override // O0.AbstractC0277a
    public final synchronized p094m0.I h() {
        return this.f5118u;
    }

    @Override // O0.AbstractC0277a
    public final void l(p141s0.O o4) {
        this.f5117t = o4;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        C0.I i8 = this.f5191g;
        H1.j(i8);
        G0.r rVar = this.f5107j;
        rVar.f(looperMyLooper, i8);
        rVar.prepare();
        t();
    }

    @Override // O0.AbstractC0277a
    public final void n(InterfaceC0298w interfaceC0298w) {
        L l4 = (L) interfaceC0298w;
        if (l4.f5084e0) {
            for (T t7 : l4.f5081b0) {
                t7.k();
                G0.l lVar = t7.f5146h;
                if (lVar != null) {
                    lVar.c(t7.f5143e);
                    t7.f5146h = null;
                    t7.f5145g = null;
                }
            }
        }
        l4.f5073T.f(l4);
        l4.f5078Y.removeCallbacksAndMessages(null);
        l4.f5079Z = null;
        l4.f5102w0 = true;
    }

    @Override // O0.AbstractC0277a
    public final void p() {
        this.f5107j.release();
    }

    @Override // O0.AbstractC0277a
    public final synchronized void s(p094m0.I i8) {
        this.f5118u = i8;
    }

    public final void t() {
        long j8 = this.f5114q;
        boolean z7 = this.f5115r;
        boolean z8 = this.f5116s;
        p094m0.I iH = h();
        Y y7 = new Y(-9223372036854775807L, -9223372036854775807L, j8, j8, 0L, 0L, z7, false, false, null, iH, z8 ? iH.f26703c : null);
        m(this.f5113p ? new M(this, y7) : y7);
    }

    public final void u(long j8, W0.F f8, boolean z7) {
        if (j8 == -9223372036854775807L) {
            j8 = this.f5114q;
        }
        boolean zF = f8.f();
        if (!this.f5113p && this.f5114q == j8 && this.f5115r == zF && this.f5116s == z7) {
            return;
        }
        this.f5114q = j8;
        this.f5115r = zF;
        this.f5116s = z7;
        this.f5113p = false;
        t();
    }

    @Override // O0.AbstractC0277a
    public final void j() {
    }
}
