package p190y4;

import B0.C0074y;

/* JADX INFO: loaded from: classes.dex */
public final class v implements t {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final C0074y f31446J = new C0074y(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f31447G = new Object();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile t f31448H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f31449I;

    public v(t tVar) {
        this.f31448H = tVar;
    }

    @Override // p190y4.t
    public final Object get() {
        t tVar = this.f31448H;
        C0074y c0074y = f31446J;
        if (tVar != c0074y) {
            synchronized (this.f31447G) {
                try {
                    if (this.f31448H != c0074y) {
                        Object obj = this.f31448H.get();
                        this.f31449I = obj;
                        this.f31448H = c0074y;
                        return obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f31449I;
    }

    public final String toString() {
        Object obj = this.f31448H;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (obj == f31446J) {
            obj = "<supplier that returned " + this.f31449I + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
