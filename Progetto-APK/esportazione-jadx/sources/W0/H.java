package W0;

import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class H implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f7331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public u f7334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public L f7335g;

    public H(int i8, int i9, String str) {
        this.f7329a = i8;
        this.f7330b = i9;
        this.f7331c = str;
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f7334f = uVar;
        L lT = uVar.t(1024, 4);
        this.f7335g = lT;
        C3135s c3135s = new C3135s();
        String str = this.f7331c;
        c3135s.f26995m = O.p(str);
        c3135s.f26996n = O.p(str);
        lT.b(new C3136t(c3135s));
        this.f7334f.j();
        this.f7334f.r(new I());
        this.f7333e = 1;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        int i8 = this.f7330b;
        int i9 = this.f7329a;
        H1.i((i9 == -1 || i8 == -1) ? false : true);
        p117p0.E e8 = new p117p0.E(i8);
        tVar.c(0, e8.f28035a, i8);
        return e8.F() == i9;
    }

    @Override // W0.s
    public final int h(t tVar, w wVar) {
        int i8 = this.f7333e;
        if (i8 != 1) {
            if (i8 == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        L l4 = this.f7335g;
        l4.getClass();
        int iF = l4.f(tVar, 1024, true);
        if (iF == -1) {
            this.f7333e = 2;
            this.f7335g.d(0L, 1, this.f7332d, 0, null);
            this.f7332d = 0;
        } else {
            this.f7332d += iF;
        }
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        if (j8 == 0 || this.f7333e == 1) {
            this.f7333e = 1;
            this.f7332d = 0;
        }
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = z4.H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
