package Y5;

/* JADX INFO: loaded from: classes2.dex */
public final class C extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final B f8145G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f8146H;

    public C(B b8) {
        super(B.b(b8), b8.f8144c);
        this.f8145G = b8;
        this.f8146H = true;
        fillInStackTrace();
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this.f8146H ? super.fillInStackTrace() : this;
    }
}
