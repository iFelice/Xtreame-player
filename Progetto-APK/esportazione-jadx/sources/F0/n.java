package F0;

import java.math.RoundingMode;
import java.util.List;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public abstract class n extends s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f3073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f3075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f3076g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f3077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f3078i;

    public n(j jVar, long j8, long j9, long j10, long j11, List list, long j12, long j13, long j14) {
        super(jVar, j8, j9);
        this.f3073d = j10;
        this.f3074e = j11;
        this.f3075f = list;
        this.f3078i = j12;
        this.f3076g = j13;
        this.f3077h = j14;
    }

    public final long b(long j8, long j9) {
        long jD = d(j8);
        return jD != -1 ? jD : (int) (f((j9 - this.f3077h) + this.f3078i, j8) - c(j8, j9));
    }

    public final long c(long j8, long j9) {
        long jD = d(j8);
        long j10 = this.f3073d;
        if (jD == -1) {
            long j11 = this.f3076g;
            if (j11 != -9223372036854775807L) {
                return Math.max(j10, f((j9 - this.f3077h) - j11, j8));
            }
        }
        return j10;
    }

    public abstract long d(long j8);

    public final long e(long j8, long j9) {
        long j10 = this.f3088b;
        long j11 = this.f3073d;
        List list = this.f3075f;
        if (list != null) {
            return (((q) list.get((int) (j8 - j11))).f3084b * 1000000) / j10;
        }
        long jD = d(j9);
        return (jD == -1 || j8 != (j11 + jD) - 1) ? (this.f3074e * 1000000) / j10 : j9 - g(j8);
    }

    public final long f(long j8, long j9) {
        long jD = d(j9);
        long j10 = this.f3073d;
        if (jD == 0) {
            return j10;
        }
        if (this.f3075f == null) {
            long j11 = (j8 / ((this.f3074e * 1000000) / this.f3088b)) + j10;
            if (j11 < j10) {
                return j10;
            }
            return jD == -1 ? j11 : Math.min(j11, (j10 + jD) - 1);
        }
        long j12 = (jD + j10) - 1;
        long j13 = j10;
        while (j13 <= j12) {
            long j14 = ((j12 - j13) / 2) + j13;
            long jG = g(j14);
            if (jG < j8) {
                j13 = j14 + 1;
            } else {
                if (jG <= j8) {
                    return j14;
                }
                j12 = j14 - 1;
            }
        }
        return j13 == j10 ? j13 : j12;
    }

    public final long g(long j8) {
        long j9 = this.f3073d;
        List list = this.f3075f;
        long j10 = list != null ? ((q) list.get((int) (j8 - j9))).f3083a - this.f3089c : (j8 - j9) * this.f3074e;
        String str = M.f28050a;
        return M.Z(j10, 1000000L, this.f3088b, RoundingMode.DOWN);
    }

    public abstract j h(long j8, m mVar);

    public boolean i() {
        return this.f3075f != null;
    }
}
