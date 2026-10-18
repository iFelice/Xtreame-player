package B1;

import W0.E;
import W0.F;
import W0.G;
import java.math.RoundingMode;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class g implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f1195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f1197c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1198d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1199e;

    public g(e eVar, int i8, long j8, long j9) {
        this.f1195a = eVar;
        this.f1196b = i8;
        this.f1197c = j8;
        long j10 = (j9 - j8) / ((long) eVar.f1190e);
        this.f1198d = j10;
        this.f1199e = b(j10);
    }

    public final long b(long j8) {
        long j9 = j8 * ((long) this.f1196b);
        long j10 = this.f1195a.f1188c;
        String str = M.f28050a;
        return M.Z(j9, 1000000L, j10, RoundingMode.DOWN);
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.F
    public final E k(long j8) {
        e eVar = this.f1195a;
        long j9 = (((long) eVar.f1188c) * j8) / (((long) this.f1196b) * 1000000);
        long j10 = this.f1198d;
        long j11 = M.j(j9, 0L, j10 - 1);
        long j12 = ((long) eVar.f1190e) * j11;
        long j13 = this.f1197c;
        long jB = b(j11);
        G g8 = new G(jB, j12 + j13);
        if (jB >= j8 || j11 == j10 - 1) {
            return new E(g8, g8);
        }
        long j14 = j11 + 1;
        return new E(g8, new G(b(j14), (((long) eVar.f1190e) * j14) + j13));
    }

    @Override // W0.F
    public final long m() {
        return this.f1199e;
    }
}
