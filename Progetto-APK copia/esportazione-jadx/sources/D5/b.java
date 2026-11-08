package D5;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2407b;

    public b(int i8, int i9) {
        this.f2406a = i8;
        this.f2407b = i9;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2406a == bVar.f2406a && this.f2407b == bVar.f2407b;
    }

    public final int hashCode() {
        return this.f2406a ^ this.f2407b;
    }

    public final String toString() {
        return this.f2406a + "(" + this.f2407b + ')';
    }
}
