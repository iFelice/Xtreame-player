package W2;

/* JADX INFO: loaded from: classes.dex */
public final class a implements p147s6.a {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Object f7465I = new Object();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile p147s6.a f7466G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile Object f7467H;

    public static p147s6.a a(b bVar) {
        if (bVar instanceof a) {
            return bVar;
        }
        a aVar = new a();
        aVar.f7467H = f7465I;
        aVar.f7466G = bVar;
        return aVar;
    }

    @Override // p147s6.a
    public final Object get() {
        Object obj = this.f7467H;
        Object obj2 = f7465I;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f7467H;
                    if (obj == obj2) {
                        obj = this.f7466G.get();
                        Object obj3 = this.f7467H;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.f7467H = obj;
                        this.f7466G = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return obj;
    }
}
