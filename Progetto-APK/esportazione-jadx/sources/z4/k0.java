package z4;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class k0 extends c0 implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final k0 f31876G = new k0();

    @Override // z4.c0
    public final c0 a() {
        return b0.f31836G;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
