package z4;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: renamed from: z4.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3256u extends c0 implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Comparator f31901G;

    public C3256u(Comparator comparator) {
        comparator.getClass();
        this.f31901G = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f31901G.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3256u) {
            return this.f31901G.equals(((C3256u) obj).f31901G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f31901G.hashCode();
    }

    public final String toString() {
        return this.f31901G.toString();
    }
}
