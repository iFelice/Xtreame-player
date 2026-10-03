package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: z4.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3237a extends AbstractC1349gB implements ListIterator {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f31832H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f31833I;

    public AbstractC3237a(int i8, int i9) {
        super(8);
        p190y4.k.t(i9, i8);
        this.f31832H = i8;
        this.f31833I = i9;
    }

    public final void a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(Object obj) {
        a(obj);
        throw null;
    }

    public abstract Object b(int i8);

    public final void c(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f31833I < this.f31832H;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f31833I > 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f31833I;
        this.f31833I = i8 + 1;
        return b(i8);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f31833I;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f31833I - 1;
        this.f31833I = i8;
        return b(i8);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f31833I - 1;
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(Object obj) {
        c(obj);
        throw null;
    }
}
