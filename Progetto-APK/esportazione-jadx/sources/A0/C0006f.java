package A0;

import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;
import p094m0.C3138v;

/* JADX INFO: renamed from: A0.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0006f implements I, J {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final K f143G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final E f144H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final h0 f145I;

    public C0006f(F.i iVar, K k8, K k9, h0 h0Var) {
        H1.c("Creating a self loop in the chain: " + k8, k8 != k9);
        this.f143G = k8;
        this.f144H = new E(iVar, k9, h0Var);
        this.f145I = h0Var;
    }

    @Override // A0.I
    public final void A(C3138v c3138v) {
        this.f145I.f(new C0004d(0, this, c3138v), true);
    }

    @Override // A0.J
    public final synchronized void b() {
        this.f144H.b();
    }

    @Override // A0.J
    public final synchronized void i(C3138v c3138v, long j8) {
        this.f144H.a(c3138v, j8);
    }

    @Override // A0.I
    public final synchronized void r() {
        this.f144H.r();
    }

    @Override // A0.I
    public final synchronized void x() {
        this.f144H.x();
        h0 h0Var = this.f145I;
        K k8 = this.f143G;
        Objects.requireNonNull(k8);
        h0Var.f(new C0005e(k8, 0), true);
    }
}
