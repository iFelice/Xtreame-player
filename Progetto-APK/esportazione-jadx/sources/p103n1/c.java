package p103n1;

import W0.E;
import W0.G;
import android.util.Pair;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class c implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f27381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f27382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f27383c;

    public c(long j8, long[] jArr, long[] jArr2) {
        this.f27381a = jArr;
        this.f27382b = jArr2;
        this.f27383c = j8 == -9223372036854775807L ? M.R(jArr2[jArr2.length - 1]) : j8;
    }

    public static Pair b(long j8, long[] jArr, long[] jArr2) {
        int iE = M.e(jArr, j8, true);
        long j9 = jArr[iE];
        long j10 = jArr2[iE];
        int i8 = iE + 1;
        if (i8 == jArr.length) {
            return Pair.create(Long.valueOf(j9), Long.valueOf(j10));
        }
        long j11 = jArr[i8];
        return Pair.create(Long.valueOf(j8), Long.valueOf(((long) ((j11 == j9 ? 0.0d : (j8 - j9) / (j11 - j9)) * (jArr2[i8] - j10))) + j10));
    }

    @Override // p103n1.f
    public final long a(long j8) {
        return M.R(((Long) b(j8, this.f27381a, this.f27382b).second).longValue());
    }

    @Override // p103n1.f
    public final long c() {
        return -1L;
    }

    @Override // p103n1.f
    public final long e() {
        return 0L;
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.F
    public final E k(long j8) {
        Pair pairB = b(M.e0(M.j(j8, 0L, this.f27383c)), this.f27382b, this.f27381a);
        G g8 = new G(M.R(((Long) pairB.first).longValue()), ((Long) pairB.second).longValue());
        return new E(g8, g8);
    }

    @Override // p103n1.f
    public final int l() {
        return -2147483647;
    }

    @Override // W0.F
    public final long m() {
        return this.f27383c;
    }
}
