package M;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4733b;

    public b(Object obj, Object obj2) {
        this.f4732a = obj;
        this.f4733b = obj2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(bVar.f4732a, this.f4732a) && Objects.equals(bVar.f4733b, this.f4733b);
    }

    public final int hashCode() {
        Object obj = this.f4732a;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f4733b;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "Pair{" + this.f4732a + " " + this.f4733b + "}";
    }
}
