package z4;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public final class p0 extends o0 implements SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.f31888G).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f31888G.iterator();
        it.getClass();
        p190y4.l lVar = this.f31889H;
        lVar.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (lVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new p0(((SortedSet) this.f31888G).headSet(obj), this.f31889H);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.f31888G;
        while (true) {
            Object objLast = sortedSetHeadSet.last();
            if (this.f31889H.apply(objLast)) {
                return objLast;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new p0(((SortedSet) this.f31888G).subSet(obj, obj2), this.f31889H);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new p0(((SortedSet) this.f31888G).tailSet(obj), this.f31889H);
    }
}
