package z4;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class s0 implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Iterator f31899G;

    public s0(Iterator it) {
        it.getClass();
        this.f31899G = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f31899G.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f31899G.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f31899G.remove();
    }
}
