package O0;

import C0.C0079d;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: renamed from: O0.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0282f implements E, G0.p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f5203G = null;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public D f5204H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public G0.o f5205I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ AbstractC0284h f5206J;

    public C0282f(AbstractC0284h abstractC0284h) {
        this.f5206J = abstractC0284h;
        this.f5204H = abstractC0284h.a(null);
        this.f5205I = new G0.o(abstractC0284h.f5188d.f3376c, 0, null);
    }

    @Override // G0.p
    public final void C(int i8, C0300y c0300y) {
        a(i8, c0300y);
        this.f5205I.f();
    }

    @Override // G0.p
    public final void E(int i8, C0300y c0300y, int i9) {
        a(i8, c0300y);
        this.f5205I.d(i9);
    }

    @Override // O0.E
    public final void F(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u) {
        a(i8, c0300y);
        D d6 = this.f5204H;
        C0296u c0296uB = b(c0296u);
        d6.getClass();
        d6.a(new B(d6, c0292p, c0296uB, 1));
    }

    @Override // G0.p
    public final void H(int i8, C0300y c0300y) {
        a(i8, c0300y);
        this.f5205I.b();
    }

    @Override // O0.E
    public final void I(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u, int i9) {
        a(i8, c0300y);
        D d6 = this.f5204H;
        C0296u c0296uB = b(c0296u);
        d6.getClass();
        d6.a(new C0.k(d6, c0292p, c0296uB, i9, 2));
    }

    @Override // O0.E
    public final void M(int i8, C0300y c0300y, C0296u c0296u) {
        a(i8, c0300y);
        D d6 = this.f5204H;
        C0296u c0296uB = b(c0296u);
        d6.getClass();
        d6.a(new C0079d(12, d6, c0296uB));
    }

    @Override // G0.p
    public final void N(int i8, C0300y c0300y, Exception exc) {
        a(i8, c0300y);
        this.f5205I.e(exc);
    }

    public final void a(int i8, C0300y c0300y) {
        C0300y c0300yA;
        Object obj = this.f5203G;
        AbstractC0284h abstractC0284h = this.f5206J;
        if (c0300y != null) {
            C0295t c0295t = (C0295t) abstractC0284h;
            c0295t.getClass();
            Object obj2 = c0295t.f5245o.f5239d;
            Object obj3 = c0300y.f5257a;
            if (obj2 != null && obj2.equals(obj3)) {
                obj3 = r.f5237e;
            }
            c0300yA = c0300y.a(obj3);
        } else {
            c0300yA = null;
        }
        ((C0295t) abstractC0284h).getClass();
        D d6 = this.f5204H;
        if (d6.f5030a != i8 || !Objects.equals(d6.f5031b, c0300yA)) {
            this.f5204H = new D(abstractC0284h.f5187c.f5032c, i8, c0300yA);
        }
        G0.o oVar = this.f5205I;
        if (oVar.f3374a == i8 && Objects.equals(oVar.f3375b, c0300yA)) {
            return;
        }
        this.f5205I = new G0.o(abstractC0284h.f5188d.f3376c, i8, c0300yA);
    }

    public final C0296u b(C0296u c0296u) {
        long j8 = c0296u.f5255f;
        C0295t c0295t = (C0295t) this.f5206J;
        c0295t.getClass();
        c0295t.getClass();
        long j9 = c0296u.f5255f;
        long j10 = c0296u.f5256g;
        if (j8 == j9 && j10 == j10) {
            return c0296u;
        }
        return new C0296u(c0296u.f5250a, c0296u.f5251b, c0296u.f5252c, c0296u.f5253d, c0296u.f5254e, j8, j10);
    }

    @Override // G0.p
    public final void h(int i8, C0300y c0300y) {
        a(i8, c0300y);
        this.f5205I.c();
    }

    @Override // O0.E
    public final void l(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u) {
        a(i8, c0300y);
        D d6 = this.f5204H;
        C0296u c0296uB = b(c0296u);
        d6.getClass();
        d6.a(new B(d6, c0292p, c0296uB, 0));
    }

    @Override // O0.E
    public final void r(int i8, C0300y c0300y, C0296u c0296u) {
        a(i8, c0300y);
        D d6 = this.f5204H;
        C0296u c0296uB = b(c0296u);
        C0300y c0300y2 = d6.f5031b;
        c0300y2.getClass();
        d6.a(new A(d6, c0300y2, c0296uB, 0));
    }

    @Override // O0.E
    public final void s(int i8, C0300y c0300y, C0292p c0292p, C0296u c0296u, IOException iOException, boolean z7) {
        a(i8, c0300y);
        D d6 = this.f5204H;
        C0296u c0296uB = b(c0296u);
        d6.getClass();
        d6.a(new C0.p(d6, c0292p, c0296uB, iOException, z7));
    }

    @Override // G0.p
    public final void w(int i8, C0300y c0300y) {
        a(i8, c0300y);
        this.f5205I.a();
    }
}
