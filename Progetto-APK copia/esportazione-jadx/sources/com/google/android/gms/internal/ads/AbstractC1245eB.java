package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1245eB implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Iterator f18489G;

    public AbstractC1245eB(Iterator it) {
        it.getClass();
        this.f18489G = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18489G.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f18489G.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18489G.remove();
    }
}
