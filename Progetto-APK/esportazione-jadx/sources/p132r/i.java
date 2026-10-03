package p132r;

import E6.a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class i implements Iterator, a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f29668G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f29669H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f29670I;

    public i(int i8) {
        this.f29668G = i8;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29669H < this.f29668G;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object objF;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f29669H;
        b bVar = (b) this;
        int i9 = bVar.f29649J;
        Object obj = bVar.f29650K;
        switch (i9) {
            case 0:
                objF = ((f) obj).f(i8);
                break;
            case 1:
                objF = ((f) obj).j(i8);
                break;
            default:
                objF = ((g) obj).f29661H[i8];
                break;
        }
        this.f29669H++;
        this.f29670I = true;
        return objF;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f29670I) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i8 = this.f29669H - 1;
        this.f29669H = i8;
        b bVar = (b) this;
        int i9 = bVar.f29649J;
        Object obj = bVar.f29650K;
        switch (i9) {
            case 0:
                ((f) obj).h(i8);
                break;
            case 1:
                ((f) obj).h(i8);
                break;
            default:
                ((g) obj).b(i8);
                break;
        }
        this.f29668G--;
        this.f29670I = false;
    }
}
