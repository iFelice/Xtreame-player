package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1039aB extends ZA implements SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.f17731G).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f17731G.iterator();
        it.getClass();
        InterfaceC2321yz interfaceC2321yz = this.f17732H;
        interfaceC2321yz.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (interfaceC2321yz.zza(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new C1039aB(((SortedSet) this.f17731G).headSet(obj), this.f17732H);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.f17731G;
        while (true) {
            Object objLast = sortedSetHeadSet.last();
            if (this.f17732H.zza(objLast)) {
                return objLast;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new C1039aB(((SortedSet) this.f17731G).subSet(obj, obj2), this.f17732H);
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new C1039aB(((SortedSet) this.f17731G).tailSet(obj), this.f17732H);
    }
}
