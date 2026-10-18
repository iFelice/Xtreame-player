package S4;

/* JADX INFO: loaded from: classes.dex */
public final class h implements P4.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6449a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6450b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public P4.c f6451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f6452d;

    public h(f fVar) {
        this.f6452d = fVar;
    }

    @Override // P4.g
    public final P4.g c(String str) {
        if (this.f6449a) {
            throw new P4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f6449a = true;
        this.f6452d.e(this.f6451c, str, this.f6450b);
        return this;
    }

    @Override // P4.g
    public final P4.g d(boolean z7) {
        if (this.f6449a) {
            throw new P4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f6449a = true;
        this.f6452d.c(this.f6451c, z7 ? 1 : 0, this.f6450b);
        return this;
    }
}
