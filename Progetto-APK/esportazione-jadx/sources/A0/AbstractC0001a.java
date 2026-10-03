package A0;

import N.C0260i;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import p039f.RunnableC3004t;
import p094m0.C3138v;
import p094m0.o0;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: A0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0001a implements K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b0 f112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public I f113b = new U4.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public J f114c = new p039f.S(this, 25);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public H f115d = new C0260i(5);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Executor f116e = D4.a.f2392G;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f117f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f118g = -1;

    public AbstractC0001a(boolean z7, int i8) {
        this.f112a = new b0(z7, i8);
    }

    @Override // A0.K
    public void a() {
        this.f114c.b();
    }

    @Override // A0.K
    public void b(F.i iVar, C3138v c3138v, long j8) {
        try {
            int i8 = this.f117f;
            int i9 = c3138v.f27058c;
            b0 b0Var = this.f112a;
            int i10 = c3138v.f27059d;
            if (i8 != i9 || this.f118g != i10 || !b0Var.c().hasNext()) {
                int i11 = c3138v.f27058c;
                this.f117f = i11;
                this.f118g = i10;
                p117p0.F fG = g(i11, i10);
                int i12 = fG.f28039a;
                int i13 = fG.f28040b;
                if (b0Var.c().hasNext()) {
                    C3138v c3138v2 = (C3138v) b0Var.c().next();
                    if (c3138v2.f27058c != i12 || c3138v2.f27059d != i13) {
                        b0Var.b();
                        b0Var.a(iVar, i12, i13);
                    }
                } else {
                    b0Var.a(iVar, i12, i13);
                }
            }
            C3138v c3138vD = b0Var.d();
            AbstractC3164b.r(c3138vD.f27057b, c3138vD.f27058c, c3138vD.f27059d);
            if (i()) {
                AbstractC3164b.h();
            }
            h(c3138v.f27056a, j8);
            this.f113b.A(c3138v);
            this.f114c.i(c3138vD, j8);
        } catch (o0 e8) {
            e = e8;
            this.f116e.execute(new RunnableC3004t(8, this, e));
        } catch (p117p0.p e9) {
            e = e9;
            this.f116e.execute(new RunnableC3004t(8, this, e));
        }
    }

    @Override // A0.K
    public void c(C3138v c3138v) {
        b0 b0Var = this.f112a;
        if (b0Var.f125b.contains(c3138v)) {
            ArrayDeque arrayDeque = b0Var.f125b;
            H1.i(arrayDeque.contains(c3138v));
            arrayDeque.remove(c3138v);
            b0Var.f124a.add(c3138v);
            this.f113b.r();
        }
    }

    @Override // A0.K
    public final void d(C0006f c0006f) {
        this.f114c = c0006f;
    }

    @Override // A0.K
    public final void e(Executor executor, C0014n c0014n) {
        this.f116e = executor;
        this.f115d = c0014n;
    }

    @Override // A0.K
    public final void f(I i8) {
        this.f113b = i8;
        int i9 = 0;
        while (true) {
            b0 b0Var = this.f112a;
            if (i9 >= (!b0Var.c().hasNext() ? b0Var.f126c : b0Var.f124a.size())) {
                return;
            }
            i8.r();
            i9++;
        }
    }

    @Override // A0.K
    public void flush() {
        b0 b0Var = this.f112a;
        ArrayDeque arrayDeque = b0Var.f124a;
        ArrayDeque arrayDeque2 = b0Var.f125b;
        arrayDeque.addAll(arrayDeque2);
        arrayDeque2.clear();
        this.f113b.x();
        for (int i8 = 0; i8 < b0Var.f126c; i8++) {
            this.f113b.r();
        }
    }

    public abstract p117p0.F g(int i8, int i9);

    public abstract void h(int i8, long j8);

    public boolean i() {
        return true;
    }
}
