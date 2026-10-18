package B0;

/* JADX INFO: loaded from: classes.dex */
public final class E0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final E0 f701c = new E0(0, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f703b;

    public E0(int i8, boolean z7) {
        this.f702a = i8;
        this.f703b = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || E0.class != obj.getClass()) {
            return false;
        }
        E0 e8 = (E0) obj;
        return this.f702a == e8.f702a && this.f703b == e8.f703b;
    }

    public final int hashCode() {
        return (this.f702a << 1) + (this.f703b ? 1 : 0);
    }
}
