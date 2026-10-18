package p177w6;

import java.util.Comparator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final a f31113G = new a();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        q0.h(comparable, "a");
        q0.h(comparable2, "b");
        return comparable.compareTo(comparable2);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return b.f31114G;
    }
}
