package p169v6;

import E6.a;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends AbstractCollection implements Collection, a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final f f30759G;

    public h(f fVar) {
        q0.h(fVar, "backing");
        this.f30759G = fVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        q0.h(collection, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f30759G.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f30759G.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.f30759G.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        f fVar = this.f30759G;
        fVar.getClass();
        return new d(fVar, 2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        f fVar = this.f30759G;
        fVar.c();
        int i8 = fVar.i(obj);
        if (i8 < 0) {
            return false;
        }
        fVar.l(i8);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        q0.h(collection, "elements");
        this.f30759G.c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        q0.h(collection, "elements");
        this.f30759G.c();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f30759G.f30752O;
    }
}
