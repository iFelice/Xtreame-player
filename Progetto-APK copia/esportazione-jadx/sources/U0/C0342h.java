package U0;

/* JADX INFO: renamed from: U0.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0342h implements P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K0.l f6747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0345k f6749c;

    public C0342h(C0345k c0345k, K0.l lVar, int i8, long j8) {
        this.f6749c = c0345k;
        this.f6747a = lVar;
        this.f6748b = i8;
    }

    @Override // U0.P
    public final void a(long j8) {
        this.f6749c.i0(this.f6747a, this.f6748b, j8);
    }

    @Override // U0.P
    public final void skip() {
        this.f6749c.m0(this.f6747a, this.f6748b);
    }
}
