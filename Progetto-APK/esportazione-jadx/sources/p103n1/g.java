package p103n1;

import W0.E;
import W0.G;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class g implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f27406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f27407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f27408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f27409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f27410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f27411f;

    public g(long[] jArr, long[] jArr2, long j8, long j9, long j10, int i8) {
        this.f27406a = jArr;
        this.f27407b = jArr2;
        this.f27408c = j8;
        this.f27409d = j9;
        this.f27410e = j10;
        this.f27411f = i8;
    }

    @Override // p103n1.f
    public final long a(long j8) {
        return this.f27406a[M.e(this.f27407b, j8, true)];
    }

    @Override // p103n1.f
    public final long c() {
        return this.f27410e;
    }

    @Override // p103n1.f
    public final long e() {
        return this.f27409d;
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.F
    public final E k(long j8) {
        long[] jArr = this.f27406a;
        int iE = M.e(jArr, j8, true);
        long j9 = jArr[iE];
        long[] jArr2 = this.f27407b;
        G g8 = new G(j9, jArr2[iE]);
        if (j9 >= j8 || iE == jArr.length - 1) {
            return new E(g8, g8);
        }
        int i8 = iE + 1;
        return new E(g8, new G(jArr[i8], jArr2[i8]));
    }

    @Override // p103n1.f
    public final int l() {
        return this.f27411f;
    }

    @Override // W0.F
    public final long m() {
        return this.f27408c;
    }
}
