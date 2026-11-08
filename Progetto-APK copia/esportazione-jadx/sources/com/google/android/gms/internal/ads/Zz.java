package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class Zz extends Qz implements ListIterator {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ C1038aA f17818K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Zz(C1038aA c1038aA) {
        super(c1038aA);
        this.f17818K = c1038aA;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        C1038aA c1038aA = this.f17818K;
        boolean zIsEmpty = c1038aA.isEmpty();
        b();
        ((ListIterator) this.f16185H).add(obj);
        c1038aA.f17841M.f14835K++;
        if (zIsEmpty) {
            c1038aA.zza();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        b();
        return ((ListIterator) this.f16185H).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        b();
        return ((ListIterator) this.f16185H).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        b();
        return ((ListIterator) this.f16185H).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        b();
        return ((ListIterator) this.f16185H).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        b();
        ((ListIterator) this.f16185H).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Zz(C1038aA c1038aA, int i8) {
        super(c1038aA, ((List) c1038aA.f17696I).listIterator(i8));
        this.f17818K = c1038aA;
    }
}
