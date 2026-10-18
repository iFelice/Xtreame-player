package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1141cA extends AbstractCollection {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18190G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f18191H;

    public /* synthetic */ C1141cA(Object obj, int i8) {
        this.f18190G = i8;
        this.f18191H = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i8 = this.f18190G;
        Object obj = this.f18191H;
        switch (i8) {
            case 0:
                ((Mz) ((AbstractC1193dA) obj)).c();
                break;
            case 1:
                ((C1502jA) obj).clear();
                break;
            default:
                ((Map) obj).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        int i8 = this.f18190G;
        Object obj2 = this.f18191H;
        switch (i8) {
            case 0:
                Iterator it = ((Rz) ((AbstractC1193dA) obj2).b()).values().iterator();
                while (it.hasNext()) {
                    if (((Collection) it.next()).contains(obj)) {
                        return true;
                    }
                }
                return false;
            case 1:
            default:
                return super.contains(obj);
            case 2:
                return ((Map) obj2).containsValue(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f18190G) {
            case 2:
                return ((Map) this.f18191H).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i8 = this.f18190G;
        Object obj = this.f18191H;
        switch (i8) {
            case 0:
                Mz mz = (Mz) ((AbstractC1193dA) obj);
                mz.getClass();
                return new Oz(mz);
            case 1:
                C1502jA c1502jA = (C1502jA) obj;
                Map mapD = c1502jA.d();
                return mapD != null ? mapD.values().iterator() : new C1244eA(c1502jA, 2);
            default:
                return new GA(((Map) obj).entrySet().iterator());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f18190G) {
            case 2:
                try {
                    return super.remove(obj);
                } catch (UnsupportedOperationException unused) {
                    Map map = (Map) this.f18191H;
                    for (Map.Entry entry : map.entrySet()) {
                        if (com.google.android.gms.internal.measurement.H1.E(obj, entry.getValue())) {
                            map.remove(entry.getKey());
                            return true;
                        }
                    }
                    return false;
                }
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f18190G) {
            case 2:
                collection.getClass();
                try {
                    return super.removeAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    Map map = (Map) this.f18191H;
                    for (Map.Entry entry : map.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return map.keySet().removeAll(hashSet);
                }
            default:
                return super.removeAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f18190G) {
            case 2:
                collection.getClass();
                try {
                    return super.retainAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    Map map = (Map) this.f18191H;
                    for (Map.Entry entry : map.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return map.keySet().retainAll(hashSet);
                }
            default:
                return super.retainAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i8 = this.f18190G;
        Object obj = this.f18191H;
        switch (i8) {
            case 0:
                return ((Mz) ((AbstractC1193dA) obj)).f14835K;
            case 1:
                return ((C1502jA) obj).size();
            default:
                return ((Map) obj).size();
        }
    }

    public C1141cA(Map map) {
        this.f18190G = 2;
        this.f18191H = map;
    }
}
