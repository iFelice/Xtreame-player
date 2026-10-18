package z4;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class b0 extends c0 implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final b0 f31836G = new b0();

    @Override // z4.c0
    public final c0 a() {
        return k0.f31876G;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
