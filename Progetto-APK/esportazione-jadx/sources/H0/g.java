package H0;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g extends P0.b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final List f3447J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f3448K;

    public g(long j8, List list) {
        super(0L, list.size() - 1);
        this.f3448K = j8;
        this.f3447J = list;
    }

    @Override // P0.q
    public final long q() {
        a();
        return this.f3448K + ((I0.j) this.f3447J.get((int) this.f5701I)).f3866K;
    }

    @Override // P0.q
    public final long t() {
        a();
        I0.j jVar = (I0.j) this.f3447J.get((int) this.f5701I);
        return this.f3448K + jVar.f3866K + jVar.f3864I;
    }
}
