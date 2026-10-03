package y2;

/* JADX INFO: loaded from: classes.dex */
public final class C implements D, Q2.b {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final p096m2.u f31241K = new p096m2.u(new M.d(20), new U1.f(17, null), Q2.d.f6032a, 28);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Q2.e f31242G = new Q2.e();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public D f31243H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f31244I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f31245J;

    public final synchronized void a() {
        this.f31242G.a();
        if (!this.f31244I) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f31244I = false;
        if (this.f31245J) {
            b();
        }
    }

    @Override // y2.D
    public final synchronized void b() {
        this.f31242G.a();
        this.f31245J = true;
        if (!this.f31244I) {
            this.f31243H.b();
            this.f31243H = null;
            f31241K.a(this);
        }
    }

    @Override // Q2.b
    public final Q2.e c() {
        return this.f31242G;
    }

    @Override // y2.D
    public final int d() {
        return this.f31243H.d();
    }

    @Override // y2.D
    public final Class e() {
        return this.f31243H.e();
    }

    @Override // y2.D
    public final Object get() {
        return this.f31243H.get();
    }
}
