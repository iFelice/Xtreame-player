package p177w6;

import java.util.Comparator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final b f31114G = new b();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        q0.h(comparable, "a");
        q0.h(comparable2, "b");
        return comparable2.compareTo(comparable);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return a.f31113G;
    }
}
