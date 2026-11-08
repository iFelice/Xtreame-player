package p155t6;

import C6.a;
import java.io.Serializable;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements b, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public a f30315G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile Object f30316H = g.f30318a;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f30317I = this;

    public f(a aVar) {
        this.f30315G = aVar;
    }

    public final Object a() {
        Object objInvoke;
        Object obj = this.f30316H;
        g gVar = g.f30318a;
        if (obj != gVar) {
            return obj;
        }
        synchronized (this.f30317I) {
            objInvoke = this.f30316H;
            if (objInvoke == gVar) {
                a aVar = this.f30315G;
                q0.e(aVar);
                objInvoke = aVar.invoke();
                this.f30316H = objInvoke;
                this.f30315G = null;
            }
        }
        return objInvoke;
    }

    public final String toString() {
        return this.f30316H != g.f30318a ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
