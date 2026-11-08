package p190y4;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m implements l, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f31425G;

    public m(List list) {
        this.f31425G = list;
    }

    @Override // p190y4.l
    public final boolean apply(Object obj) {
        int i8 = 0;
        while (true) {
            List list = this.f31425G;
            if (i8 >= list.size()) {
                return true;
            }
            if (!((l) list.get(i8)).apply(obj)) {
                return false;
            }
            i8++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m) {
            return this.f31425G.equals(((m) obj).f31425G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f31425G.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z7 = true;
        for (Object obj : this.f31425G) {
            if (!z7) {
                sb.append(',');
            }
            sb.append(obj);
            z7 = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
