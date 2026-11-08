package p026d1;

import W0.F;
import W0.L;
import W0.u;

/* JADX INFO: loaded from: classes.dex */
public final class e implements u {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f24602G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final u f24603H;

    public e(long j8, u uVar) {
        this.f24602G = j8;
        this.f24603H = uVar;
    }

    @Override // W0.u
    public final void j() {
        this.f24603H.j();
    }

    @Override // W0.u
    public final void r(F f8) {
        this.f24603H.r(new d(this, f8, f8));
    }

    @Override // W0.u
    public final L t(int i8, int i9) {
        return this.f24603H.t(i8, i9);
    }
}
