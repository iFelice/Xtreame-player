package p169v6;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import p162u6.g;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends g implements Serializable {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final i f30760H;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final f f30761G;

    static {
        f fVar = f.f30743T;
        f30760H = new i(f.f30743T);
    }

    public i(f fVar) {
        q0.h(fVar, "backing");
        this.f30761G = fVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        return this.f30761G.a(obj) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        q0.h(collection, "elements");
        this.f30761G.c();
        return super.addAll(collection);
    }

    @Override // p162u6.g
    public final int b() {
        return this.f30761G.f30752O;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f30761G.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f30761G.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f30761G.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        f fVar = this.f30761G;
        fVar.getClass();
        return new d(fVar, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        f fVar = this.f30761G;
        fVar.c();
        int iH = fVar.h(obj);
        if (iH < 0) {
            return false;
        }
        fVar.l(iH);
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        q0.h(collection, "elements");
        this.f30761G.c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        q0.h(collection, "elements");
        this.f30761G.c();
        return super.retainAll(collection);
    }

    public i() {
        this(new f());
    }
}
