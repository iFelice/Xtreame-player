package B0;

/* JADX INFO: renamed from: B0.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0057k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f1000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1001d = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1002e = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1004g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f1005h = -9223372036854775807L;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f1008k = 0.97f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f1007j = 1.03f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f1009l = 1.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f1010m = -9223372036854775807L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f1003f = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1006i = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f1011n = -9223372036854775807L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f1012o = -9223372036854775807L;

    public C0057k(long j8, long j9, float f8) {
        this.f998a = j8;
        this.f999b = j9;
        this.f1000c = f8;
    }

    public final void a() {
        long j8;
        long j9 = this.f1001d;
        if (j9 != -9223372036854775807L) {
            j8 = this.f1002e;
            if (j8 == -9223372036854775807L) {
                long j10 = this.f1004g;
                if (j10 != -9223372036854775807L && j9 < j10) {
                    j9 = j10;
                }
                j8 = this.f1005h;
                if (j8 == -9223372036854775807L || j9 <= j8) {
                    j8 = j9;
                }
            }
        } else {
            j8 = -9223372036854775807L;
        }
        if (this.f1003f == j8) {
            return;
        }
        this.f1003f = j8;
        this.f1006i = j8;
        this.f1011n = -9223372036854775807L;
        this.f1012o = -9223372036854775807L;
        this.f1010m = -9223372036854775807L;
    }
}
