package F0;

import java.util.ArrayList;
import java.util.List;
import p094m0.C3136t;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class k extends m implements E0.k {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n f3062h;

    public k(long j8, C3136t c3136t, H h8, n nVar, ArrayList arrayList, List list, List list2) {
        super(c3136t, h8, nVar, arrayList, list, list2);
        this.f3062h = nVar;
    }

    @Override // E0.k
    public final long a(long j8) {
        return this.f3062h.g(j8);
    }

    @Override // E0.k
    public final long b(long j8, long j9) {
        return this.f3062h.e(j8, j9);
    }

    @Override // E0.k
    public final long c(long j8, long j9) {
        return this.f3062h.c(j8, j9);
    }

    @Override // E0.k
    public final long d(long j8, long j9) {
        n nVar = this.f3062h;
        if (nVar.f3075f != null) {
            return -9223372036854775807L;
        }
        long jB = nVar.b(j8, j9) + nVar.c(j8, j9);
        return (nVar.e(jB, j8) + nVar.g(jB)) - nVar.f3078i;
    }

    @Override // E0.k
    public final j e(long j8) {
        return this.f3062h.h(j8, this);
    }

    @Override // E0.k
    public final long f(long j8, long j9) {
        return this.f3062h.f(j8, j9);
    }

    @Override // E0.k
    public final boolean g() {
        return this.f3062h.i();
    }

    @Override // E0.k
    public final long h() {
        return this.f3062h.f3073d;
    }

    @Override // E0.k
    public final long i(long j8) {
        return this.f3062h.d(j8);
    }

    @Override // E0.k
    public final long j(long j8, long j9) {
        return this.f3062h.b(j8, j9);
    }

    @Override // F0.m
    public final String k() {
        return null;
    }

    @Override // F0.m
    public final j m() {
        return null;
    }

    @Override // F0.m
    public final E0.k l() {
        return this;
    }
}
