package N;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.NoSuchElementException;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class P implements Iterator, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4850G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4851H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f4852I;

    public /* synthetic */ P(Object obj, int i8) {
        this.f4850G = i8;
        this.f4852I = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i8 = this.f4850G;
        Object obj = this.f4852I;
        switch (i8) {
            case 0:
                return this.f4851H < ((ViewGroup) obj).getChildCount();
            case 1:
                return this.f4851H < ((p162u6.e) obj).b();
            case 2:
                return this.f4851H < ((Object[]) obj).length;
        }
        while (this.f4851H > 0) {
            Iterator it = (Iterator) obj;
            if (!it.hasNext()) {
                return ((Iterator) obj).hasNext();
            }
            it.next();
            this.f4851H--;
        }
        return ((Iterator) obj).hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i8 = this.f4850G;
        Object obj = this.f4852I;
        switch (i8) {
            case 0:
                int i9 = this.f4851H;
                this.f4851H = i9 + 1;
                View childAt = ((ViewGroup) obj).getChildAt(i9);
                if (childAt != null) {
                    return childAt;
                }
                throw new IndexOutOfBoundsException();
            case 1:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i10 = this.f4851H;
                this.f4851H = i10 + 1;
                return ((p162u6.e) obj).get(i10);
            case 2:
                try {
                    int i11 = this.f4851H;
                    this.f4851H = i11 + 1;
                    return ((Object[]) obj)[i11];
                } catch (ArrayIndexOutOfBoundsException e8) {
                    this.f4851H--;
                    throw new NoSuchElementException(e8.getMessage());
                }
        }
        while (this.f4851H > 0) {
            Iterator it = (Iterator) obj;
            if (!it.hasNext()) {
                return ((Iterator) obj).next();
            }
            it.next();
            this.f4851H--;
        }
        return ((Iterator) obj).next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f4850G) {
            case 0:
                ViewGroup viewGroup = (ViewGroup) this.f4852I;
                int i8 = this.f4851H - 1;
                this.f4851H = i8;
                viewGroup.removeViewAt(i8);
                return;
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 2:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public P(Object[] objArr) {
        this.f4850G = 2;
        q0.h(objArr, "array");
        this.f4852I = objArr;
    }

    public P(H6.b bVar) {
        this.f4850G = 3;
        this.f4852I = bVar.f3782a.iterator();
        this.f4851H = bVar.f3783b;
    }
}
