package com.google.android.gms.internal.pal;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class L2 extends AbstractC2672a3 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f23585G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f23586H;

    public L2(int i8, int i9) {
        AbstractC2864y4.J(i9, i8);
        this.f23585G = i8;
        this.f23586H = i9;
    }

    public abstract Object b(int i8);

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f23586H < this.f23585G;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f23586H > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f23586H;
        this.f23586H = i8 + 1;
        return b(i8);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f23586H;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f23586H - 1;
        this.f23586H = i8;
        return b(i8);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f23586H - 1;
    }
}
