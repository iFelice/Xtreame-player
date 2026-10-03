package p190y4;

/* JADX INFO: loaded from: classes.dex */
public final class a extends j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final a f31418G = new a();

    @Override // p190y4.j
    public final Object a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // p190y4.j
    public final boolean b() {
        return false;
    }

    @Override // p190y4.j
    public final Object c(Object obj) {
        k.s(obj, "use Optional.orNull() instead of Optional.or(null)");
        return obj;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
