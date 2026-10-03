package com.google.protobuf;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: renamed from: com.google.protobuf.l2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2922l2 extends AbstractMap {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final /* synthetic */ int f24471M = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f24472G;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f24475J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public volatile p132r.a f24476K;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public List f24473H = Collections.emptyList();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Map f24474I = Collections.emptyMap();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Map f24477L = Collections.emptyMap();

    public C2922l2(int i8) {
        this.f24472G = i8;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0042 A[SYNTHETIC] */
    public final int a(Comparable comparable) {
        int i8;
        int i9;
        int i10;
        int iCompareTo;
        int size = this.f24473H.size();
        int i11 = size - 1;
        if (i11 < 0) {
            i8 = 0;
            while (i8 <= i11) {
                i10 = (i8 + i11) / 2;
                iCompareTo = comparable.compareTo(((C2934o2) this.f24473H.get(i10)).f24482G);
                if (iCompareTo < 0) {
                    i11 = i10 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i10;
                    }
                    i8 = i10 + 1;
                }
            }
            i9 = i8 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((C2934o2) this.f24473H.get(i11)).f24482G);
            if (iCompareTo2 > 0) {
                i9 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i11;
                }
                i8 = 0;
                while (i8 <= i11) {
                    i10 = (i8 + i11) / 2;
                    iCompareTo = comparable.compareTo(((C2934o2) this.f24473H.get(i10)).f24482G);
                    if (iCompareTo < 0) {
                        i11 = i10 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i10;
                        }
                        i8 = i10 + 1;
                    }
                }
                i9 = i8 + 1;
            }
        }
        return -i9;
    }

    public final void b() {
        if (this.f24475J) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void clear() {
        b();
        if (!this.f24473H.isEmpty()) {
            this.f24473H.clear();
        }
        if (this.f24474I.isEmpty()) {
            return;
        }
        this.f24474I.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f24474I.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Set entrySet() {
        if (this.f24476K == null) {
            this.f24476K = new p132r.a(this);
        }
        return this.f24476K;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2922l2)) {
            return super.equals(obj);
        }
        C2922l2 c2922l2 = (C2922l2) obj;
        int size = size();
        if (size != c2922l2.size()) {
            return false;
        }
        int size2 = this.f24473H.size();
        if (size2 != c2922l2.f24473H.size()) {
            return entrySet().equals(c2922l2.entrySet());
        }
        for (int i8 = 0; i8 < size2; i8++) {
            if (!h(i8).equals(c2922l2.h(i8))) {
                return false;
            }
        }
        if (size2 != size) {
            return this.f24474I.equals(c2922l2.f24474I);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((C2934o2) this.f24473H.get(iA)).f24483H : this.f24474I.get(comparable);
    }

    public final Map.Entry h(int i8) {
        return (Map.Entry) this.f24473H.get(i8);
    }

    public final Iterable i() {
        return this.f24474I.isEmpty() ? AbstractC2907i.f24454b : this.f24474I.entrySet();
    }

    public final SortedMap j() {
        b();
        if (this.f24474I.isEmpty() && !(this.f24474I instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f24474I = treeMap;
            this.f24477L = treeMap.descendingMap();
        }
        return (SortedMap) this.f24474I;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final int hashCode() {
        int size = this.f24473H.size();
        int iHashCode = 0;
        for (int i8 = 0; i8 < size; i8++) {
            iHashCode += ((C2934o2) this.f24473H.get(i8)).hashCode();
        }
        return this.f24474I.size() > 0 ? iHashCode + this.f24474I.hashCode() : iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        b();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((C2934o2) this.f24473H.get(iA)).setValue(obj);
        }
        b();
        boolean zIsEmpty = this.f24473H.isEmpty();
        int i8 = this.f24472G;
        if (zIsEmpty && !(this.f24473H instanceof ArrayList)) {
            this.f24473H = new ArrayList(i8);
        }
        int i9 = -(iA + 1);
        if (i9 >= i8) {
            return j().put(comparable, obj);
        }
        if (this.f24473H.size() == i8) {
            C2934o2 c2934o2 = (C2934o2) this.f24473H.remove(i8 - 1);
            j().put(c2934o2.f24482G, c2934o2.f24483H);
        }
        this.f24473H.add(i9, new C2934o2(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final Object remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return n(iA);
        }
        if (this.f24474I.isEmpty()) {
            return null;
        }
        return this.f24474I.remove(comparable);
    }

    public final Object n(int i8) {
        b();
        Object obj = ((C2934o2) this.f24473H.remove(i8)).f24483H;
        if (!this.f24474I.isEmpty()) {
            Iterator it = j().entrySet().iterator();
            List list = this.f24473H;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new C2934o2(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final int size() {
        return this.f24474I.size() + this.f24473H.size();
    }
}
