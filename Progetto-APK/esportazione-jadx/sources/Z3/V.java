package Z3;

/* JADX INFO: loaded from: classes.dex */
public final class V implements X {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final Object f8280I = new Object();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public volatile X f8281G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile Object f8282H;

    public static X a(W w7) {
        if (w7 instanceof V) {
            return w7;
        }
        V v5 = new V();
        v5.f8282H = f8280I;
        v5.f8281G = w7;
        return v5;
    }

    @Override // Z3.Y
    public final Object zza() {
        Object objZza;
        Object obj = this.f8282H;
        Object obj2 = f8280I;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objZza = this.f8282H;
                if (objZza == obj2) {
                    objZza = this.f8281G.zza();
                    Object obj3 = this.f8282H;
                    if (obj3 != obj2 && obj3 != objZza) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objZza + ". This is likely due to a circular dependency.");
                    }
                    this.f8282H = objZza;
                    this.f8281G = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objZza;
    }
}
