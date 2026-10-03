package F0;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3084b;

    public q(long j8, long j9) {
        this.f3083a = j8;
        this.f3084b = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.f3083a == qVar.f3083a && this.f3084b == qVar.f3084b;
    }

    public final int hashCode() {
        return (((int) this.f3083a) * 31) + ((int) this.f3084b);
    }
}
