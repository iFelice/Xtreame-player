package y2;

/* JADX INFO: loaded from: classes.dex */
public final class x implements D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f31403G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f31404H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final D f31405I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final w f31406J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p173w2.i f31407K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f31408L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f31409M;

    public x(D d6, boolean z7, boolean z8, p173w2.i iVar, w wVar) {
        p102n0.c.c(d6, "Argument must not be null");
        this.f31405I = d6;
        this.f31403G = z7;
        this.f31404H = z8;
        this.f31407K = iVar;
        p102n0.c.c(wVar, "Argument must not be null");
        this.f31406J = wVar;
    }

    public final synchronized void a() {
        if (this.f31409M) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f31408L++;
    }

    @Override // y2.D
    public final synchronized void b() {
        if (this.f31408L > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f31409M) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f31409M = true;
        if (this.f31404H) {
            this.f31405I.b();
        }
    }

    public final void c() {
        boolean z7;
        synchronized (this) {
            int i8 = this.f31408L;
            if (i8 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z7 = true;
            int i9 = i8 - 1;
            this.f31408L = i9;
            if (i9 != 0) {
                z7 = false;
            }
        }
        if (z7) {
            ((p) this.f31406J).f(this.f31407K, this);
        }
    }

    @Override // y2.D
    public final int d() {
        return this.f31405I.d();
    }

    @Override // y2.D
    public final Class e() {
        return this.f31405I.e();
    }

    @Override // y2.D
    public final Object get() {
        return this.f31405I.get();
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f31403G + ", listener=" + this.f31406J + ", key=" + this.f31407K + ", acquired=" + this.f31408L + ", isRecycled=" + this.f31409M + ", resource=" + this.f31405I + '}';
    }
}
