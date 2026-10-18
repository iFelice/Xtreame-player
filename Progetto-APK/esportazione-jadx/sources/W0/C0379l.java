package W0;

import java.util.Arrays;

/* JADX INFO: renamed from: W0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0379l implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f7429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f7430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long[] f7431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f7432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7433f;

    public C0379l(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f7429b = iArr;
        this.f7430c = jArr;
        this.f7431d = jArr2;
        this.f7432e = jArr3;
        int length = iArr.length;
        this.f7428a = length;
        if (length > 0) {
            this.f7433f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f7433f = 0L;
        }
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.F
    public final E k(long j8) {
        long[] jArr = this.f7432e;
        int iE = p117p0.M.e(jArr, j8, true);
        long j9 = jArr[iE];
        long[] jArr2 = this.f7430c;
        G g8 = new G(j9, jArr2[iE]);
        if (j9 >= j8 || iE == this.f7428a - 1) {
            return new E(g8, g8);
        }
        int i8 = iE + 1;
        return new E(g8, new G(jArr[i8], jArr2[i8]));
    }

    @Override // W0.F
    public final long m() {
        return this.f7433f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f7428a + ", sizes=" + Arrays.toString(this.f7429b) + ", offsets=" + Arrays.toString(this.f7430c) + ", timeUs=" + Arrays.toString(this.f7432e) + ", durationsUs=" + Arrays.toString(this.f7431d) + ")";
    }
}
