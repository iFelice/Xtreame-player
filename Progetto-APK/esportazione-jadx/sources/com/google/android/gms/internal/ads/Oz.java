package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Oz implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Iterator f15297G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Collection f15298H = null;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Iterator f15299I = BA.f12294G;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Mz f15300J;

    public Oz(Mz mz) {
        this.f15300J = mz;
        this.f15297G = mz.f14834J.entrySet().iterator();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f15297G.hasNext() || this.f15299I.hasNext();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!this.f15299I.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f15297G.next();
            entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f15298H = collection;
            this.f15299I = collection.iterator();
        }
        return this.f15299I.next();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void remove() {
        this.f15299I.remove();
        Collection collection = this.f15298H;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f15297G.remove();
        }
        this.f15300J.f14835K--;
    }
}
