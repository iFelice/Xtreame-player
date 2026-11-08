package p190y4;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class u implements t, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final transient Object f31442G = new Object();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final t f31443H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile transient boolean f31444I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public transient Object f31445J;

    public u(t tVar) {
        this.f31443H = tVar;
    }

    @Override // p190y4.t
    public final Object get() {
        if (!this.f31444I) {
            synchronized (this.f31442G) {
                try {
                    if (!this.f31444I) {
                        Object obj = this.f31443H.get();
                        this.f31445J = obj;
                        this.f31444I = true;
                        return obj;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f31445J;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (this.f31444I) {
            obj = "<supplier that returned " + this.f31445J + ">";
        } else {
            obj = this.f31443H;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
