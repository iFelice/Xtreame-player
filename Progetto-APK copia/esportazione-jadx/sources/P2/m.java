package P2;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Class f5902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Class f5903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class f5904c;

    public m(Class cls, Class cls2, Class cls3) {
        this.f5902a = cls;
        this.f5903b = cls2;
        this.f5904c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return this.f5902a.equals(mVar.f5902a) && this.f5903b.equals(mVar.f5903b) && o.b(this.f5904c, mVar.f5904c);
    }

    public final int hashCode() {
        int iHashCode = (this.f5903b.hashCode() + (this.f5902a.hashCode() * 31)) * 31;
        Class cls = this.f5904c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f5902a + ", second=" + this.f5903b + '}';
    }
}
