package U1;

/* JADX INFO: loaded from: classes.dex */
public final class e extends RuntimeException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f6907G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Throwable f6908H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(int i8, Throwable th) {
        super(th);
        p148t.a.f(i8, "callbackName");
        this.f6907G = i8;
        this.f6908H = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f6908H;
    }
}
