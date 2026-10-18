package D6;

import J6.N;
import com.google.protobuf.U2;
import p000a.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends a implements f, G6.c {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f2432M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f2433N;

    public g(Object obj) {
        super(obj, N.class, "invoke", "invoke(Ljava/lang/Throwable;)V", false);
        this.f2432M = 1;
        this.f2433N = 0;
    }

    public final G6.a b() {
        l.f2437a.getClass();
        return this;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return this.f2425J.equals(gVar.f2425J) && this.f2426K.equals(gVar.f2426K) && this.f2433N == gVar.f2433N && this.f2432M == gVar.f2432M && q0.c(this.f2423H, gVar.f2423H) && q0.c(a(), gVar.a());
        }
        if (!(obj instanceof G6.c)) {
            return false;
        }
        G6.a aVar = this.f2422G;
        if (aVar == null) {
            b();
            this.f2422G = this;
            aVar = this;
        }
        return obj.equals(aVar);
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final int hashCode() {
        return this.f2426K.hashCode() + U2.e(this.f2425J, a() == null ? 0 : a().hashCode() * 31, 31);
    }

    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        G6.a aVar = this.f2422G;
        if (aVar == null) {
            b();
            this.f2422G = this;
            aVar = this;
        }
        if (aVar != this) {
            return aVar.toString();
        }
        String str = this.f2425J;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : r.g("function ", str, " (Kotlin reflection is not available)");
    }

    @Override // D6.f
    public final int getArity() {
        return this.f2432M;
    }
}
