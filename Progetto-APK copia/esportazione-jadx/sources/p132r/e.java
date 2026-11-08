package p132r;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Collection {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ f f29656G;

    public e(f fVar) {
        this.f29656G = fVar;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f29656G.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f29656G.a(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f29656G.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new b(this.f29656G, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        f fVar = this.f29656G;
        int iA = fVar.a(obj);
        if (iA < 0) {
            return false;
        }
        fVar.h(iA);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        f fVar = this.f29656G;
        int i8 = fVar.f29684I;
        int i9 = 0;
        boolean z7 = false;
        while (i9 < i8) {
            if (collection.contains(fVar.j(i9))) {
                fVar.h(i9);
                i9--;
                i8--;
                z7 = true;
            }
            i9++;
        }
        return z7;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        f fVar = this.f29656G;
        int i8 = fVar.f29684I;
        int i9 = 0;
        boolean z7 = false;
        while (i9 < i8) {
            if (!collection.contains(fVar.j(i9))) {
                fVar.h(i9);
                i9--;
                i8--;
                z7 = true;
            }
            i9++;
        }
        return z7;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f29656G.f29684I;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        f fVar = this.f29656G;
        int i8 = fVar.f29684I;
        Object[] objArr = new Object[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            objArr[i9] = fVar.j(i9);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        f fVar = this.f29656G;
        int i8 = fVar.f29684I;
        if (objArr.length < i8) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i8);
        }
        for (int i9 = 0; i9 < i8; i9++) {
            objArr[i9] = fVar.j(i9);
        }
        if (objArr.length > i8) {
            objArr[i8] = null;
        }
        return objArr;
    }
}
