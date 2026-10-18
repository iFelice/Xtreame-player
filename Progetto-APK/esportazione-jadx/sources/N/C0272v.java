package N;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: N.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0272v implements Iterator, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f4924G = new ArrayList();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Iterator f4925H;

    public C0272v(Iterator it) {
        this.f4925H = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4925H.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object next = this.f4925H.next();
        View view = (View) next;
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        P p7 = viewGroup != null ? new P(viewGroup, 0) : null;
        ArrayList arrayList = this.f4924G;
        if (p7 == null || !p7.hasNext()) {
            while (!this.f4925H.hasNext() && (!arrayList.isEmpty())) {
                if (arrayList.isEmpty()) {
                    throw new NoSuchElementException("List is empty.");
                }
                this.f4925H = (Iterator) arrayList.get(p027d2.v.m(arrayList));
                if (arrayList.isEmpty()) {
                    throw new NoSuchElementException("List is empty.");
                }
                arrayList.remove(p027d2.v.m(arrayList));
            }
        } else {
            arrayList.add(this.f4925H);
            this.f4925H = p7;
        }
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
