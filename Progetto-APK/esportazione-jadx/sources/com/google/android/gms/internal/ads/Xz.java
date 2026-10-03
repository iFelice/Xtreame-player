package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public class Xz extends Sz implements SortedSet {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Mz f17556J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Xz(Mz mz, SortedMap sortedMap) {
        super(mz, sortedMap);
        this.f17556J = mz;
    }

    public SortedMap b() {
        return (SortedMap) this.f16569H;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return b().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return b().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new Xz(this.f17556J, b().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return b().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new Xz(this.f17556J, b().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new Xz(this.f17556J, b().tailMap(obj));
    }
}
