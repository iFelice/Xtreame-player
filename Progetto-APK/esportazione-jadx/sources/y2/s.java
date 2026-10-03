package y2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class s implements Iterable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f31367G;

    public s(ArrayList arrayList) {
        this.f31367G = arrayList;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f31367G.iterator();
    }
}
