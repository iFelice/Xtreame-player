package com.google.android.gms.internal.ads;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public abstract class Kz extends AbstractC1349gB implements ListIterator {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f14444H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f14445I;

    public Kz(int i8, int i9) {
        super(0);
        AbstractC2987b.o0(i9, i8);
        this.f14444H = i8;
        this.f14445I = i9;
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
        return this.f14445I < this.f14444H;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f14445I > 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f14445I;
        this.f14445I = i8 + 1;
        return c(i8);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f14445I;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i8 = this.f14445I - 1;
        this.f14445I = i8;
        return c(i8);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f14445I - 1;
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(Object obj) {
        b(obj);
        throw null;
    }
}
