package p094m0;

/* JADX INFO: loaded from: classes.dex */
public final class V {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f26791a;

    public V(r rVar) {
        this.f26791a = rVar;
    }

    public final boolean a(int... iArr) {
        r rVar = this.f26791a;
        rVar.getClass();
        for (int i8 : iArr) {
            if (rVar.f26967a.get(i8)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof V) {
            return this.f26791a.equals(((V) obj).f26791a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f26791a.hashCode();
    }
}
