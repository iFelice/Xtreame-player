package D6;

import J6.r;
import com.google.protobuf.U2;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j extends a implements G6.d, C6.a {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f2435M;

    public j(Object obj) {
        super(obj, r.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", true);
        this.f2435M = false;
    }

    public final G6.a b() {
        if (!this.f2435M) {
            G6.a aVar = this.f2422G;
            if (aVar != null) {
                return aVar;
            }
            d();
            this.f2422G = this;
        }
        return this;
    }

    public final G6.a d() {
        l.f2437a.getClass();
        return this;
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            return a().equals(jVar.a()) && this.f2425J.equals(jVar.f2425J) && this.f2426K.equals(jVar.f2426K) && q0.c(this.f2423H, jVar.f2423H);
        }
        if (obj instanceof G6.d) {
            return obj.equals(b());
        }
        return false;
    }

    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final int hashCode() {
        return this.f2426K.hashCode() + U2.e(this.f2425J, a().hashCode() * 31, 31);
    }

    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        G6.a aVarB = b();
        return aVarB != this ? aVarB.toString() : p000a.r.j(new StringBuilder("property "), this.f2425J, " (Kotlin reflection is not available)");
    }

    @Override // C6.a
    public final Object invoke() {
        return ((N6.j) this).f2423H.getClass().getSimpleName();
    }
}
