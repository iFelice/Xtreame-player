package M4;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f4810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f4811b;

    public g(Class cls, Class cls2) {
        this.f4810a = cls;
        this.f4811b = cls2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f4811b.equals(gVar.f4811b)) {
            return this.f4810a.equals(gVar.f4810a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4810a.hashCode() + (this.f4811b.hashCode() * 31);
    }

    public final String toString() {
        Class cls = this.f4811b;
        Class cls2 = this.f4810a;
        if (cls2 == f.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + " " + cls.getName();
    }
}
