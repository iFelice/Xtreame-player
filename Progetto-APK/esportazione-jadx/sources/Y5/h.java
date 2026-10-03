package Y5;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f8162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final B f8163b;

    public h(g gVar, B b8) {
        this.f8162a = gVar;
        p190y4.k.s(b8, "status is null");
        this.f8163b = b8;
    }

    public static h a(g gVar) {
        p190y4.k.o("state is TRANSIENT_ERROR. Use forError() instead", gVar != g.f8158I);
        return new h(gVar, B.f8135e);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f8162a.equals(hVar.f8162a) && this.f8163b.equals(hVar.f8163b);
    }

    public final int hashCode() {
        return this.f8162a.hashCode() ^ this.f8163b.hashCode();
    }

    public final String toString() {
        B b8 = this.f8163b;
        boolean zD = b8.d();
        g gVar = this.f8162a;
        if (zD) {
            return gVar.toString();
        }
        return gVar + "(" + b8 + ")";
    }
}
