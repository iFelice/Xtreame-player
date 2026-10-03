package A0;

import java.util.ArrayDeque;
import java.util.Objects;
import p094m0.C3138v;

/* JADX INFO: loaded from: classes.dex */
public final class E implements I {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final F.i f55G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final K f56H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final h0 f57I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayDeque f58J = new ArrayDeque();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f59K;

    public E(F.i iVar, K k8, h0 h0Var) {
        this.f55G = iVar;
        this.f56H = k8;
        this.f57I = h0Var;
    }

    public final synchronized void a(final C3138v c3138v, final long j8) {
        try {
            if (this.f59K > 0) {
                this.f57I.f(new g0(this) { // from class: A0.i

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Object f158c;

                    {
                        this.f158c = this;
                    }

                    @Override // A0.g0
                    public final void run() {
                        E e8 = (E) this.f158c;
                        e8.f56H.b(e8.f55G, c3138v, j8);
                    }
                }, true);
                this.f59K--;
            } else {
                this.f58J.add(new c0(c3138v, j8));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        try {
            if (this.f58J.isEmpty()) {
                h0 h0Var = this.f57I;
                K k8 = this.f56H;
                Objects.requireNonNull(k8);
                h0Var.f(new C0005e(k8, 1), true);
            } else {
                this.f58J.add(new c0(C3138v.f27055e, Long.MIN_VALUE));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // A0.I
    public final synchronized void r() {
        c0 c0Var = (c0) this.f58J.poll();
        if (c0Var == null) {
            this.f59K++;
            return;
        }
        this.f57I.f(new C0004d(4, this, c0Var), true);
        c0 c0Var2 = (c0) this.f58J.peek();
        if (c0Var2 != null && c0Var2.f133b == Long.MIN_VALUE) {
            h0 h0Var = this.f57I;
            K k8 = this.f56H;
            Objects.requireNonNull(k8);
            h0Var.f(new C0005e(k8, 2), true);
            this.f58J.remove();
        }
    }

    @Override // A0.I
    public final synchronized void x() {
        this.f59K = 0;
        this.f58J.clear();
    }

    @Override // A0.I
    public final /* synthetic */ void A(C3138v c3138v) {
    }
}
