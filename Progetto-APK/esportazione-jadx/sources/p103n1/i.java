package p103n1;

import W0.E;
import W0.G;
import com.google.android.gms.internal.measurement.H1;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class i implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f27420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f27422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f27423f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long[] f27424g;

    public i(long j8, int i8, long j9, int i9, long j10, long[] jArr) {
        this.f27418a = j8;
        this.f27419b = i8;
        this.f27420c = j9;
        this.f27421d = i9;
        this.f27422e = j10;
        this.f27424g = jArr;
        this.f27423f = j10 != -1 ? j8 + j10 : -1L;
    }

    @Override // p103n1.f
    public final long a(long j8) {
        long j9 = j8 - this.f27418a;
        if (!f() || j9 <= this.f27419b) {
            return 0L;
        }
        long[] jArr = this.f27424g;
        H1.j(jArr);
        double d6 = (j9 * 256.0d) / this.f27422e;
        int iE = M.e(jArr, (long) d6, true);
        long j10 = this.f27420c;
        long j11 = (((long) iE) * j10) / 100;
        long j12 = jArr[iE];
        int i8 = iE + 1;
        long j13 = (j10 * ((long) i8)) / 100;
        long j14 = iE == 99 ? 256L : jArr[i8];
        return Math.round((j12 == j14 ? 0.0d : (d6 - j12) / (j14 - j12)) * (j13 - j11)) + j11;
    }

    @Override // p103n1.f
    public final long c() {
        return this.f27423f;
    }

    @Override // p103n1.f
    public final long e() {
        return this.f27418a + ((long) this.f27419b);
    }

    @Override // W0.F
    public final boolean f() {
        return this.f27424g != null;
    }

    @Override // W0.F
    public final E k(long j8) {
        double d6;
        boolean zF = f();
        int i8 = this.f27419b;
        long j9 = this.f27418a;
        if (!zF) {
            G g8 = new G(0L, j9 + ((long) i8));
            return new E(g8, g8);
        }
        long j10 = M.j(j8, 0L, this.f27420c);
        double d8 = (j10 * 100.0d) / this.f27420c;
        double d9 = 0.0d;
        if (d8 <= 0.0d) {
            d6 = 256.0d;
        } else if (d8 >= 100.0d) {
            d6 = 256.0d;
            d9 = 256.0d;
        } else {
            int i9 = (int) d8;
            long[] jArr = this.f27424g;
            H1.j(jArr);
            double d10 = jArr[i9];
            d9 = (((i9 == 99 ? 256.0d : jArr[i9 + 1]) - d10) * (d8 - ((double) i9))) + d10;
            d6 = 256.0d;
        }
        double d11 = d9 / d6;
        long j11 = this.f27422e;
        G g9 = new G(j10, j9 + M.j(Math.round(d11 * j11), i8, j11 - 1));
        return new E(g9, g9);
    }

    @Override // p103n1.f
    public final int l() {
        return this.f27421d;
    }

    @Override // W0.F
    public final long m() {
        return this.f27420c;
    }
}
