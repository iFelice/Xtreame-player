package O0;

/* JADX INFO: loaded from: classes.dex */
public final class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5053b;

    public J(int i8, boolean z7) {
        this.f5052a = i8;
        this.f5053b = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || J.class != obj.getClass()) {
            return false;
        }
        J j8 = (J) obj;
        return this.f5052a == j8.f5052a && this.f5053b == j8.f5053b;
    }

    public final int hashCode() {
        return (this.f5052a * 31) + (this.f5053b ? 1 : 0);
    }
}
