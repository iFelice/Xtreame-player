package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class C extends AbstractC1349gB implements ListIterator {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f22419H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f22420I;

    public C(int i8, int i9) {
        super(4);
        Cw.I0(i9, i8);
        this.f22419H = i8;
        this.f22420I = i9;
    }

    public final void a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(Object obj) {
        a(obj);
        throw null;
    }

    public final void b(Object obj) {
        throw new UnsupportedOperationException();
    }

    public abstract Object c(int i8);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f22420I < this.f22419H;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f22420I > 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f22420I;
        this.f22420I = i8 + 1;
        return c(i8);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f22420I;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f22420I - 1;
        this.f22420I = i8;
        return c(i8);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f22420I - 1;
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(Object obj) {
        b(obj);
        throw null;
    }
}
