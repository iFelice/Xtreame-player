package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.cast.R2;
import com.google.android.gms.internal.pal.C2804r0;
import com.google.protobuf.C2;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class B0 implements ListIterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22247G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ListIterator f22248H;

    public B0(D0 d6, int i8) {
        this.f22248H = d6.f22255G.listIterator(i8);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        switch (this.f22247G) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        switch (this.f22247G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return this.f22248H.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        switch (this.f22247G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return this.f22248H.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        switch (this.f22247G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return (String) this.f22248H.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        switch (this.f22247G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return this.f22248H.nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        switch (this.f22247G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return (String) this.f22248H.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        switch (this.f22247G) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return this.f22248H.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        switch (this.f22247G) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        switch (this.f22247G) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public B0(R2 r7, int i8) {
        this.f22248H = r7.f22527G.listIterator(i8);
    }

    public B0(C2804r0 c2804r0, int i8) {
        this.f22248H = c2804r0.f23992G.listIterator(i8);
    }

    public B0(C2 c8, int i8) {
        this.f22248H = c8.f24241G.listIterator(i8);
    }
}
