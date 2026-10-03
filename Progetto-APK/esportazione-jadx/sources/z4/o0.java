package z4;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class o0 extends AbstractCollection implements Set {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Collection f31888G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p190y4.l f31889H;

    public o0(Set set, p190y4.l lVar) {
        this.f31888G = set;
        this.f31889H = lVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean add(Object obj) {
        p190y4.k.p(this.f31889H.apply(obj));
        return this.f31888G.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            p190y4.k.p(this.f31889H.apply(it.next()));
        }
        return this.f31888G.addAll(collection);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return q0.o(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return q0.z(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final void clear() {
        Collection collection = this.f31888G;
        boolean z7 = collection instanceof RandomAccess;
        p190y4.l lVar = this.f31889H;
        if (!z7 || !(collection instanceof List)) {
            Iterator it = collection.iterator();
            lVar.getClass();
            while (it.hasNext()) {
                if (lVar.apply(it.next())) {
                    it.remove();
                }
            }
            return;
        }
        List list = (List) collection;
        lVar.getClass();
        int i8 = 0;
        for (int i9 = 0; i9 < list.size(); i9++) {
            Object obj = list.get(i9);
            if (!lVar.apply(obj)) {
                if (i9 > i8) {
                    try {
                        list.set(i8, obj);
                    } catch (IllegalArgumentException unused) {
                        p190y4.k.e0(list, lVar, i8, i9);
                        return;
                    } catch (UnsupportedOperationException unused2) {
                        p190y4.k.e0(list, lVar, i8, i9);
                        return;
                    }
                }
                i8++;
            }
        }
        list.subList(i8, list.size()).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final boolean contains(Object obj) {
        Collection collection = this.f31888G;
        collection.getClass();
        try {
            if (collection.contains(obj)) {
                return this.f31889H.apply(obj);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final boolean isEmpty() {
        Iterator it = this.f31888G.iterator();
        p190y4.l lVar = this.f31889H;
        p190y4.k.s(lVar, "predicate");
        boolean z7 = false;
        int i8 = 0;
        while (it.hasNext()) {
            if (lVar.apply(it.next())) {
                if (i8 == -1) {
                    break;
                }
                z7 = true;
                break;
            }
            i8++;
        }
        return !z7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final Iterator iterator() {
        Iterator it = this.f31888G.iterator();
        it.getClass();
        p190y4.l lVar = this.f31889H;
        lVar.getClass();
        return new M(it, lVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public final boolean remove(Object obj) {
        return contains(obj) && this.f31888G.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public final boolean removeAll(Collection collection) {
        Iterator it = this.f31888G.iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f31889H.apply(next) && collection.contains(next)) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final boolean retainAll(Collection collection) {
        Iterator it = this.f31888G.iterator();
        boolean z7 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f31889H.apply(next) && !collection.contains(next)) {
                it.remove();
                z7 = true;
            }
        }
        return z7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final int size() {
        Iterator it = this.f31888G.iterator();
        int i8 = 0;
        while (it.hasNext()) {
            if (this.f31889H.apply(it.next())) {
                i8++;
            }
        }
        return i8;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final Object[] toArray() {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            AbstractC3238b abstractC3238b = (AbstractC3238b) it;
            if (!abstractC3238b.hasNext()) {
                return arrayList.toArray();
            }
            arrayList.add(abstractC3238b.next());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final Object[] toArray(Object[] objArr) {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            AbstractC3238b abstractC3238b = (AbstractC3238b) it;
            if (!abstractC3238b.hasNext()) {
                return arrayList.toArray(objArr);
            }
            arrayList.add(abstractC3238b.next());
        }
    }
}
