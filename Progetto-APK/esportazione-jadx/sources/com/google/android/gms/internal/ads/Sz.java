package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Sz extends AbstractC1091bB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Map f16569H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Mz f16570I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Sz(Mz mz, Map map) {
        super(0);
        this.f16570I = mz;
        map.getClass();
        this.f16569H = map;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        Iterator it = iterator();
        while (true) {
            Qz qz = (Qz) it;
            if (!qz.hasNext()) {
                return;
            }
            qz.next();
            qz.remove();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f16569H.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.f16569H.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return this == obj || this.f16569H.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f16569H.keySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f16569H.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new Qz(this, this.f16569H.entrySet().iterator(), 1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Collection collection = (Collection) this.f16569H.remove(obj);
        if (collection == null) {
            return false;
        }
        int size = collection.size();
        collection.clear();
        this.f16570I.f14835K -= size;
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f16569H.size();
    }
}
