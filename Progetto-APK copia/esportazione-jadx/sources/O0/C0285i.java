package O0;

import B0.C0044d0;
import java.util.List;

/* JADX INFO: renamed from: O0.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0285i implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final W f5213G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final z4.H f5214H;

    public C0285i(W w7, List list) {
        this.f5213G = w7;
        this.f5214H = z4.H.s(list);
    }

    public final z4.H b() {
        return this.f5214H;
    }

    @Override // O0.W
    public final long e() {
        return this.f5213G.e();
    }

    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        return this.f5213G.g(c0044d0);
    }

    @Override // O0.W
    public final boolean k() {
        return this.f5213G.k();
    }

    @Override // O0.W
    public final long u() {
        return this.f5213G.u();
    }

    @Override // O0.W
    public final void w(long j8) {
        this.f5213G.w(j8);
    }
}
