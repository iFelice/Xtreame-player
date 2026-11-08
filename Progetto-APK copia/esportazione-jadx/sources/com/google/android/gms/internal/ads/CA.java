package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class CA extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f12586H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f12587I;

    public CA(Object obj) {
        super(0);
        this.f12586H = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f12587I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (this.f12587I) {
            throw new NoSuchElementException();
        }
        this.f12587I = true;
        return this.f12586H;
    }
}
