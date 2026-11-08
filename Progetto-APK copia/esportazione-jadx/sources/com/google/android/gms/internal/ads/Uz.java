package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public final class Uz extends Xz implements NavigableSet {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Mz f16928K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Uz(Mz mz, NavigableMap navigableMap) {
        super(mz, navigableMap);
        this.f16928K = mz;
    }

    @Override // com.google.android.gms.internal.ads.Xz
    public final /* synthetic */ SortedMap b() {
        return (NavigableMap) ((SortedMap) this.f16569H);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16569H)).ceilingKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return ((Sz) descendingSet()).iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new Uz(this.f16928K, ((NavigableMap) ((SortedMap) this.f16569H)).descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16569H)).floorKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.Xz, java.util.SortedSet, java.util.NavigableSet
    public final /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16569H)).higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16569H)).lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        Qz qz = (Qz) iterator();
        if (!qz.hasNext()) {
            return null;
        }
        Object next = qz.next();
        qz.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        Iterator itDescendingIterator = descendingIterator();
        if (!itDescendingIterator.hasNext()) {
            return null;
        }
        Object next = itDescendingIterator.next();
        itDescendingIterator.remove();
        return next;
    }

    @Override // com.google.android.gms.internal.ads.Xz, java.util.SortedSet, java.util.NavigableSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // com.google.android.gms.internal.ads.Xz, java.util.SortedSet, java.util.NavigableSet
    public final /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z7) {
        return new Uz(this.f16928K, ((NavigableMap) ((SortedMap) this.f16569H)).headMap(obj, z7));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z7, Object obj2, boolean z8) {
        return new Uz(this.f16928K, ((NavigableMap) ((SortedMap) this.f16569H)).subMap(obj, z7, obj2, z8));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z7) {
        return new Uz(this.f16928K, ((NavigableMap) ((SortedMap) this.f16569H)).tailMap(obj, z7));
    }
}
