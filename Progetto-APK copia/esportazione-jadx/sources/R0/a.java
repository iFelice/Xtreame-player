package R0;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6109b;

    public a(long j8, long j9) {
        this.f6108a = j8;
        this.f6109b = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f6108a == aVar.f6108a && this.f6109b == aVar.f6109b;
    }

    public final int hashCode() {
        return (((int) this.f6108a) * 31) + ((int) this.f6109b);
    }
}
