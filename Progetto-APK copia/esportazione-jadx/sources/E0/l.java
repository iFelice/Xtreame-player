package E0;

import W0.C0379l;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class l implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0379l f2528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2529b;

    public l(C0379l c0379l, long j8) {
        this.f2528a = c0379l;
        this.f2529b = j8;
    }

    @Override // E0.k
    public final long a(long j8) {
        return this.f2528a.f7432e[(int) j8] - this.f2529b;
    }

    @Override // E0.k
    public final long b(long j8, long j9) {
        return this.f2528a.f7431d[(int) j8];
    }

    @Override // E0.k
    public final long c(long j8, long j9) {
        return 0L;
    }

    @Override // E0.k
    public final long d(long j8, long j9) {
        return -9223372036854775807L;
    }

    @Override // E0.k
    public final F0.j e(long j8) {
        C0379l c0379l = this.f2528a;
        int i8 = (int) j8;
        return new F0.j(c0379l.f7430c[i8], c0379l.f7429b[i8], null);
    }

    @Override // E0.k
    public final long f(long j8, long j9) {
        return M.e(this.f2528a.f7432e, j8 + this.f2529b, true);
    }

    @Override // E0.k
    public final boolean g() {
        return true;
    }

    @Override // E0.k
    public final long h() {
        return 0L;
    }

    @Override // E0.k
    public final long i(long j8) {
        return this.f2528a.f7428a;
    }

    @Override // E0.k
    public final long j(long j8, long j9) {
        return this.f2528a.f7428a;
    }
}
