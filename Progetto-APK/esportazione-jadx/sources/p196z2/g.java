package p196z2;

/* JADX INFO: loaded from: classes.dex */
public final class g implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f31763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class f31765c;

    public g(c cVar) {
        this.f31763a = cVar;
    }

    @Override // p196z2.k
    public final void a() {
        this.f31763a.k(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f31764b == gVar.f31764b && this.f31765c == gVar.f31765c;
    }

    public final int hashCode() {
        int i8 = this.f31764b * 31;
        Class cls = this.f31765c;
        return i8 + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "Key{size=" + this.f31764b + "array=" + this.f31765c + '}';
    }
}
