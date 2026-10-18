package W0;

/* JADX INFO: renamed from: W0.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0374g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f7412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f7413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f7414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f7415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f7416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f7417f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f7418g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f7419h;

    public C0374g() {
        this.f7412a = -1L;
        this.f7413b = -1L;
        this.f7414c = -1L;
        this.f7415d = -1L;
        this.f7416e = -1L;
        this.f7417f = -1L;
        this.f7418g = -1L;
        this.f7419h = -1L;
    }

    public static long a(long j8, long j9, long j10, long j11, long j12, long j13) {
        if (j11 + 1 >= j12 || j9 + 1 >= j10) {
            return j11;
        }
        long j14 = (long) ((j8 - j9) * ((j12 - j11) / (j10 - j9)));
        return p117p0.M.j(((j14 + j11) - j13) - (j14 / 20), j11, j12 - 1);
    }

    public static long b(long j8, long j9, long j10, long j11, long j12, long j13) {
        if (j11 + 1 >= j12 || 1 + j9 >= j10) {
            return j11;
        }
        long j14 = (long) (((j12 - j11) / (j10 - j9)) * (j8 - j9));
        return Math.max(j11, Math.min(((j11 + j14) - j13) - (j14 / 20), j12 - 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c1, code lost:
    
        if (r8.contains("REWARDED") == false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(android.content.Context r8, android.view.View r9) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: W0.C0374g.c(android.content.Context, android.view.View):void");
    }

    public C0374g(long j8, long j9, long j10, long j11, long j12, long j13) {
        this.f7412a = j8;
        this.f7413b = j9;
        this.f7415d = 0L;
        this.f7416e = j10;
        this.f7417f = j11;
        this.f7418g = j12;
        this.f7414c = j13;
        this.f7419h = b(j9, 0L, j10, j11, j12, j13);
    }

    public C0374g(long j8, long j9, long j10, long j11, long j12, long j13, long j14) {
        this.f7412a = j8;
        this.f7413b = j9;
        this.f7415d = j10;
        this.f7416e = j11;
        this.f7417f = j12;
        this.f7418g = j13;
        this.f7414c = j14;
        this.f7419h = a(j9, j10, j11, j12, j13, j14);
    }
}
