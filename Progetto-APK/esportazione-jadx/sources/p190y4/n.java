package p190y4;

/* JADX INFO: loaded from: classes.dex */
public final class n extends j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f31426G;

    public n(Object obj) {
        this.f31426G = obj;
    }

    @Override // p190y4.j
    public final Object a() {
        return this.f31426G;
    }

    @Override // p190y4.j
    public final boolean b() {
        return true;
    }

    @Override // p190y4.j
    public final Object c(Object obj) {
        k.s(obj, "use Optional.orNull() instead of Optional.or(null)");
        return this.f31426G;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            return this.f31426G.equals(((n) obj).f31426G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f31426G.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f31426G + ")";
    }
}
