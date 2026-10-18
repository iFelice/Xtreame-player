package F0;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o extends n {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f3079j;

    public o(j jVar, long j8, long j9, long j10, long j11, List list, long j12, List list2, long j13, long j14) {
        super(jVar, j8, j9, j10, j11, list, j12, j13, j14);
        this.f3079j = list2;
    }

    @Override // F0.n
    public final long d(long j8) {
        return this.f3079j.size();
    }

    @Override // F0.n
    public final j h(long j8, m mVar) {
        return (j) this.f3079j.get((int) (j8 - this.f3073d));
    }

    @Override // F0.n
    public final boolean i() {
        return true;
    }
}
