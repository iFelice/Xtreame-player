package D0;

/* JADX INFO: renamed from: D0.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0118h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0118h f1938d = new C0117g().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f1939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1941c;

    public C0118h(C0117g c0117g) {
        this.f1939a = c0117g.f1935a;
        this.f1940b = c0117g.f1936b;
        this.f1941c = c0117g.f1937c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0118h.class != obj.getClass()) {
            return false;
        }
        C0118h c0118h = (C0118h) obj;
        return this.f1939a == c0118h.f1939a && this.f1940b == c0118h.f1940b && this.f1941c == c0118h.f1941c;
    }

    public final int hashCode() {
        return ((this.f1939a ? 1 : 0) << 2) + ((this.f1940b ? 1 : 0) << 1) + (this.f1941c ? 1 : 0);
    }
}
