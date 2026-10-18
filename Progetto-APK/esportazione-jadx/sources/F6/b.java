package F6;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Iterator, E6.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f3268G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f3269H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f3270I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f3271J;

    public b(int i8, int i9, int i10) {
        this.f3268G = i10;
        this.f3269H = i9;
        boolean z7 = true;
        if (i10 <= 0 ? i8 < i9 : i8 > i9) {
            z7 = false;
        }
        this.f3270I = z7;
        this.f3271J = z7 ? i8 : i9;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        int i8 = this.f3271J;
        if (i8 != this.f3269H) {
            this.f3271J = this.f3268G + i8;
        } else {
            if (!this.f3270I) {
                throw new NoSuchElementException();
            }
            this.f3270I = false;
        }
        return Integer.valueOf(i8);
    }

    public final void b() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3270I;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ void remove() {
        b();
        throw null;
    }
}
