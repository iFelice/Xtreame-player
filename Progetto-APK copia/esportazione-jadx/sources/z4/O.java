package z4;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class O implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Iterator f31818G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Iterator f31819H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Iterator f31820I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ArrayDeque f31821J;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it;
        while (true) {
            Iterator it2 = this.f31819H;
            it2.getClass();
            if (it2.hasNext()) {
                return true;
            }
            while (true) {
                Iterator it3 = this.f31820I;
                if (it3 != null && it3.hasNext()) {
                    it = this.f31820I;
                    break;
                }
                ArrayDeque arrayDeque = this.f31821J;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    it = null;
                    break;
                }
                this.f31820I = (Iterator) this.f31821J.removeFirst();
            }
            this.f31820I = it;
            if (it == null) {
                return false;
            }
            Iterator it4 = (Iterator) it.next();
            this.f31819H = it4;
            if (it4 instanceof O) {
                O o4 = (O) it4;
                this.f31819H = o4.f31819H;
                if (this.f31821J == null) {
                    this.f31821J = new ArrayDeque();
                }
                this.f31821J.addFirst(this.f31820I);
                if (o4.f31821J != null) {
                    while (!o4.f31821J.isEmpty()) {
                        this.f31821J.addFirst((Iterator) o4.f31821J.removeLast());
                    }
                }
                this.f31820I = o4.f31820I;
            }
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Iterator it = this.f31819H;
        this.f31818G = it;
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        Iterator it = this.f31818G;
        if (it == null) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        it.remove();
        this.f31818G = null;
    }
}
