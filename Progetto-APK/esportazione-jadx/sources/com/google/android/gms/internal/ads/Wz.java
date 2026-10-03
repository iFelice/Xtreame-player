package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public class Wz extends Rz implements SortedMap {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public SortedSet f17354L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Mz f17355M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Wz(Mz mz, SortedMap sortedMap) {
        super(mz, sortedMap);
        this.f17355M = mz;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return g().comparator();
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return g().firstKey();
    }

    public SortedMap g() {
        return (SortedMap) this.f16386J;
    }

    public SortedSet h() {
        return new Xz(this.f17355M, g());
    }

    public SortedMap headMap(Object obj) {
        return new Wz(this.f17355M, g().headMap(obj));
    }

    @Override // com.google.android.gms.internal.ads.Rz, java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f17354L;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet sortedSetH = h();
        this.f17354L = sortedSetH;
        return sortedSetH;
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return g().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new Wz(this.f17355M, g().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new Wz(this.f17355M, g().tailMap(obj));
    }
}
