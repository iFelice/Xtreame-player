package W0;

/* JADX INFO: renamed from: W0.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0373f implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0375h f7405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7407c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f7408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f7411g;

    public C0373f(InterfaceC0375h interfaceC0375h, long j8, long j9, long j10, long j11, long j12) {
        this.f7405a = interfaceC0375h;
        this.f7406b = j8;
        this.f7408d = j9;
        this.f7409e = j10;
        this.f7410f = j11;
        this.f7411g = j12;
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.F
    public final E k(long j8) {
        G g8 = new G(j8, C0374g.a(this.f7405a.b(j8), this.f7407c, this.f7408d, this.f7409e, this.f7410f, this.f7411g));
        return new E(g8, g8);
    }

    @Override // W0.F
    public final long m() {
        return this.f7406b;
    }
}
