package W0;

/* JADX INFO: renamed from: W0.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0380m implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f7437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f7438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f7440g;

    public C0380m(int i8, int i9, long j8, long j9, boolean z7) {
        this.f7434a = j8;
        this.f7435b = j9;
        this.f7436c = i9 == -1 ? 1 : i9;
        this.f7438e = i8;
        this.f7440g = z7;
        if (j8 == -1) {
            this.f7437d = -1L;
            this.f7439f = -9223372036854775807L;
        } else {
            long j10 = j8 - j9;
            this.f7437d = j10;
            this.f7439f = (Math.max(0L, j10) * 8000000) / ((long) i8);
        }
    }

    @Override // W0.F
    public final boolean f() {
        return this.f7437d != -1 || this.f7440g;
    }

    @Override // W0.F
    public final E k(long j8) {
        long j9 = this.f7435b;
        long j10 = this.f7437d;
        if (j10 == -1 && !this.f7440g) {
            G g8 = new G(0L, j9);
            return new E(g8, g8);
        }
        int i8 = this.f7438e;
        long j11 = this.f7436c;
        long jMin = (((((long) i8) * j8) / 8000000) / j11) * j11;
        if (j10 != -1) {
            jMin = Math.min(jMin, j10 - j11);
        }
        long jMax = Math.max(jMin, 0L) + j9;
        long jMax2 = (Math.max(0L, jMax - j9) * 8000000) / ((long) i8);
        G g9 = new G(jMax2, jMax);
        if (j10 != -1 && jMax2 < j8) {
            long j12 = jMax + j11;
            if (j12 < this.f7434a) {
                return new E(g9, new G((Math.max(0L, j12 - j9) * 8000000) / ((long) i8), j12));
            }
        }
        return new E(g9, g9);
    }

    @Override // W0.F
    public final long m() {
        return this.f7439f;
    }
}
