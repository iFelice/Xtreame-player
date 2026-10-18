package N6;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends RuntimeException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final transient p185x6.j f4961G;

    public c(p185x6.j jVar) {
        this.f4961G = jVar;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return this.f4961G.toString();
    }
}
