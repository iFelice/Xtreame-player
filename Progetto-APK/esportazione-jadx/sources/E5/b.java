package E5;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2935c = false;

    public b(int i8, ArrayList arrayList) {
        this.f2933a = new ArrayList(arrayList);
        this.f2934b = i8;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2933a.equals(bVar.f2933a) && this.f2935c == bVar.f2935c;
    }

    public final int hashCode() {
        return this.f2933a.hashCode() ^ Boolean.valueOf(this.f2935c).hashCode();
    }

    public final String toString() {
        return "{ " + this.f2933a + " }";
    }
}
